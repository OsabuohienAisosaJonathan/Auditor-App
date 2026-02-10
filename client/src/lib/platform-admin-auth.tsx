import { createContext, useContext, useState, useEffect, ReactNode } from "react";

interface PlatformAdmin {
  id: string;
  email: string;
  name: string;
  role: string;
}

interface PlatformAdminAuthContextType {
  admin: PlatformAdmin | null;
  isLoading: boolean;
  login: (email: string, password: string) => Promise<void>;
  logout: () => Promise<void>;
  checkAuth: () => Promise<void>;
}

const PlatformAdminAuthContext = createContext<PlatformAdminAuthContextType | undefined>(undefined);

export function PlatformAdminAuthProvider({ children }: { children: ReactNode }) {
  const [admin, setAdmin] = useState<PlatformAdmin | null>(null);
  const [isLoading, setIsLoading] = useState(true);

  const checkAuth = async () => {
    try {
      const token = localStorage.getItem("platform_admin_session_token");
      const headers: Record<string, string> = {};
      if (token) {
        headers["Authorization"] = `Bearer ${token}`;
      }

      const response = await fetch("/api/owner/auth/me", {
        credentials: "include",
        headers
      });
      if (response.ok) {
        const data = await response.json();
        setAdmin(data);
      } else {
        setAdmin(null);
        // If 401, maybe token expired? ensure we don't clear it yet unless sure
        if (response.status === 401) localStorage.removeItem("platform_admin_session_token");
      }
    } catch {
      setAdmin(null);
    } finally {
      setIsLoading(false);
    }
  };

  const login = async (email: string, password: string) => {
    const response = await fetch("/api/owner/auth/login", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      credentials: "include",
      body: JSON.stringify({ email, password }),
    });

    if (!response.ok) {
      let errorMessage = "Login failed";
      try {
        const error = await response.json();
        errorMessage = error.message || errorMessage;
      } catch (e) {
        // If JSON parse fails, read as text (likely an HTML error page)
        const textError = await response.text();
        console.error("Login Error (Non-JSON):", textError);
        // Extract a meaningful message if possible, or use generic
        if (textError.includes("<html")) {
          errorMessage = `Server Error (${response.status}): ${response.statusText}`;
        } else {
          errorMessage = textError || `Server Error (${response.status})`;
        }
      }
      throw new Error(errorMessage);
    }

    const data = await response.json();
    if (data.sessionToken) {
      console.log("[AdminAuth] Received session token");
      localStorage.setItem("platform_admin_session_token", data.sessionToken);
    }
    setAdmin(data);
  };

  const logout = async () => {
    const token = localStorage.getItem("platform_admin_session_token");
    const headers: Record<string, string> = {};
    if (token) headers["Authorization"] = `Bearer ${token}`;

    await fetch("/api/owner/auth/logout", {
      method: "POST",
      credentials: "include",
      headers
    });
    localStorage.removeItem("platform_admin_session_token");
    setAdmin(null);
  };

  useEffect(() => {
    checkAuth();
  }, []);

  return (
    <PlatformAdminAuthContext.Provider value={{ admin, isLoading, login, logout, checkAuth }}>
      {children}
    </PlatformAdminAuthContext.Provider>
  );
}

export function usePlatformAdminAuth() {
  const context = useContext(PlatformAdminAuthContext);
  if (!context) {
    throw new Error("usePlatformAdminAuth must be used within PlatformAdminAuthProvider");
  }
  return context;
}
