import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Checkbox } from "@/components/ui/checkbox";
import { RadioGroup, RadioGroupItem } from "@/components/ui/radio-group";
import { useLocation, Link } from "wouter";
import { useState } from "react";
import { useToast } from "@/hooks/use-toast";
import { Eye, EyeOff, Building2, Users, ArrowLeft, Mail, User, Lock } from "lucide-react";
import PublicLayout from "@/components/layout/PublicLayout";
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from "@/components/ui/card";

export default function Signup() {
  const [, setLocation] = useLocation();
  const { toast } = useToast();
  const [isLoading, setIsLoading] = useState(false);
  const [showPassword, setShowPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);
  const [accountType, setAccountType] = useState<"company" | "auditor">("company");
  const [agreedToTerms, setAgreedToTerms] = useState(false);

  const [formData, setFormData] = useState({
    organizationName: "",
    fullName: "",
    email: "",
    password: "",
    confirmPassword: "",
  });

  const [errors, setErrors] = useState<Record<string, string>>({});

  const validateForm = () => {
    const newErrors: Record<string, string> = {};

    if (!formData.organizationName.trim()) {
      newErrors.organizationName = accountType === "company" ? "Company name is required" : "Audit firm name is required";
    }
    if (!formData.fullName.trim()) {
      newErrors.fullName = "Full name is required";
    }
    if (!formData.email.trim()) {
      newErrors.email = "Email is required";
    } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(formData.email)) {
      newErrors.email = "Please enter a valid email";
    }
    if (!formData.password) {
      newErrors.password = "Password is required";
    } else if (formData.password.length < 8) {
      newErrors.password = "Password must be at least 8 characters";
    } else if (!/(?=.*[a-z])(?=.*[A-Z])(?=.*\d)/.test(formData.password)) {
      newErrors.password = "Password must include uppercase, lowercase, and a number";
    }
    if (formData.password !== formData.confirmPassword) {
      newErrors.confirmPassword = "Passwords do not match";
    }
    if (!agreedToTerms) {
      newErrors.terms = "You must agree to the terms and conditions";
    }

    setErrors(newErrors);
    return Object.keys(newErrors).length === 0;
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    if (!validateForm()) {
      toast({
        variant: "destructive",
        title: "Validation Error",
        description: "Please fix the errors below",
      });
      return;
    }

    setIsLoading(true);

    try {
      const response = await fetch("/api/auth/register", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          username: formData.email,
          email: formData.email,
          password: formData.password,
          fullName: formData.fullName,
          role: "super_admin",
          accountType,
          organizationName: formData.organizationName,
        }),
      });

      if (!response.ok) {
        const data = await response.json();
        throw new Error(data.error || "Registration failed");
      }

      toast({
        title: "Account created!",
        description: "Please check your email to verify your account.",
      });

      setLocation(`/check-email?email=${encodeURIComponent(formData.email)}`);
    } catch (error: any) {
      toast({
        variant: "destructive",
        title: "Registration failed",
        description: error.message || "Something went wrong",
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
            <div className="absolute top-0 right-0 w-[600px] h-[600px] bg-blue-600/20 rounded-full blur-[120px] -translate-y-1/2 translate-x-1/2" />
            <div className="absolute bottom-0 left-0 w-[600px] h-[600px] bg-primary/20 rounded-full blur-[120px] translate-y-1/2 -translate-x-1/2" />
            <div className="absolute inset-0 bg-[url('https://www.transparenttextures.com/patterns/cubes.png')] opacity-20" />
          </div>

          <div className="relative z-10">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full border border-slate-700 bg-slate-800/50 text-slate-300 text-xs font-medium mb-8">
              <Users className="w-3 h-3 text-primary" />
              <span>Join the network</span>
            </div>
            <h1 className="text-4xl font-display font-bold text-white mb-4 leading-tight">
              Start Your Audit <br />
              <span className="text-primary">Journey Today.</span>
            </h1>
            <p className="text-slate-400 text-lg max-w-md">
              Create an account to access enterprise-grade hospitality auditing tools.
            </p>
          </div>

          <div className="relative z-10 grid gap-4">
            <div className="flex items-center gap-4 bg-slate-800/30 p-4 rounded-xl border border-slate-700/50">
              <div className="w-10 h-10 rounded-lg bg-blue-500/10 flex items-center justify-center flex-shrink-0">
                <Building2 className="w-5 h-5 text-blue-500" />
              </div>
              <div>
                <h3 className="text-white font-medium">For Companies</h3>
                <p className="text-xs text-slate-400">Manage internal audits for your outlets.</p>
              </div>
            </div>
            <div className="flex items-center gap-4 bg-slate-800/30 p-4 rounded-xl border border-slate-700/50">
              <div className="w-10 h-10 rounded-lg bg-emerald-500/10 flex items-center justify-center flex-shrink-0">
                <Users className="w-5 h-5 text-emerald-500" />
              </div>
              <div>
                <h3 className="text-white font-medium">For Audit Firms</h3>
                <p className="text-xs text-slate-400">Manage multiple clients and staff.</p>
              </div>
            </div>
          </div>
        </div>

        {/* Right Side: Signup Form */}
        <div className="flex items-center justify-center p-6 md:p-12 bg-background">
          <div className="w-full max-w-lg space-y-8">
            <div className="text-center md:text-left">
              <h2 className="text-3xl font-bold tracking-tight text-foreground">Create an account</h2>
              <p className="text-muted-foreground mt-2">
                Choose your account type and get started.
              </p>
            </div>

            <Card className="border-0 shadow-none bg-transparent">
              <CardContent className="p-0 space-y-8">
                <div className="space-y-4">
                  <Label className="text-base">I am signing up as a...</Label>
                  <RadioGroup
                    defaultValue="company"
                    value={accountType}
                    onValueChange={(val: "company" | "auditor") => setAccountType(val)}
                    className="grid grid-cols-2 gap-4"
                  >
                    <div>
                      <RadioGroupItem value="company" id="company" className="peer sr-only" />
                      <Label
                        htmlFor="company"
                        className="flex flex-col items-center justify-between rounded-xl border-2 border-muted bg-popover p-4 hover:bg-accent hover:text-accent-foreground peer-data-[state=checked]:border-primary peer-data-[state=checked]:bg-primary/5 cursor-pointer transition-all"
                      >
                        <Building2 className="mb-3 h-6 w-6 text-muted-foreground peer-data-[state=checked]:text-primary" />
                        <span className="font-semibold text-sm">Company</span>
                      </Label>
                    </div>
                    <div>
                      <RadioGroupItem value="auditor" id="auditor" className="peer sr-only" />
                      <Label
                        htmlFor="auditor"
                        className="flex flex-col items-center justify-between rounded-xl border-2 border-muted bg-popover p-4 hover:bg-accent hover:text-accent-foreground peer-data-[state=checked]:border-primary peer-data-[state=checked]:bg-primary/5 cursor-pointer transition-all"
                      >
                        <Users className="mb-3 h-6 w-6 text-muted-foreground peer-data-[state=checked]:text-primary" />
                        <span className="font-semibold text-sm">Audit Firm</span>
                      </Label>
                    </div>
                  </RadioGroup>
                </div>

                <form onSubmit={handleSubmit} className="space-y-5">
                  <div className="grid gap-2">
                    <Label htmlFor="orgName">
                      {accountType === "company" ? "Organization Name" : "Audit Firm Name"}
                    </Label>
                    <div className="relative">
                      <Building2 className="absolute left-3 top-3 h-4 w-4 text-muted-foreground" />
                      <Input
                        id="orgName"
                        placeholder={accountType === "company" ? "e.g., Grand Hotel Ltd." : "e.g., Smith & Co. Auditors"}
                        className={`pl-10 h-11 ${errors.organizationName ? "border-destructive focus-visible:ring-destructive" : ""}`}
                        value={formData.organizationName}
                        onChange={(e) => setFormData({ ...formData, organizationName: e.target.value })}
                      />
                    </div>
                    {errors.organizationName && <p className="text-sm text-destructive font-medium">{errors.organizationName}</p>}
                  </div>

                  <div className="grid gap-2">
                    <Label htmlFor="fullName">Full Name</Label>
                    <div className="relative">
                      <User className="absolute left-3 top-3 h-4 w-4 text-muted-foreground" />
                      <Input
                        id="fullName"
                        placeholder="John Doe"
                        className={`pl-10 h-11 ${errors.fullName ? "border-destructive focus-visible:ring-destructive" : ""}`}
                        value={formData.fullName}
                        onChange={(e) => setFormData({ ...formData, fullName: e.target.value })}
                      />
                    </div>
                    {errors.fullName && <p className="text-sm text-destructive font-medium">{errors.fullName}</p>}
                  </div>

                  <div className="grid gap-2">
                    <Label htmlFor="email">Email Address</Label>
                    <div className="relative">
                      <Mail className="absolute left-3 top-3 h-4 w-4 text-muted-foreground" />
                      <Input
                        id="email"
                        type="email"
                        placeholder="name@example.com"
                        className={`pl-10 h-11 ${errors.email ? "border-destructive focus-visible:ring-destructive" : ""}`}
                        value={formData.email}
                        onChange={(e) => setFormData({ ...formData, email: e.target.value })}
                      />
                    </div>
                    {errors.email && <p className="text-sm text-destructive font-medium">{errors.email}</p>}
                  </div>

                  <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
                    <div className="grid gap-2">
                      <Label htmlFor="password">Password</Label>
                      <div className="relative">
                        <Lock className="absolute left-3 top-3 h-4 w-4 text-muted-foreground" />
                        <Input
                          id="password"
                          type={showPassword ? "text" : "password"}
                          placeholder="Min. 8 chars"
                          className={`pl-10 pr-10 h-11 ${errors.password ? "border-destructive focus-visible:ring-destructive" : ""}`}
                          value={formData.password}
                          onChange={(e) => setFormData({ ...formData, password: e.target.value })}
                        />
                        <Button
                          type="button"
                          variant="ghost"
                          size="sm"
                          className="absolute right-0 top-0 h-full px-3 py-2 hover:bg-transparent"
                          onClick={() => setShowPassword(!showPassword)}
                        >
                          {showPassword ? (
                            <EyeOff className="h-4 w-4 text-muted-foreground" />
                          ) : (
                            <Eye className="h-4 w-4 text-muted-foreground" />
                          )}
                        </Button>
                      </div>
                      {errors.password && <p className="text-sm text-destructive font-medium">{errors.password}</p>}
                    </div>

                    <div className="grid gap-2">
                      <Label htmlFor="confirmPassword">Confirm Password</Label>
                      <div className="relative">
                        <Lock className="absolute left-3 top-3 h-4 w-4 text-muted-foreground" />
                        <Input
                          id="confirmPassword"
                          type={showConfirmPassword ? "text" : "password"}
                          placeholder="Repeat password"
                          className={`pl-10 pr-10 h-11 ${errors.confirmPassword ? "border-destructive focus-visible:ring-destructive" : ""}`}
                          value={formData.confirmPassword}
                          onChange={(e) => setFormData({ ...formData, confirmPassword: e.target.value })}
                        />
                        <Button
                          type="button"
                          variant="ghost"
                          size="sm"
                          className="absolute right-0 top-0 h-full px-3 py-2 hover:bg-transparent"
                          onClick={() => setShowConfirmPassword(!showConfirmPassword)}
                        >
                          {showConfirmPassword ? (
                            <EyeOff className="h-4 w-4 text-muted-foreground" />
                          ) : (
                            <Eye className="h-4 w-4 text-muted-foreground" />
                          )}
                        </Button>
                      </div>
                      {errors.confirmPassword && <p className="text-sm text-destructive font-medium">{errors.confirmPassword}</p>}
                    </div>
                  </div>

                  <div className="flex items-start space-x-2 pt-2">
                    <Checkbox
                      id="terms"
                      checked={agreedToTerms}
                      onCheckedChange={(checked) => setAgreedToTerms(checked === true)}
                      className={errors.terms ? "border-destructive" : ""}
                    />
                    <label
                      htmlFor="terms"
                      className={`text-sm leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 ${errors.terms ? "text-destructive" : "text-muted-foreground"}`}
                    >
                      I agree to the <Link href="/terms"><span className="text-primary hover:underline cursor-pointer">Terms of Service</span></Link> and <Link href="/privacy"><span className="text-primary hover:underline cursor-pointer">Privacy Policy</span></Link>.
                    </label>
                  </div>
                  {errors.terms && <p className="text-xs text-destructive font-medium mt-1">{errors.terms}</p>}

                  <Button type="submit" className="w-full h-11 font-semibold text-base mt-2" disabled={isLoading}>
                    {isLoading ? "Creating Account..." : "Create Account"}
                  </Button>
                </form>
              </CardContent>
              <CardFooter className="flex justify-center p-0 pt-6">
                <div className="text-sm text-muted-foreground">
                  Already have an account?{" "}
                  <Link href="/login">
                    <span className="text-primary hover:underline cursor-pointer font-medium">
                      Sign In
                    </span>
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
