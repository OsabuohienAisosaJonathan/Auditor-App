import { Link, useLocation } from "wouter";
import { Button } from "@/components/ui/button";
import { useState, useEffect } from "react";
import { Menu, X, Mail, Phone, MapPin } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import logoImage from "@/assets/logo2.png";

interface PublicLayoutProps {
  children: React.ReactNode;
  forceDark?: boolean;
}

export default function PublicLayout({ children, forceDark }: PublicLayoutProps) {
  const [location, setLocation] = useLocation();
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);
  const [scrolled, setScrolled] = useState(false);

  const handleNavClick = (e: React.MouseEvent<HTMLAnchorElement>, id: string) => {
    e.preventDefault();
    if (location === "/") {
      const element = document.getElementById(id);
      if (element) {
        element.scrollIntoView({ behavior: "smooth" });
      }
    } else {
      setLocation("/");
      // Use a small timeout to allow navigation to complete before scrolling
      setTimeout(() => {
        const element = document.getElementById(id);
        if (element) {
          element.scrollIntoView({ behavior: "smooth" });
        } else {
          // Retry once more in case of render delay
          setTimeout(() => {
            const retryElement = document.getElementById(id);
            if (retryElement) retryElement.scrollIntoView({ behavior: "smooth" });
          }, 300);
        }
      }, 100);
    }
  };

  useEffect(() => {
    // Handle initial hash scroll or hash change if needed
    if (window.location.hash) {
      const id = window.location.hash.substring(1);
      setTimeout(() => {
        const element = document.getElementById(id);
        if (element) {
          element.scrollIntoView({ behavior: "smooth" });
        }
      }, 100);
    }
  }, [location]);

  useEffect(() => {
    const handleScroll = () => {
      setScrolled(window.scrollY > 20);
    };
    window.addEventListener("scroll", handleScroll);
    return () => window.removeEventListener("scroll", handleScroll);
  }, []);

  return (
    <div className={`min-h-screen bg-background text-foreground font-sans overflow-x-hidden selection:bg-primary/20 flex flex-col ${forceDark ? "dark" : ""}`}>
      {/* Navigation */}
      <nav className={`fixed top-0 left-0 right-0 z-50 transition-all duration-300 ${scrolled ? 'bg-background/95 backdrop-blur-md border-b border-border shadow-sm' : 'bg-transparent'}`}>
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex justify-between items-center h-24">
            <Link href="/" className="flex items-center">
              <img src={logoImage} alt="MiAuditOps" className="h-[160px] object-contain cursor-pointer" />
            </Link>

            {/* Desktop Menu */}
            <div className="hidden md:flex items-center gap-8">
              <a href="/#features" onClick={(e) => handleNavClick(e, "features")} className="text-sm font-medium hover:text-primary transition-colors cursor-pointer">Features</a>
              <a href="/#pricing" onClick={(e) => handleNavClick(e, "pricing")} className="text-sm font-medium hover:text-primary transition-colors cursor-pointer">Pricing</a>
              <a href="/#about" onClick={(e) => handleNavClick(e, "about")} className="text-sm font-medium hover:text-primary transition-colors cursor-pointer">About</a>
              <a href="/#contact" onClick={(e) => handleNavClick(e, "contact")} className="text-sm font-medium hover:text-primary transition-colors cursor-pointer">Contact</a>
            </div>

            <div className="hidden md:flex items-center gap-3">
              <Button variant="ghost" onClick={() => setLocation("/login")} className="hover:bg-primary/5">
                Sign In
              </Button>
              <Button onClick={() => setLocation("/signup")} className="rounded-full px-6 shadow-lg shadow-primary/20 transition-all hover:shadow-primary/30 hover:scale-105">
                Get Started
              </Button>
            </div>

            {/* Mobile Menu Button */}
            <button className="md:hidden p-2" onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}>
              {isMobileMenuOpen ? <X /> : <Menu />}
            </button>
          </div>
        </div>

        {/* Mobile Menu */}
        <AnimatePresence>
          {isMobileMenuOpen && (
            <motion.div
              initial={{ height: 0, opacity: 0 }}
              animate={{ height: "auto", opacity: 1 }}
              exit={{ height: 0, opacity: 0 }}
              className="md:hidden overflow-hidden bg-background border-b border-border"
            >
              <div className="px-4 py-6 space-y-4">
                <a href="/#features" onClick={(e) => { handleNavClick(e, "features"); setIsMobileMenuOpen(false); }} className="block text-base font-medium py-2">Features</a>
                <a href="/#pricing" onClick={(e) => { handleNavClick(e, "pricing"); setIsMobileMenuOpen(false); }} className="block text-base font-medium py-2">Pricing</a>
                <a href="/#about" onClick={(e) => { handleNavClick(e, "about"); setIsMobileMenuOpen(false); }} className="block text-base font-medium py-2">About</a>
                <a href="/#contact" onClick={(e) => { handleNavClick(e, "contact"); setIsMobileMenuOpen(false); }} className="block text-base font-medium py-2">Contact</a>
                <div className="pt-4 flex flex-col gap-3">
                  <Button variant="outline" onClick={() => { setLocation("/login"); setIsMobileMenuOpen(false); }} className="w-full">
                    Sign In
                  </Button>
                  <Button onClick={() => { setLocation("/signup"); setIsMobileMenuOpen(false); }} className="w-full">
                    Get Started
                  </Button>
                </div>
              </div>
            </motion.div>
          )}
        </AnimatePresence>
      </nav>

      {/* Main Content */}
      <main className="flex-grow pt-20">
        {children}
      </main>

      {/* Footer */}
      <footer className="bg-slate-900 text-slate-400 py-16 mt-auto">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid md:grid-cols-4 gap-12 mb-12">
            <div className="col-span-1 md:col-span-2">
              <img src={logoImage} alt="MiAuditOps" className="h-12 object-contain mb-6 invert opacity-90" />
              <p className="text-sm leading-relaxed max-w-sm">
                The premier digital audit platform for the hospitality industry.
                We bring transparency, accountability, and efficiency to your daily operations.
              </p>
            </div>
            <div>
              <h4 className="text-white font-semibold mb-4">Platform</h4>
              <ul className="space-y-2 text-sm">
                <li><Link href="/#features" className="hover:text-white transition-colors">Features</Link></li>
                <li><Link href="/#pricing" className="hover:text-white transition-colors">Pricing</Link></li>
                <li><Link href="/login" className="hover:text-white transition-colors">Login</Link></li>
                <li><Link href="/signup" className="hover:text-white transition-colors">Sign Up</Link></li>
              </ul>
            </div>
            <div>
              <h4 className="text-white font-semibold mb-4">Contact</h4>
              <ul className="space-y-2 text-sm">
                <li className="flex items-center gap-2"><Mail className="w-4 h-4" /> support@miauditops.com</li>
                <li className="flex items-center gap-2"><Phone className="w-4 h-4" /> +234 800 123 4567</li>
                <li className="flex items-center gap-2"><MapPin className="w-4 h-4" /> Lagos, Nigeria</li>
              </ul>
            </div>
          </div>
          <div className="border-t border-slate-800 pt-8 flex flex-col md:flex-row justify-between items-center gap-4 text-xs">
            <p>&copy; {new Date().getFullYear()} Miemploya Audit Services. All rights reserved.</p>
            <div className="flex gap-6">
              <a href="#" className="hover:text-white">Privacy Policy</a>
              <a href="#" className="hover:text-white">Terms of Service</a>
            </div>
          </div>
        </div>
      </footer>
    </div>
  );
}
