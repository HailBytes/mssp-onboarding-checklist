# SIEM vs. Managed Detection: An Honest Cost Comparison for MSSPs

> **Decision type:** Foundational infrastructure and delivery model — high switching cost, get this right early
> **Audience:** MSSP owners and technical leads making or revisiting the build vs. buy decision
> **Last reviewed:** 2025

---

## The Question MSSPs Keep Revisiting

"Should we run our own SIEM or use a managed detection service?"

Most MSSPs answer this question wrong at least once. Either they spend 18 months building a SIEM practice and discover the economics don't work at their client count, or they route everything through an MDR provider and eventually realize they've outsourced the core of what their clients are paying them for.

This guide won't tell you there's a universal right answer. There isn't. But it will tell you how to think about it honestly.

---

## What "Build Your Own SIEM" Actually Costs

### Licensing

| Platform | Pricing Model | Realistic Annual Cost (20-client MSSP) |
|----------|---------------|----------------------------------------|
| Splunk (Cloud) | GB/day ingestion | $80,000–$200,000+ depending on log volume |
| Microsoft Sentinel | GB/day + compute | $40,000–$120,000 (highly variable) |
| Elastic (SIEM) | Node/compute-based | $30,000–$80,000 before storage costs |
| Wazuh (OSS) | Free software | $10,000–$30,000 in infrastructure + management |
| LogRhythm / QRadar | Per-EPS tiers | $60,000–$150,000 for MSSP-tier licensing |

> These are directional estimates, not quotes. Your log volume, client mix, and data retention requirements will move these numbers significantly. Get actual quotes from 3 vendors with your real expected log volumes before budgeting.

### People

A real SIEM operation requires:

- **SIEM engineer / content developer:** Writing detection rules, maintaining parsers, tuning correlation logic. Budget $90k–$130k/year for a competent hire.
- **SOC analysts:** Triaging alerts. One analyst can realistically handle 5–10 clients depending on alert volume and complexity. Budget $55k–$75k/year per analyst.
- **Incident responder on-call:** For after-hours coverage. Either overtime for analysts (expensive) or a tiered on-call structure (complex).

For a 20-client MSSP: expect minimum 1 SIEM engineer + 2–3 analysts = **$250,000–$380,000/year in personnel alone** before benefits or turnover costs.

### Infrastructure and Ops

- Log storage (90-day hot, 1-year warm, 7-year cold): $15,000–$40,000/year
- Log shipper infrastructure and maintenance: $5,000–$15,000/year
- Backup, DR, and availability engineering: $5,000–$20,000/year

### Total DIY SIEM Cost (20-client MSSP, mid-range estimate)

| Component | Annual Cost |
|-----------|-------------|
| Licensing | $60,000 |
| Personnel (1 engineer + 2 analysts) | $300,000 |
| Infrastructure | $25,000 |
| **Total** | **~$385,000/year** |

To break even, you need $385,000 in SIEM-attributed service revenue. At 20 clients, that's **$19,250/client/year** in SIEM cost alone, before your margin.

---

## What Managed Detection Actually Costs

MDR providers offload SIEM infrastructure, content, and first-tier analysis to a third party. You receive alerts and escalations; they do the detection engineering.

### MDR Pricing Ranges (2025)

| Tier | What You Get | Annual Cost (20 clients, ~250 endpoints each) |
|------|-------------|----------------------------------------------|
| Basic MDR | 24/7 monitoring, alert triage, email escalation | $120,000–$200,000 |
| Mid-tier MDR | Above + threat hunting, IR support, monthly reports | $200,000–$350,000 |
| Premium MDR | Above + dedicated analyst, custom detection, SLA guarantees | $350,000–$600,000+ |

> Pricing scales primarily with endpoint count and log sources. Get quotes from Huntress, Arctic Wolf, Red Canary, or eSentire with your actual numbers.

### What MDR Doesn't Give You

- **Detection control.** Their rules, their logic. Custom detection for a client-specific threat requires a feature request.
- **Client differentiation.** Your MDR provider's detection capability is the same for all your competitors using that provider. You're reselling a commodity.
- **Margin.** MDR providers know MSSPs resell them. Margins on resold MDR are typically 15–30%.
- **Client relationship depth.** When something happens at 2am, your client wants to reach you — not hear "our MDR partner is investigating."

---

## The Honest Summary: When to DIY vs. Outsource

### DIY SIEM makes sense when:
- You have **30+ clients** — fixed costs amortize across enough revenue
- You have **existing SOC talent** you can retain
- **Client contract value is high enough** to absorb overhead (average client at $3,000+/month)
- Your client mix requires **custom detection logic** — compliance-driven, niche industry threats, or high-value targets
- You're building toward a long-term **MDR-as-a-service** offering

### Managed Detection makes sense when:
- You're **under 15 clients** and building toward scale — DIY SIEM fixed costs eat your margin
- Your team is **strong on delivery but thin on detection engineering** — don't fake expertise you don't have
- Your clients are mostly **SMBs** where standard MDR detection logic covers the realistic threat profile
- You need **24/7 coverage** without the headcount cost of an internal on-call rotation
- You're entering the market and need to **prove the service model before building the stack**

### The Hybrid Approach (Recommended for Growing MSSPs)

The approach that works for most MSSPs in the 10–30 client range:

1. **Start with a mid-tier MDR provider** for 24/7 monitoring and first-tier triage
2. **Layer a SIEM for correlation and client-specific detection** — Elastic or Wazuh keeps licensing costs manageable
3. **Build one or two detection engineers** who write custom detection logic on top of MDR's base coverage
4. **Own the client relationship** — MDR is your engine, not your face
5. **Migrate to full DIY** when client count and revenue justify it — typically around 25–30 clients with contracts averaging $2,500+/month

This hybrid model costs roughly $180,000–$250,000/year (mid-tier MDR + one detection engineer + lightweight SIEM), and positions you to deliver differentiated service without the full DIY overhead.

---

## Evaluation Questions to Ask MDR Providers

1. What is the mean time to escalation for a confirmed incident?
2. Can I add custom detection rules? At what cost and turnaround?
3. How is per-client reporting structured for MSSP resellers?
4. What are the terms for offboarding a client if they churn?
5. Who is our named point of contact, and what's their caseload?
6. What does your SLA look like for a critical alert at 3am on a Sunday?

---

## A Note on HailBytes ASM

This guide is intentionally not a HailBytes product section — build-vs-buy on SIEM/MDR is an independent decision that deserves honest analysis regardless of which ASM or SAT tool you're using.

That said: **HailBytes ASM feeds cleanly into any SIEM via its API**, including Elastic, Splunk, Sentinel, QRadar, and Wazuh. ASM findings, new asset discoveries, and exposure events can be pushed as structured events into your SIEM pipeline without custom integration work. The combination of continuous external exposure data and internal log correlation catches things neither catches alone.

API documentation: [hailbytes.com](https://hailbytes.com) → Developer Docs → SIEM Integration

---

## Further Reading

- [SANS SIEM Survey](https://www.sans.org/) — real-world SIEM deployment data
- [Huntress MSSP Program](https://www.huntress.com/partners) — one of the more MSSP-honest MDR offerings
- [ASM Tool Selection Guide](asm-tool-selection.md) — related decision: picking your external ASM layer

---

> **Corrections and additions welcome.** Pricing data ages quickly. If you have current data from a vendor evaluation, open a PR with the numbers and date.
