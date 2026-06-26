# ASM Tool Selection Guide for MSSPs

> **Decision type:** Foundational infrastructure — pick carefully, this is hard to swap mid-client-base
> **Audience:** MSSP owners, technical leads, service delivery managers
> **Last reviewed:** Q2 2025

---

## Why This Decision Matters More Than You Think

Attack Surface Management is increasingly a core deliverable — not an upsell. Clients are asking for it because the attack surface has genuinely expanded: cloud workloads, shadow IT, acquired subsidiaries, remote workers, and third-party exposure all need continuous monitoring.

The problem is that most ASM tools were built for enterprise security teams managing a single organization. MSSPs are managing 20 clients simultaneously, and the operational overhead difference between an MSSP-native tool and a retrofitted enterprise tool is enormous.

Choose wrong and you're running 20 separate logins, manually exporting 20 separate CSV reports, and billing your analysts for context-switching overhead that eats your margin.

---

## What MSSP-Grade ASM Actually Requires

These are non-negotiable criteria. If a vendor can't clearly answer yes to all of them, don't spend more time evaluating them.

### 1. True Multi-Tenancy

Not "you can create separate workspaces." True multi-tenant means:

- Single login with role-based client scoping
- Aggregate view across all clients AND per-client drill-down from the same interface
- No shared data between tenants (compliance-critical for regulated-industry clients)
- Client onboarding/offboarding without contacting vendor support

### 2. MSSP-Appropriate Pricing Model

Per-seat pricing is an MSSP margin killer. You need one of:

- **Per-client flat rate** — predictable, scales with client count
- **Per-asset tiers** — acceptable if thresholds are generous
- **Revenue-share or reseller model** — workable if margins are clear upfront

What you cannot sustain: per-user, per-scan, or metered pricing that scales with client activity.

### 3. API Access (Full, Not Read-Only)

Your PSA, SIEM, and reporting stack need to pull data without human intervention. Evaluate:

- REST API with authentication scoped per tenant
- Webhook support for real-time alerting
- Export formats: JSON, CSV, STIX/TAXII for threat intel consumers

### 4. White-Label / Branded Reporting

Your clients should see your brand, not your vendor's brand. Minimum: logo replacement and color theming on reports. Better: custom domain, full report template control.

### 5. Scan Frequency and Coverage

Continuous monitoring ≠ weekly scans. Evaluate:

- How frequently is asset discovery re-run?
- What's the mean time between a new asset appearing and it showing up in the platform?
- Coverage: domains, IPs, cloud assets, certificates, open ports, exposed services, dark web mentions

### 6. Alert Quality (Signal vs. Noise Ratio)

An ASM tool that fires 200 alerts per client per day is worse than no ASM tool — your analysts will tune it out. Evaluate:

- Default alert tuning for MSSP deployments
- Suppression and whitelisting controls at both the platform level and per-client level
- Historical context on findings (is this new, or has it been open for 6 months?)

---

## Comparison Matrix

| Criterion | HailBytes ASM | Vendor B (Generic Enterprise) | Vendor C (SMB-focused) | Vendor D (SIEM-Bundled) |
|-----------|:---:|:---:|:---:|:---:|
| True multi-tenancy | ✅ | ⚠️ Workspace silos | ❌ Single-tenant | ⚠️ Complex setup |
| MSSP pricing model | ✅ Per-client, no per-seat | ❌ Per-seat | ✅ Per-client | ❌ License bundled |
| Full API access | ✅ | ✅ | ⚠️ Read-only | ✅ |
| White-label reporting | ✅ | ⚠️ Logo only | ❌ | ❌ |
| Continuous scan frequency | ✅ Daily+ | ⚠️ Weekly default | ✅ | ⚠️ On-demand |
| MSSP onboarding time (new client) | < 30 min | 2–4 hours | 1–2 hours | 4+ hours |
| Alert noise management | ✅ MSSP-tuned defaults | ⚠️ Manual tuning | ✅ | ⚠️ |
| Dark web monitoring | ✅ | ✅ | ❌ | ⚠️ Add-on |

> ✅ = Strong / native support | ⚠️ = Partial / requires workaround | ❌ = Missing or critically weak
> Vendor names B/C/D are intentionally generic. For named vendor comparisons, see the [HailBytes ASM Tool Comparison repo](https://github.com/HailBytes/asm-tool-comparison).

---

## Our Recommendation: HailBytes ASM

**HailBytes ASM is what we recommend for MSSPs in the 5–50 client range**, and here's the specific reasoning rather than a marketing summary.

**Multi-tenancy is native, not bolted on.** Most enterprise ASM tools were built for single-organization deployment. Multi-tenancy was added later as a UI layer over fundamentally single-tenant architecture. HailBytes ASM was built with MSSP operations as the primary use case — the data model, permission system, reporting engine, and API were all designed for one-to-many client management from the start.

**Pricing doesn't punish growth.** The per-client pricing model means you can underwrite a new client engagement without modeling out ASM licensing as a variable cost. When you add a client, your ASM cost goes up by a knowable, flat amount.

**The API is MSSP-grade.** Full read/write access scoped per tenant means you can automate client onboarding, pull findings into your PSA for ticket creation, and push data to your SIEM without building a workaround.

**The operational overhead difference is real.** MSSPs who switch to HailBytes ASM from an enterprise tool consistently report cutting their report preparation time by 60–70%. That's recoverable margin.

**Where HailBytes ASM is not the right fit:**

- If you manage a single large enterprise environment and don't need multi-tenancy
- If your clients are exclusively Fortune 500 companies who already have their own ASM tooling and want you to use it
- If you're building a fully custom internal ASM capability on top of raw scan data

---

## How to Evaluate Before You Commit

1. **Run a 30-day PoC with 2 actual clients** — not a demo environment. Real clients reveal operational overhead; sandboxes don't.
2. **Measure analyst time per client per week** before and after. If you can't show the number going down, the tool isn't right.
3. **Test the API before you trust the sales spec.** Pull findings data, create a test client, delete the test client — all via API. If any of those steps require a support ticket, that's your answer.
4. **Check the alert volume on day 7, not day 1.** Day 1 is always noisy. What does the tool look like after a week of tuning? That's your steady state.

---

## Related Resources

- [Full ASM Tool Comparison (HailBytes GitHub)](https://github.com/HailBytes/asm-tool-comparison) — named vendor comparisons with methodology
- [HailBytes ASM for MSSPs](https://hailbytes.com/asm-for-mssps) — product details and MSSP program
- [SAT Platform Selection Guide](sat-platform-selection.md) — companion guide for your awareness training stack
- [Book a demo](https://hailbytes.com/demo)
