import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Accordion, AccordionContent, AccordionItem, AccordionTrigger } from "@/components/ui/accordion";
import { Badge } from "@/components/ui/badge";
import { Label } from "@/components/ui/label";
import { useLocation } from "wouter";
import { useState, useEffect } from "react";
import {
  ClipboardCheck,
  Package,
  Warehouse,
  Calculator,
  AlertTriangle,
  FileText,
  Play,
  Check,
  Lock,
  ArrowRight,
  Mail,
  Phone,
  MapPin
} from "lucide-react";
import { Tooltip, TooltipContent, TooltipProvider, TooltipTrigger } from "@/components/ui/tooltip";
import { useToast } from "@/hooks/use-toast";
import { motion } from "framer-motion";
import PublicLayout from "@/components/layout/PublicLayout";

// Assets
import logoImage from "@/assets/logo2.png";
// import heroImage from "@/assets/hero-dashboard.png";
// import videoThumb from "@/assets/video-thumbnail.png";

const heroImage = logoImage; // Fallback since asset copy failed
const videoThumb = logoImage; // Fallback since asset copy failed

interface DBPricingPlan {
  slug: string;
  displayName: string;
  description: string | null;
  monthlyPrice: string;
  quarterlyPrice: string;
  yearlyPrice: string;
  maxClients: number;
  maxSrdDepartmentsPerClient: number;
  maxMainStorePerClient: number;
  maxSeats: number;
  retentionDays: number;
  canViewReports: boolean;
  canDownloadReports: boolean;
  canPrintReports: boolean;
  canAccessPurchasesRegisterPage: boolean;
  canAccessSecondHitPage: boolean;
  canDownloadSecondHitFullTable: boolean;
  canDownloadMainStoreLedgerSummary: boolean;
  canUseBetaFeatures: boolean;
}

const fadeInUp = {
  hidden: { opacity: 0, y: 20 },
  visible: { opacity: 1, y: 0, transition: { duration: 0.6 } }
};

const staggerContainer = {
  hidden: { opacity: 0 },
  visible: {
    opacity: 1,
    transition: {
      staggerChildren: 0.1
    }
  }
};

export default function Home() {
  const [, setLocation] = useLocation();
  const { toast } = useToast();
  const [billingPeriod, setBillingPeriod] = useState<"monthly" | "quarterly" | "yearly">("yearly");
  const [selectedSlots, setSelectedSlots] = useState<1 | 3 | 5 | 10>(1);
  const [dbPricing, setDbPricing] = useState<DBPricingPlan[]>([]);

  useEffect(() => {
    fetch("/api/public/pricing")
      .then((res) => res.json())
      .then((data) => {
        if (Array.isArray(data)) {
          setDbPricing(data);
        } else {
          console.error("Pricing data is not an array:", data);
          setDbPricing([]);
        }
      })
      .catch((err) => {
        console.error("Failed to fetch pricing:", err);
        setDbPricing([]);
      });
  }, []);

  const getDbPrice = (slug: string) => {
    const plan = dbPricing.find((p) => p.slug === slug);
    if (!plan) return null;
    return {
      monthly: parseFloat(plan.monthlyPrice) || 0,
      quarterly: parseFloat(plan.quarterlyPrice) || 0,
      yearly: parseFloat(plan.yearlyPrice) || 0,
    };
  };

  const formatPrice = (amount: number) => {
    return new Intl.NumberFormat('en-NG', { maximumFractionDigits: 0 }).format(amount);
  };

  const calculatePrice = (baseMonthly: number, planSlug?: string) => {
    const dbPrice = planSlug ? getDbPrice(planSlug) : null;

    let basePrice = baseMonthly;
    let multiplier = 1;
    let periods = 1;

    if (dbPrice) {
      if (billingPeriod === "monthly") {
        basePrice = dbPrice.monthly;
        periods = 1;
      } else if (billingPeriod === "quarterly") {
        basePrice = dbPrice.quarterly;
        periods = 1;
      } else {
        basePrice = dbPrice.yearly;
        periods = 1;
      }
    } else {
      if (billingPeriod === "monthly") {
        periods = 1;
        multiplier = 1;
      } else if (billingPeriod === "quarterly") {
        periods = 3;
        multiplier = 0.95;
      } else {
        periods = 12;
        multiplier = 0.85;
      }
      basePrice = baseMonthly * periods * multiplier;
    }

    let slotMultiplier = selectedSlots;
    if (selectedSlots === 3) slotMultiplier = 3 * 0.90;
    else if (selectedSlots === 5) slotMultiplier = 5 * 0.85;
    else if (selectedSlots === 10) slotMultiplier = 10 * 0.75;

    return Math.round(basePrice * slotMultiplier);
  };

  const features = [
    { icon: ClipboardCheck, title: "Audit Workspace", description: "Capture sales by department with payment declarations and compliance tracking." },
    { icon: Package, title: "Inventory & Purchases", description: "GRN records, supplier management, and purchase event tracking." },
    { icon: Warehouse, title: "SRD Ledgers", description: "Main Store and Department Store ledgers with carry-over calculations." },
    { icon: Calculator, title: "Reconciliation", description: "1st Hit (Declared vs Captured) and 2nd Hit (Audit adjustments) variance tracking." },
    { icon: AlertTriangle, title: "Exceptions & Registers", description: "Exception tracking with investigation timelines, receivables, and surplus registers." },
    { icon: FileText, title: "Reports", description: "Daily, weekly, and monthly audit reports with executive summaries." },
  ];

  const pricingPlans = [
    {
      name: "Starter",
      slug: "starter",
      headline: "Daily audit essentials for small operations",
      subtext: "Capture sales, reconcile stock, and run daily workflow—without heavy exports.",
      bestFor: "Single outlet lounges/restaurants and early-stage audit routines.",
      limits: "Up to 4 SRD Department Stores + 1 Main Store per workspace · 2 users · 30 days history",
      baseMonthly: 49999,
      features: [
        "Audit Workspace (Sales → Purchases → Stock → Reconciliation)",
        "SRD Ledgers (Main Store + Department Stores)",
        "Exceptions logging + audit notes",
        "Report preview (Daily/Weekly/Monthly) with watermark",
        "Standard dashboards + performance metrics"
      ],
      locked: [
        "Purchases Register page",
        "Report downloads (PDF/Excel/Print)",
        "Department Comparison (2nd Hit) full table page + download",
        "SRD Main Store Ledger Summary download"
      ],
      cta: "Start with Starter",
      secondaryLink: "Preview reports (Upgrade to download)",
      popular: false,
    },
    {
      name: "Growth",
      slug: "growth",
      headline: "Strong controls for growing audit teams",
      subtext: "Expand departments, add more users, and unlock most report downloads.",
      bestFor: "Busy lounges/restaurants and audit teams handling multiple departments daily.",
      limits: "Up to 7 SRD Department Stores + 1 Main Store per workspace · 5 users · 90 days history",
      baseMonthly: 79999,
      features: [
        "Everything in Starter",
        "More SRD Department Stores for broader coverage",
        "Report downloads enabled (PDF/Excel/Print) for standard reports",
        "Better audit visibility across departments and dates",
        "Stronger record retention for investigations"
      ],
      locked: [
        "Department Comparison (2nd Hit) full table page + download",
        "SRD Main Store Ledger Summary download"
      ],
      cta: "Upgrade to Growth",
      secondaryLink: "Compare plans",
      popular: true,
    },
    {
      name: "Business",
      slug: "business",
      headline: "Full reporting power for audit firms",
      subtext: "Unlock full reconciliation intelligence, full exports, and advanced stock variance reporting.",
      bestFor: "Professional audit firms, serious internal audit teams, hospitality groups.",
      limits: "Up to 12 SRD Department Stores + 1 Main Store per workspace · 12 users · 1 year history",
      baseMonthly: 129999,
      features: [
        "Everything in Growth",
        "Full Department Comparison (2nd Hit) table (page + export)",
        "Full report downloads across all sections (PDF/Excel/Print)",
        "SRD Main Store Ledger Summary report download",
        "Purchases Register access + reporting",
        "Better monthly/weekly breakdown reporting for executives"
      ],
      locked: [],
      cta: "Go Business",
      secondaryLink: "Book a quick demo",
      popular: false,
    },
    {
      name: "Enterprise",
      slug: "enterprise",
      headline: "Unlimited scale + priority support",
      subtext: "Designed for large audit teams, groups, franchises, and heavy reporting needs.",
      bestFor: "Large audit firms, hotel groups, franchises, multi-location chains.",
      limits: "Unlimited SRD Department Stores + 1 Main Store per workspace · Unlimited users · Unlimited history",
      baseMonthly: 199999,
      features: [
        "Everything in Business",
        "Unlimited SRD Department Stores per workspace",
        "Unlimited user seats for large teams",
        "Unlimited retention for long-term investigations",
        "Early access to new features (beta toggles)",
        "Dedicated support line + SLA response time"
      ],
      locked: [],
      cta: "Contact Sales",
      secondaryLink: "Request Enterprise onboarding",
      popular: false,
      isEnterprise: true,
    },
  ];

  const faqs = [
    { question: "What is a Client/Company slot?", answer: "A slot represents one business entity (restaurant, lounge, bar) that you can audit. Each slot has its own outlets, departments, and inventory." },
    { question: "Company vs Auditor: what changes?", answer: "Company accounts are for businesses auditing themselves. Auditor accounts are for external audit firms managing multiple clients with advanced reporting." },
    { question: "Can I upgrade anytime?", answer: "Yes! You can upgrade your plan at any time. We'll prorate the difference and apply it to your next billing cycle." },
    { question: "What does 'Preview Mode' mean?", answer: "Preview Mode lets you explore the full platform with sample data before committing. No credit card required." },
    { question: "What is SRD Main Store vs Department Store?", answer: "Main Store is your central inventory (warehouse). Department Stores are point-of-sale locations that receive stock from Main Store for daily operations." },
    { question: "Do you support PDF/Excel exports?", answer: "Yes! All reports can be exported to PDF for executives and Excel/CSV for detailed analysis." },
  ];

  return (
    <PublicLayout forceDark={true}>
      {/* Hero Section */}
      <section className="relative pt-20 pb-20 lg:pt-32 lg:pb-32 overflow-hidden">
        {/* Background Gradients */}
        <div className="absolute top-0 right-0 w-[500px] h-[500px] bg-primary/10 rounded-full blur-[120px] -translate-y-1/2 translate-x-1/3" />
        <div className="absolute bottom-0 left-0 w-[500px] h-[500px] bg-blue-400/10 rounded-full blur-[120px] translate-y-1/3 -translate-x-1/4" />

        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
          <div className="grid lg:grid-cols-2 gap-12 items-center">
            <motion.div
              initial="hidden"
              animate="visible"
              variants={staggerContainer}
              className="max-w-2xl"
            >
              <motion.div variants={fadeInUp}>
                <div className="inline-flex items-center gap-2 mb-6 px-3 py-1 border border-primary/20 text-primary bg-primary/5 uppercase tracking-wide text-[10px] font-bold rounded-full">
                  <div className="w-2 h-2 rounded-full bg-primary animate-pulse" />
                  The #1 Audit Platform for Hospitality
                </div>
              </motion.div>
              <motion.h1 variants={fadeInUp} className="text-4xl md:text-5xl lg:text-6xl font-display font-bold tracking-tight mb-6 leading-[1.1]">
                Master Your Stock.<br />
                <span className="text-primary bg-clip-text text-transparent bg-gradient-to-r from-primary to-blue-600">Perfect Your Audit.</span>
              </motion.h1>
              <motion.p variants={fadeInUp} className="text-lg md:text-xl text-muted-foreground mb-8 leading-relaxed max-w-lg">
                MiAuditOps replaces chaotic spreadsheets with a structured daily audit workflow. Capture sales, reconcile inventory, and generate evidence-ready reports.
              </motion.p>
              <motion.div variants={fadeInUp} className="flex flex-col sm:flex-row gap-4">
                <Button
                  size="lg"
                  onClick={() => setLocation("/signup")}
                  className="text-base px-8 h-12 rounded-full shadow-lg shadow-primary/25 hover:shadow-primary/40 transition-all hover:-translate-y-1"
                >
                  Start Free Trial <ArrowRight className="ml-2 h-4 w-4" />
                </Button>
                <Button
                  size="lg"
                  variant="outline"
                  className="text-base px-8 h-12 rounded-full border-2 hover:bg-muted/50"
                  onClick={() => document.getElementById('features')?.scrollIntoView({ behavior: 'smooth' })}
                >
                  Explore Features
                </Button>
              </motion.div>

              <motion.div variants={fadeInUp} className="mt-8 flex items-center gap-4 text-sm text-muted-foreground">
                <div className="flex -space-x-2">
                  {[1, 2, 3, 4].map(i => (
                    <div key={i} className="w-8 h-8 rounded-full border-2 border-background bg-slate-200 flex items-center justify-center text-[10px] font-bold overflow-hidden">
                      <img src={`https://api.dicebear.com/7.x/avataaars/svg?seed=${i}`} alt="user" />
                    </div>
                  ))}
                </div>
                <div>
                  <div className="flex text-amber-500">★★★★★</div>
                  <span>Trusted by top auditors</span>
                </div>
              </motion.div>
            </motion.div>

            <motion.div
              initial={{ opacity: 0, x: 50 }}
              animate={{ opacity: 1, x: 0 }}
              transition={{ duration: 0.8, delay: 0.2 }}
              className="relative"
            >
              <div className="relative rounded-2xl overflow-hidden shadow-2xl shadow-primary/20 border border-slate-200/50 bg-white">
                <img
                  src={heroImage}
                  onError={(e) => {
                    e.currentTarget.src = logoImage; // Fallback
                    e.currentTarget.classList.add("p-20", "object-contain");
                  }}
                  alt="MiAuditOps Dashboard"
                  className="w-full h-auto object-cover transform transition-transform hover:scale-[1.01] duration-700"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-black/20 to-transparent pointer-events-none" />

                {/* Floating Elements Animation */}
                <motion.div
                  animate={{ y: [0, -10, 0] }}
                  transition={{ repeat: Infinity, duration: 4, ease: "easeInOut" }}
                  className="absolute -left-6 -bottom-6 bg-white p-4 rounded-xl shadow-xl border border-slate-100 max-w-[200px]"
                >
                  <div className="flex items-center gap-3 mb-2">
                    <div className="w-8 h-8 bg-green-100 rounded-full flex items-center justify-center">
                      <Check className="w-4 h-4 text-green-600" />
                    </div>
                    <div>
                      <div className="text-xs text-muted-foreground">Daily Audit</div>
                      <div className="text-sm font-bold text-green-600">Completed</div>
                    </div>
                  </div>
                  <div className="w-full bg-slate-100 h-1.5 rounded-full overflow-hidden">
                    <div className="bg-green-500 w-full h-full" />
                  </div>
                </motion.div>
              </div>
            </motion.div>
          </div>
        </div>
      </section>

      {/* How It Works Section */}
      <section id="about" className="py-20 bg-muted/30">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-16">
            <h2 className="text-3xl font-display font-bold mb-4">Complete Audit Workflow</h2>
            <p className="text-muted-foreground max-w-2xl mx-auto">From sales capture to executive reporting, we've streamlined the entire process.</p>
          </div>

          <div className="grid md:grid-cols-2 gap-16 items-center">
            <div className="space-y-8">
              {[
                { title: "Capture Sales & Payments", desc: "Break down sales by department (Food, Drink, Tobacco) and reconcile against POS, Transfers, and Cash." },
                { title: "Manage Inventory & Purchases", desc: "Track GRNs, supplier purchases, and transfers between Main Store and Departments." },
                { title: "Reconcile Stock (1st & 2nd Hit)", desc: "Compare declared sales vs. usage. Identify 1st Hit (Consumption) and 2nd Hit (Audit) variances." },
                { title: "Generate Executive Reports", desc: "Produce watermark-free PDF/Excel reports ready for management review." }
              ].map((step, i) => (
                <motion.div
                  initial={{ opacity: 0, y: 20 }}
                  whileInView={{ opacity: 1, y: 0 }}
                  transition={{ delay: i * 0.1 }}
                  key={i}
                  className="flex gap-4"
                >
                  <div className="flex-shrink-0 w-8 h-8 rounded-full bg-primary text-primary-foreground flex items-center justify-center font-bold shadow-lg shadow-primary/20">
                    {i + 1}
                  </div>
                  <div>
                    <h3 className="font-bold text-lg mb-1">{step.title}</h3>
                    <p className="text-muted-foreground leading-relaxed">{step.desc}</p>
                  </div>
                </motion.div>
              ))}
            </div>
            <motion.div
              initial={{ opacity: 0, scale: 0.95 }}
              whileInView={{ opacity: 1, scale: 1 }}
              className="relative rounded-2xl overflow-hidden shadow-2xl ring-1 ring-border group"
            >
              <img
                src={videoThumb}
                alt="Workflow Tour"
                className="w-full h-auto"
              />
              <div className="absolute inset-0 bg-black/40 flex items-center justify-center group-hover:bg-black/30 transition-colors cursor-pointer">
                <div className="w-20 h-20 bg-white/20 backdrop-blur-sm rounded-full flex items-center justify-center transition-transform group-hover:scale-110">
                  <div className="w-16 h-16 bg-white rounded-full flex items-center justify-center shadow-lg">
                    <Play className="w-6 h-6 text-primary ml-1" fill="currentColor" />
                  </div>
                </div>
              </div>
            </motion.div>
          </div>
        </div>
      </section>

      {/* Features Grid */}
      <section id="features" className="py-24">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-16">
            <Badge variant="secondary" className="mb-4">Everything Included</Badge>
            <h2 className="text-3xl md:text-4xl font-display font-bold mb-4">
              Built Specifically for Hospitality Audits
            </h2>
            <p className="text-muted-foreground max-w-2xl mx-auto">
              Generic accounting tools don't capture the nuance of bar and kitchen operations. MiAuditOps does.
            </p>
          </div>
          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
            {features.map((feature, i) => (
              <motion.div
                key={i}
                initial={{ opacity: 0, y: 20 }}
                whileInView={{ opacity: 1, y: 0 }}
                transition={{ delay: i * 0.1 }}
                viewport={{ once: true }}
              >
                <Card className="h-full border-muted bg-card transition-all duration-300 hover:shadow-xl hover:border-primary/20 hover:-translate-y-1">
                  <CardHeader>
                    <div className="w-12 h-12 rounded-xl bg-gradient-to-br from-primary/10 to-blue-500/10 flex items-center justify-center mb-4 transition-colors">
                      <feature.icon className="h-6 w-6 text-primary" />
                    </div>
                    <CardTitle className="text-xl">{feature.title}</CardTitle>
                  </CardHeader>
                  <CardContent>
                    <CardDescription className="text-base leading-relaxed">{feature.description}</CardDescription>
                  </CardContent>
                </Card>
              </motion.div>
            ))}
          </div>
        </div>
      </section>

      {/* Pricing Section */}
      <section id="pricing" className="py-24 bg-muted/50 relative">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
          <div className="text-center mb-12">
            <Badge variant="outline" className="mb-4">Flexible Pricing</Badge>
            <h2 className="text-3xl md:text-4xl font-display font-bold mb-6">
              Simple, Transparent Pricing
            </h2>
            <p className="text-muted-foreground max-w-2xl mx-auto mb-10">
              Choose the plan that fits the scale of your audit operations.
            </p>

            {/* Billing Toggles */}
            <div className="flex flex-col sm:flex-row items-center justify-center gap-8 mb-8">
              {/* Period Toggle */}
              <div className="flex items-center gap-1 bg-white p-1 rounded-lg border shadow-sm">
                {(["monthly", "quarterly", "yearly"] as const).map((period) => (
                  <button
                    key={period}
                    onClick={() => setBillingPeriod(period)}
                    className={`px-4 py-2 rounded-md text-sm font-medium transition-all ${billingPeriod === period
                      ? "bg-primary text-primary-foreground shadow-sm"
                      : "text-muted-foreground hover:text-foreground hover:bg-muted"
                      }`}
                  >
                    {period.charAt(0).toUpperCase() + period.slice(1)}
                  </button>
                ))}
              </div>

              {/* Slots Toggle */}
              <div className="flex flex-col items-center">
                <Label className="text-xs font-semibold uppercase tracking-wider text-muted-foreground mb-2">Client Slots</Label>
                <div className="flex items-center gap-1 bg-white p-1 rounded-lg border shadow-sm">
                  {([1, 3, 5, 10] as const).map((slots) => (
                    <button
                      key={slots}
                      onClick={() => setSelectedSlots(slots)}
                      className={`px-4 py-2 rounded-md text-sm font-medium transition-all ${selectedSlots === slots
                        ? "bg-slate-800 text-white shadow-sm"
                        : "text-muted-foreground hover:text-foreground hover:bg-muted"
                        }`}
                    >
                      {slots}
                    </button>
                  ))}
                </div>
              </div>
            </div>
            {billingPeriod === "yearly" && (
              <span className="inline-block bg-green-100 text-green-700 text-xs font-bold px-3 py-1 rounded-full animate-pulse">Save 15% with Yearly billing</span>
            )}
          </div>

          <TooltipProvider>
            <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
              {pricingPlans.map((plan, i) => (
                <motion.div
                  key={i}
                  initial={{ opacity: 0, y: 20 }}
                  whileInView={{ opacity: 1, y: 0 }}
                  transition={{ delay: i * 0.1 }}
                  viewport={{ once: true }}
                  className={`flex`}
                >
                  <Card className={`relative flex flex-col w-full transition-all duration-300 hover:shadow-2xl hover:-translate-y-2 ${plan.popular ? "border-primary shadow-lg ring-2 ring-primary/20 scale-[1.02] z-10" : "border-border hover:border-primary/50"}`}>
                    {plan.popular && (
                      <div className="absolute -top-3 left-1/2 -translate-x-1/2">
                        <Badge className="bg-primary text-primary-foreground px-4 py-1 shadow-lg">Most Popular</Badge>
                      </div>
                    )}
                    <CardHeader className="pb-4">
                      <CardTitle className="text-2xl font-bold">{plan.name}</CardTitle>
                      <CardDescription className="text-sm mt-2 min-h-[40px]">{plan.headline}</CardDescription>
                    </CardHeader>
                    <CardContent className="flex-1 flex flex-col">
                      <div className="mb-6">
                        {'isEnterprise' in plan && plan.isEnterprise ? (
                          <div className="text-3xl font-bold text-foreground">Custom</div>
                        ) : (
                          <>
                            <div className="flex items-baseline gap-1">
                              <span className="text-3xl font-bold text-foreground">₦{formatPrice(calculatePrice(plan.baseMonthly, plan.slug))}</span>
                              <span className="text-sm text-muted-foreground">/{billingPeriod}</span>
                            </div>
                          </>
                        )}
                      </div>

                      <p className="text-xs text-muted-foreground mb-6 font-medium bg-muted p-2 rounded">{plan.limits}</p>

                      <div className="space-y-3 mb-8 flex-1">
                        {plan.features.map((feature, j) => (
                          <div key={j} className="flex items-start gap-3">
                            <Check className="h-4 w-4 text-green-500 flex-shrink-0 mt-0.5" />
                            <span className="text-sm text-foreground/80 leading-snug">{feature}</span>
                          </div>
                        ))}

                        {plan.locked.length > 0 && (
                          <div className="pt-4 mt-4 border-t border-dashed border-border">
                            <p className="text-xs font-semibold text-muted-foreground mb-2">Unavailable in this plan:</p>
                            {plan.locked.map((item, j) => (
                              <div key={j} className="flex items-start gap-3 opacity-50">
                                <Lock className="h-3.5 w-3.5 text-muted-foreground flex-shrink-0 mt-0.5" />
                                <span className="text-sm text-muted-foreground">{item}</span>
                              </div>
                            ))}
                          </div>
                        )}
                      </div>

                      <div className="mt-auto space-y-3">
                        <Button
                          className={`w-full py-6 text-base font-semibold transition-all duration-200 shadow-md ${plan.popular ? "shadow-primary/25" : ""}`}
                          variant={plan.popular ? "default" : "outline"}
                          onClick={() => setLocation("/signup")}
                        >
                          {plan.cta}
                        </Button>
                        {plan.secondaryLink && (
                          <button className="w-full text-xs text-muted-foreground hover:text-primary transition-colors">
                            {plan.secondaryLink}
                          </button>
                        )}
                      </div>
                    </CardContent>
                  </Card>
                </motion.div>
              ))}
            </div>
          </TooltipProvider>
        </div>
      </section>

      {/* FAQ Section */}
      <section className="py-24">
        <div className="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-display font-bold mb-4">
              Frequently Asked Questions
            </h2>
            <p className="text-muted-foreground">Common questions about our audit platform</p>
          </div>
          <Accordion type="single" collapsible className="space-y-4">
            {faqs.map((faq, i) => (
              <AccordionItem key={i} value={`faq-${i}`} className="border rounded-xl px-6 bg-card transition-all hover:border-primary/50">
                <AccordionTrigger className="text-left font-medium text-foreground py-4 hover:no-underline">
                  {faq.question}
                </AccordionTrigger>
                <AccordionContent className="text-muted-foreground pb-4 leading-relaxed">
                  {faq.answer}
                </AccordionContent>
              </AccordionItem>
            ))}
          </Accordion>
        </div>
      </section>

      {/* Contact Section */}
      <section id="contact" className="py-24 bg-slate-950 relative overflow-hidden">
        <div className="absolute top-0 right-0 w-[600px] h-[600px] bg-primary/5 rounded-full blur-[120px] translate-x-1/3 -translate-y-1/2" />

        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
          <div className="grid lg:grid-cols-2 gap-16 items-start">
            {/* Left Column: Contact Info */}
            <div>
              <div className="inline-flex items-center justify-center px-3 py-1 rounded-full border border-slate-800 bg-slate-900/50 text-slate-300 text-xs font-medium mb-6">
                Contact
              </div>
              <h2 className="text-4xl md:text-5xl font-display font-bold text-white mb-6">
                Get in Touch
              </h2>
              <p className="text-slate-400 text-lg mb-12 max-w-md">
                Have questions about MiAuditOps? We're here to help.
              </p>

              <div className="space-y-6 mb-12">
                <div className="flex items-start gap-4 p-4 rounded-xl bg-slate-900/50 border border-slate-800 transition-colors hover:border-slate-700">
                  <div className="w-10 h-10 rounded-lg bg-blue-500/10 flex items-center justify-center flex-shrink-0">
                    <Mail className="w-5 h-5 text-blue-500" />
                  </div>
                  <div>
                    <div className="text-sm font-medium text-slate-400 mb-1">Email</div>
                    <div className="text-white font-semibold">support@miauditops.com</div>
                  </div>
                </div>

                <div className="flex items-start gap-4 p-4 rounded-xl bg-slate-900/50 border border-slate-800 transition-colors hover:border-slate-700">
                  <div className="w-10 h-10 rounded-lg bg-blue-500/10 flex items-center justify-center flex-shrink-0">
                    <Phone className="w-5 h-5 text-blue-500" />
                  </div>
                  <div>
                    <div className="text-sm font-medium text-slate-400 mb-1">Phone</div>
                    <div className="text-white font-semibold">+234 800 123 4567</div>
                  </div>
                </div>

                <div className="flex items-start gap-4 p-4 rounded-xl bg-slate-900/50 border border-slate-800 transition-colors hover:border-slate-700">
                  <div className="w-10 h-10 rounded-lg bg-blue-500/10 flex items-center justify-center flex-shrink-0">
                    <MapPin className="w-5 h-5 text-blue-500" />
                  </div>
                  <div>
                    <div className="text-sm font-medium text-slate-400 mb-1">Office</div>
                    <div className="text-white font-semibold">Lagos, Nigeria</div>
                  </div>
                </div>
              </div>

              <Button variant="outline" className="border-slate-700 text-slate-300 hover:text-white hover:bg-slate-800 gap-2">
                Contact Support <ArrowRight className="w-4 h-4" />
              </Button>
            </div>

            {/* Right Column: Contact Form */}
            <div className="bg-slate-900 rounded-2xl p-8 border border-slate-800 shadow-2xl">
              <div className="mb-8">
                <h3 className="text-xl font-bold text-white mb-2">Send us a message</h3>
                <p className="text-slate-400 text-sm">We'll respond within 24 hours.</p>
              </div>

              <form className="space-y-6" onSubmit={(e) => e.preventDefault()}>
                <div className="space-y-2">
                  <Label htmlFor="name" className="text-slate-300">Name</Label>
                  <input
                    id="name"
                    type="text"
                    placeholder="Your name"
                    className="flex h-10 w-full rounded-md border border-slate-800 bg-slate-950 px-3 py-2 text-sm text-white placeholder:text-slate-600 focus:outline-none focus:ring-2 focus:ring-blue-500/50 focus:border-blue-500 disabled:cursor-not-allowed disabled:opacity-50"
                  />
                </div>

                <div className="space-y-2">
                  <Label htmlFor="email" className="text-slate-300">Email</Label>
                  <input
                    id="email"
                    type="email"
                    placeholder="you@example.com"
                    className="flex h-10 w-full rounded-md border border-slate-800 bg-slate-950 px-3 py-2 text-sm text-white placeholder:text-slate-600 focus:outline-none focus:ring-2 focus:ring-blue-500/50 focus:border-blue-500 disabled:cursor-not-allowed disabled:opacity-50"
                  />
                </div>

                <div className="space-y-2">
                  <Label htmlFor="message" className="text-slate-300">Message</Label>
                  <textarea
                    id="message"
                    placeholder="How can we help?"
                    rows={4}
                    className="flex min-h-[80px] w-full rounded-md border border-slate-800 bg-slate-950 px-3 py-2 text-sm text-white placeholder:text-slate-600 focus:outline-none focus:ring-2 focus:ring-blue-500/50 focus:border-blue-500 disabled:cursor-not-allowed disabled:opacity-50 resize-none"
                  />
                </div>

                <Button className="w-full bg-blue-600 hover:bg-blue-700 text-white font-medium py-6">
                  Send Message
                </Button>
              </form>
            </div>
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-24 bg-primary text-primary-foreground relative overflow-hidden">
        <div className="absolute inset-0 bg-[url('https://www.transparenttextures.com/patterns/cubes.png')] opacity-10" />
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10 text-center">
          <h2 className="text-3xl md:text-5xl font-bold mb-6">Ready to Professionalize Your Audits?</h2>
          <p className="text-xl text-primary-foreground/90 mb-10 max-w-2xl mx-auto">
            Join dozens of auditors and hospitality businesses using MiAuditOps to secure their revenue.
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Button size="lg" variant="secondary" onClick={() => setLocation("/signup")} className="h-14 px-8 text-lg text-primary shadow-xl">
              Get Started for Free
            </Button>
            <Button size="lg" variant="outline" className="h-14 px-8 text-lg border-primary-foreground/30 text-primary-foreground hover:bg-primary-foreground/10">
              Contact Sales
            </Button>
          </div>
        </div>
      </section>
    </PublicLayout>
  );
}
