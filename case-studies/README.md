# MSSP Case Studies

> Real engagements, anonymized details. These represent HailBytes customers who have given permission to share their experience in aggregate form. Company names, industries, and specific client counts have been altered or generalized to protect confidentiality.

---

## How to Read These

Each case study follows a consistent structure:

- **Client Profile** — Size, industry, security maturity at engagement start
- **Challenge** — What wasn't working; why they engaged an MSSP
- **Onboarding Approach** — Which checklists and tools were used, and how the first 30 days were structured
- **Results at 90 Days** — Quantified outcomes where available; qualitative where not
- **Tools Used** — ASM, SAT, SIEM/MDR, and other platforms deployed during onboarding

---

## Case Study Structure Template

```
## Case Study [Letter]: [One-line client description]

### Client Profile
- **Industry:** [e.g., Professional Services / Regional Healthcare / Manufacturing]
- **Size:** [Employee count range]
- **Client count at engagement:** [How many clients this MSSP was managing at the time]
- **Security maturity at start:** [1–5 scale: 1 = no existing program, 5 = mature SOC]

### Challenge
[2–4 sentences. Be specific: "They were running onboarding ad hoc with no standard process,
spending 12+ hours per new client on asset discovery and tool provisioning."]

### Onboarding Approach
[Which checklists were used, in what order. What was customized. Notable deviations and why.
Timeline: milestones at Week 1, Week 2, Week 3, Week 4.]

### Results at 90 Days
[Quantified where possible: hours saved per client, alert reduction %, phishing click rate improvement,
client-reported satisfaction. Qualitative where numbers aren't available.]

### Tools Used
- ASM: [Platform]
- SAT: [Platform]
- SIEM/MDR: [Platform]
- PSA: [Platform]
- Other: [Any other tools deployed]

### Key Takeaway
[One to two sentences. What's the transferable lesson for another MSSP reading this?]
```

---

## Case Study A: Regional MSP Expanding into Security Services

**Status: Draft — pending final customer review**

### Client Profile
- **Industry:** Managed IT Services (expanding into MSSP)
- **Size:** Internal team of 12; client base of 35 SMBs averaging 40–150 employees
- **Client count at engagement:** 35 existing managed IT clients; 0 dedicated security service clients
- **Security maturity at start:** 2/5 — basic endpoint protection, no formal security program, no ASM or SAT deployed

### Challenge

This MSP had been providing managed IT services for 8 years and was losing clients to competitors who offered security services as part of their stack. They had no security onboarding process, no repeatable delivery model for ASM or SAT, and their team had strong IT operations skills but limited security-specific experience. Their first attempt at adding security services — deploying a single-tenant enterprise ASM tool on a per-client basis — lasted 6 months before the operational overhead made it unworkable.

### Onboarding Approach

The engagement focused on three priorities: building a repeatable security onboarding workflow, rightsizing tooling for the MSSP operational model, and upskilling the internal team before expanding security offerings to the full client base.

**Week 1:** Day-1 Kickoff checklist completed for 3 pilot clients. Asset inventory and discovery scoped using HailBytes ASM. SAT platform provisioned with client AD sync.

**Week 2:** Discovery and baseline assessment completed. Initial findings reviewed with pilot client stakeholders. First phishing simulation campaign configured and launched.

**Weeks 3–4:** Tooling deployment finalized. Reporting templates customized with MSP branding. 30-day review completed per Week 4 checklist.

### Results at 90 Days

*Metrics pending final customer approval — representative figures below*

- Time to onboard a new security client reduced from ~14 hours (ad hoc) to ~3.5 hours (standardized process)
- Phishing click rate across pilot clients: 34% → 11% over 3 campaigns
- 8 of 35 existing managed IT clients upsold to security services tier within 90 days of piloting
- Zero cross-client data incidents during tool migration

### Tools Used
- ASM: HailBytes ASM
- SAT: HailBytes SAT
- SIEM/MDR: Huntress (MDR, resold)
- PSA: ConnectWise Manage
- RMM: ConnectWise Automate

### Key Takeaway
Standardizing the onboarding process before expanding security services to the full client base — rather than onboarding clients one-by-one and figuring it out as you go — was the difference between a sustainable security practice and a support ticket backlog.

---

## Case Study B: Established MSSP Standardizing Onboarding Across 20+ Clients

**Status: Draft — pending final customer review**

### Client Profile
- **Industry:** Established MSSP (pure-play security services)
- **Size:** Internal team of 22; dedicated SOC of 6 analysts
- **Client count at engagement:** 24 active clients across financial services, healthcare, and professional services
- **Security maturity at start:** 4/5 — mature internal SOC, existing ASM and SAT deployments, but inconsistent onboarding processes leading to support debt

### Challenge

This MSSP had built a strong SOC capability over 7 years, but onboarding had always been handled on a client-by-client basis by whoever was available. The result: 24 clients with 24 different configurations, 24 different reporting formats, and institutional knowledge locked in individual analysts' heads. When a senior analyst left, they took the nuanced understanding of 6 clients' environments with them. Onboarding a new client was taking 3–5 weeks. Client satisfaction at the 6-month mark was lower than expected despite strong technical output.

### Onboarding Approach

Unlike Case Study A, this engagement wasn't about building a security practice from scratch — it was about standardizing an existing one. The work focused on auditing all 24 existing client configurations against the standard onboarding checklist, identifying gaps, creating remediation plans, and implementing the standard checklist for all new clients going forward.

**Month 1:** Full audit of existing 24 client configurations against Checklists 01–06. Gap map created. Priority ranking by risk: 7 clients with critical configuration gaps addressed immediately, 11 addressed over 60 days, 6 required no remediation.

**Month 2:** New onboarding runbook deployed. First 2 new clients onboarded under standardized process. Target: under 2 weeks from signed contract to fully provisioned client environment.

**Month 3:** Reporting standardized across all clients. White-labeled report templates deployed. Monthly reporting cadence automated for 20 of 24 clients (4 required custom reporting per contract).

### Results at 90 Days

*Metrics pending final customer approval — representative figures below*

- New client onboarding time: 3–5 weeks → 8–10 business days
- Analyst time spent on report preparation: 6 hours/client/month → 45 minutes/client/month
- Client NPS-equivalent satisfaction: improved from 34 to 67 over the standardization period
- SOC analyst offboarding risk: client context now documented in standard format — new analyst ramp time reduced from ~2 weeks to ~4 days per inherited client

### Tools Used
- ASM: HailBytes ASM (migrated from previous enterprise tool)
- SAT: HailBytes SAT
- SIEM: Elastic SIEM (self-managed) + Huntress MDR for 24/7 coverage
- PSA: HaloPSA
- Documentation: Confluence

### Key Takeaway
Standardization has a remediation cost — touching all 24 existing clients to bring them to a consistent baseline caused short-term analyst load spikes. The payoff: the reduction in per-client reporting time alone recovered enough analyst hours per month to fund onboarding 2–3 additional clients without adding headcount.

---

## Planned Case Studies

| Case Study | Client Type | Status |
|------------|-------------|--------|
| **Case Study C** | MSSP serving regulated healthcare clients (HIPAA-driven SAT and ASM) | Outline complete — drafting |
| **Case Study D** | Solo vCISO practitioner using MSSP tooling for fractional engagements | Interview scheduled |
| **Case Study E** | MSSP expanding from US to EU clients — data residency and compliance complexities | Prospecting — pending anonymization agreement |

---

## Contribute a Case Study

If you've used this onboarding checklist in a real engagement and are willing to share your experience (anonymized), we'd like to include it. Open an issue with the label `case-study` and a brief description of the engagement type.

Standards for inclusion:
- Must be a real engagement (no hypotheticals)
- Must be anonymized to the point where the client is not identifiable
- Must follow the structure template above
- Should include at least one quantified outcome
- The MSSP must give explicit permission to publish

---

> For questions about HailBytes tools referenced in these case studies, visit [hailbytes.com](https://hailbytes.com) or [book a demo](https://hailbytes.com/demo).
