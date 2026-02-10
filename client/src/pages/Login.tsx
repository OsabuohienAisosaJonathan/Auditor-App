import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Checkbox } from "@/components/ui/checkbox";
import { useLocation, Link } from "wouter";
import { useState } from "react";
import { useAuth } from "@/lib/auth-context";
import { useToast } from "@/hooks/use-toast";
import { RefreshCw, Mail, Play, Eye, EyeOff, Activity, Lock } from "lucide-react";
import { logAuthEvent } from "@/lib/auth-debug";
import PublicLayout from "@/components/layout/PublicLayout";
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from "@/components/ui/card";

const isDevelopment = import.meta.env.DEV;

interface HealthCheckResult {
  ok: boolean;
  serverTime?: string;
  dbLatency?: number;
  dbOk?: boolean;
  error?: string;
}

export default function Login() {
  const [, setLocation] = useLocation();
  const { toast } = useToast();
  const { login, refreshUser } = useAuth();
  const [isLoading, setIsLoading] = useState(false);
  const [isDemoLoading, setIsDemoLoading] = useState(false);
  const [unverifiedEmail, setUnverifiedEmail] = useState<string | null>(null);
  const [isResending, setIsResending] = useState(false);
  const [showPassword, setShowPassword] = useState(false);
  const [loginError, setLoginError] = useState<string | null>(null);
  const [isCheckingHealth, setIsCheckingHealth] = useState(false);
  const [healthResult, setHealthResult] = useState<HealthCheckResult | null>(null);

  const checkServerHealth = async () => {
    setIsCheckingHealth(true);
    setHealthResult(null);
    logAuthEvent("HEALTH_CHECK", { message: "Manual health check triggered" });

    try {
      const controller = new AbortController();
      const timeoutId = setTimeout(() => controller.abort(), 10000);

      const response = await fetch("/api/health", {
        signal: controller.signal,
        credentials: "include"
      });
      clearTimeout(timeoutId);

      if (response.ok) {
        const data = await response.json();
        setHealthResult({
          ok: data.ok,
          serverTime: data.serverTime,
          dbLatency: data.db?.latencyMs,
          dbOk: data.db?.ok,
        });
      } else {
        setHealthResult({ ok: false, error: `Server returned ${response.status}` });
      }
    } catch (err: any) {
      if (err.name === "AbortError") {
        setHealthResult({ ok: false, error: "Health check timed out" });
      } else {
        setHealthResult({ ok: false, error: err.message || "Network error" });
      }
    } finally {
      setIsCheckingHealth(false);
    }
  };

  const handleDemoLogin = async () => {
    setIsDemoLoading(true);
    try {
      const response = await fetch("/api/auth/demo-login", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
      });

      const data = await response.json();

      if (response.ok) {
        await refreshUser();
        toast({
          title: "Demo Mode",
          description: "Logged in as demo user for preview testing",
        });
        setLocation("/dashboard");
      } else {
        toast({
          variant: "destructive",
          title: "Demo Login Failed",
          description: data.error || "Unable to access demo mode",
        });
      }
    } catch (error) {
      toast({
        variant: "destructive",
        title: "Error",
        description: "Something went wrong. Please try again.",
      });
    } finally {
      setIsDemoLoading(false);
    }
  };

  const handleResendVerification = async () => {
    if (!unverifiedEmail) return;

    setIsResending(true);
    try {
      const response = await fetch("/api/auth/resend-verification", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ email: unverifiedEmail }),
      });

      const data = await response.json();

      if (response.ok) {
        toast({
          title: "Email sent!",
          description: "Please check your inbox for the verification link.",
        });
        setUnverifiedEmail(null);
      } else {
        toast({
          variant: "destructive",
          title: "Error",
          description: data.error || "Failed to send verification email",
        });
      }
    } catch (error) {
      toast({
        variant: "destructive",
        title: "Error",
        description: "Something went wrong. Please try again.",
      });
    } finally {
      setIsResending(false);
    }
  };

  const handleLogin = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setIsLoading(true);
    setUnverifiedEmail(null);
    setLoginError(null);
    setHealthResult(null);

    const formData = new FormData(e.currentTarget);
    const username = formData.get("username") as string;
    const password = formData.get("password") as string;

    try {
      const user = await login(username, password);

      if (user.mustChangePassword) {
        toast({
          title: "Password Change Required",
          description: "Please set a new password to continue.",
        });
        setLocation("/change-password");
        return;
      }

      toast({
        title: "Welcome back!",
        description: `Signed in as ${user.fullName || user.username || 'User'}`,
      });
      setLocation("/dashboard");
    } catch (error: any) {
      if (error.code === "EMAIL_NOT_VERIFIED" && error.email) {
        setUnverifiedEmail(error.email);
      }

      // Track if this is a timeout/network error for health check button
      if (error.isTimeout) {
        setLoginError("timeout");
      } else if (error.status === 0 || error.message?.includes("Network")) {
        setLoginError("network");
      }

      toast({
        variant: "destructive",
        title: "Login failed",
        description: error.message || "Invalid credentials",
      });
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <PublicLayout forceDark={true}>
      <div className="w-full min-h-[calc(100vh-80px)] grid lg:grid-cols-2">
        {/* Left Side: Brand/Content */}
        <div className="hidden lg:flex relative flex-col justify-between bg-slate-900 p-12 overflow-hidden">
          {/* Background Effects */}
          <div className="absolute inset-0">
            <div className="absolute top-0 right-0 w-[500px] h-[500px] bg-primary/20 rounded-full blur-[120px] -translate-y-1/2 translate-x-1/2" />
            <div className="absolute bottom-0 left-0 w-[500px] h-[500px] bg-blue-600/20 rounded-full blur-[120px] translate-y-1/2 -translate-x-1/2" />
            <div className="absolute inset-0 bg-[url('https://www.transparenttextures.com/patterns/cubes.png')] opacity-20" />
          </div>

          <div className="relative z-10">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full border border-slate-700 bg-slate-800/50 text-slate-300 text-xs font-medium mb-8">
              <Activity className="w-3 h-3 text-primary" />
              <span>Audit Intelligence Platform</span>
            </div>
            <h1 className="text-4xl font-display font-bold text-white mb-4 leading-tight">
              Secure Your Revenue.<br />
              <span className="text-primary">Streamline Your Audit.</span>
            </h1>
            <p className="text-slate-400 text-lg max-w-md">
              Join thousands of hospitality professionals who trust MiAuditOps to eliminate variance and ensure compliance.
            </p>
          </div>

          <div className="relative z-10 bg-slate-800/50 backdrop-blur-sm border border-slate-700 rounded-xl p-6 max-w-lg">
            <div className="flex gap-1 text-amber-500 mb-3">
              <span className="text-lg">★</span><span className="text-lg">★</span><span className="text-lg">★</span><span className="text-lg">★</span><span className="text-lg">★</span>
            </div>
            <blockquote className="text-slate-200 mb-4 italic">
              "Since switching to MiAuditOps, our daily reconciliation time dropped from 2 hours to 20 minutes. The variance tracking is a lifesaver."
            </blockquote>
            <div className="flex items-center gap-3">
              <div className="w-10 h-10 rounded-full bg-slate-700 flex items-center justify-center font-bold text-slate-300">
                JD
              </div>
              <div>
                <div className="text-white font-medium text-sm">John Doe</div>
                <div className="text-slate-500 text-xs">Financial Controller, Luxury Hotels</div>
              </div>
            </div>
          </div>
        </div>

        {/* Right Side: Login Form */}
        <div className="flex items-center justify-center p-6 md:p-12 bg-background">
          <div className="w-full max-w-lg space-y-8">
            <div className="text-center md:text-left">
              <h2 className="text-3xl font-bold tracking-tight text-foreground">Welcome back</h2>
              <p className="text-muted-foreground mt-2">
                Sign in to your account to continue
              </p>
            </div>

            <Card className="border-0 shadow-none bg-transparent">
              <CardContent className="p-0 space-y-6">
                <form onSubmit={handleLogin} className="space-y-5">
                  <div className="space-y-2">
                    <Label htmlFor="username">Email or Username</Label>
                    <div className="relative">
                      <Mail className="absolute left-3 top-2.5 h-4 w-4 text-muted-foreground" />
                      <Input
                        id="username"
                        name="username"
                        type="text"
                        placeholder="you@example.com"
                        className="pl-10 h-11"
                        required
                        disabled={isLoading}
                      />
                    </div>
                  </div>
                  <div className="space-y-2">
                    <div className="flex items-center justify-between">
                      <Label htmlFor="password">Password</Label>
                      <Link
                        href="/forgot-password"
                        className="text-xs font-medium text-primary hover:underline cursor-pointer"
                      >
                        Forgot password?
                      </Link>
                    </div>
                    <div className="relative">
                      <Lock className="absolute left-3 top-2.5 h-4 w-4 text-muted-foreground" />
                      <Input
                        id="password"
                        name="password"
                        type={showPassword ? "text" : "password"}
                        className="pl-10 pr-10 h-11"
                        required
                        disabled={isLoading}
                      />
                      <button
                        type="button"
                        onClick={() => setShowPassword(!showPassword)}
                        className="absolute right-3 top-1/2 -translate-y-1/2 text-muted-foreground hover:text-foreground transition-colors"
                      >
                        {showPassword ? <EyeOff className="h-4 w-4" /> : <Eye className="h-4 w-4" />}
                      </button>
                    </div>
                  </div>

                  <div className="flex items-center space-x-2">
                    <Checkbox id="remember" />
                    <label
                      htmlFor="remember"
                      className="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 text-muted-foreground"
                    >
                      Remember me
                    </label>
                  </div>

                  <Button
                    type="submit"
                    className="w-full h-11 font-medium text-base transition-all duration-200 shadow-md shadow-primary/20 hover:shadow-primary/30"
                    disabled={isLoading}
                  >
                    {isLoading ? "Signing in..." : "Sign In"}
                  </Button>

                  {/* Error Handling UI */}
                  {loginError && (
                    <div className="p-4 rounded-lg border border-red-500/30 bg-red-50 dark:bg-red-950/20">
                      <div className="flex items-center gap-2 mb-2">
                        <Activity className="h-4 w-4 text-red-600" />
                        <span className="text-sm font-medium text-red-700 dark:text-red-400">
                          Login Failed
                        </span>
                      </div>
                      <p className="text-sm text-muted-foreground mb-3">
                        {loginError === "timeout"
                          ? "The server took too long to respond."
                          : loginError === "network" ? "Unable to connect to the server." : "Invalid credentials or account issue."}
                      </p>
                      {(loginError === "timeout" || loginError === "network") && (
                        <Button
                          type="button"
                          variant="outline"
                          size="sm"
                          onClick={checkServerHealth}
                          disabled={isCheckingHealth}
                          className="w-full gap-2"
                        >
                          {isCheckingHealth ? "Checking..." : "Check Server Health"}
                        </Button>
                      )}
                    </div>
                  )}

                  {healthResult && (
                    <div className={`mt-3 p-3 rounded text-sm ${healthResult.ok
                      ? "bg-green-100 dark:bg-green-950/30 text-green-800 dark:text-green-300"
                      : "bg-red-100 dark:bg-red-950/30 text-red-800 dark:text-red-300"
                      }`}>
                      {healthResult.ok ? (
                        <div className="text-xs">Server: OK | DB: {healthResult.dbOk ? "Connected" : "Error"} ({healthResult.dbLatency}ms)</div>
                      ) : (
                        <div className="text-xs">Error: {healthResult.error}</div>
                      )}
                    </div>
                  )}

                  {isDevelopment && (
                    <div className="relative pt-2">
                      <div className="absolute inset-0 flex items-center">
                        <span className="w-full border-t" />
                      </div>
                      <div className="relative flex justify-center text-xs uppercase">
                        <span className="bg-background px-2 text-muted-foreground">
                          Or continue with
                        </span>
                      </div>
                    </div>
                  )}

                  {isDevelopment && (
                    <Button
                      type="button"
                      variant="outline"
                      className="w-full h-10 font-medium gap-2 border-dashed border-primary/50 text-primary hover:bg-primary/5"
                      disabled={isDemoLoading}
                      onClick={handleDemoLogin}
                    >
                      <Play className="h-4 w-4" />
                      {isDemoLoading ? "Loading Demo..." : "Demo Login (Preview)"}
                    </Button>
                  )}

                  {unverifiedEmail && (
                    <div className="p-4 rounded-lg border border-yellow-500/30 bg-yellow-50 dark:bg-yellow-950/20 mt-4">
                      <p className="text-sm text-yellow-700 dark:text-yellow-400 mb-2">Email verification required.</p>
                      <Button
                        type="button"
                        variant="outline"
                        size="sm"
                        onClick={handleResendVerification}
                        disabled={isResending}
                        className="w-full border-yellow-500/50 text-yellow-700 hover:bg-yellow-100 dark:hover:bg-yellow-900/40"
                      >
                        {isResending ? "Sending..." : "Resend Verification Email"}
                      </Button>
                    </div>
                  )}

                </form>
              </CardContent>
              <CardFooter className="flex flex-col gap-4 border-t border-border/50 pt-6">
                <div className="text-center text-sm text-muted-foreground">
                  Don't have an account?{" "}
                  <Link
                    href="/signup"
                    className="font-medium text-primary hover:underline hover:text-primary/80 transition-colors"
                  >
                    Create an account
                  </Link>
                </div>
              </CardFooter>
            </Card>
          </div>
        </div>
      </div>
    </PublicLayout>
  );
}
