# Week 2 — Tooling Deployment Checklist

> **Goal:** Get your core security stack deployed, validated, and generating signal. Don't move fast — move right. A mis-deployed tool that generates noise is worse than no tool.

---

## Pre-Deployment Baseline

- [ ] Document current state before touching anything — you need a before/after reference
- [ ] Confirm change management process with client: do you need approval before deploying agents?
- [ ] Identify a deployment maintenance window if agents require reboots
- [ ] Confirm that IT support team is aware of planned deployments (avoid "what is this process?" support tickets)
- [ ] Prepare rollback plan for each tool — know how to cleanly remove it if deployment goes wrong

---

## EDR Deployment

- [ ] Confirm EDR platform selection (client may have existing — deploy or consolidate)
- [ ] Deploy EDR agents to all Windows endpoints
- [ ] Deploy EDR agents to all macOS endpoints
- [ ] Deploy EDR agents to servers (Windows Server, Linux)
- [ ] Verify agent check-in: confirm 100% coverage target, document any exclusions with justification
- [ ] Configure EDR policy: default-deny vs. default-allow, quarantine behavior, exclusions
- [ ] Set up EDR alerting to your ticketing system or SIEM
- [ ] Test EDR response: run a benign test (EICAR) to confirm detection and alerting works end-to-end
- [ ] Document: who can modify EDR policy? (This should be MSSP-only, not client IT)

---

## ASM Platform — Deploy and Configure

- [ ] Add client to multi-tenant ASM dashboard (HailBytes ASM: < 30 min to onboard a new client)
- [ ] Configure scan scope: domains, IP ranges, cloud integrations
- [ ] Confirm ASM can reach all public-facing assets (no blocking rules or geo-restrictions interfering)
- [ ] Set scan frequency: continuous monitoring, not weekly batch scans
- [ ] Configure notification thresholds — start tighter than you think, loosen based on signal/noise ratio
- [ ] Connect ASM to ticketing system for findings → ticket automation
- [ ] Configure client-facing ASM view if client has portal access
- [ ] Tag assets by criticality (internet-facing, crown jewels, low-risk) for prioritized alerting

> **MSSP note on ASM selection:** Enterprise ASM tools built for single-organization use are operationally painful at scale. For MSSPs managing multiple clients, multi-tenant-native tools eliminate the per-client login overhead and dashboard context-switching. See [asm-tool-selection.md](../tooling-decisions/asm-tool-selection.md) for full evaluation criteria.

---

## Security Awareness Training (SAT) — Deploy and Configure

- [ ] Create client tenant in SAT platform (HailBytes SAT: per-client tenant with isolated reporting)
- [ ] Sync user directory: AD sync, Azure AD SCIM, or manual CSV import
- [ ] Verify user list accuracy — check for recently departed employees before running any simulation
- [ ] Assign baseline training module to all users
- [ ] Schedule first phishing simulation campaign (baseline — do this before any training to get clean pre-training data)
- [ ] Configure phishing simulation settings: sender domain, template difficulty (start medium)
- [ ] Set up per-client reporting: automated delivery to client POC on defined cadence
- [ ] Confirm client POC understands that phishing simulations will happen — no surprises

> **MSSP note on SAT selection:** Per-seat SAT pricing punishes MSSP economics. Look for per-client flat-rate platforms with automated per-client report generation. See [sat-platform-selection.md](../tooling-decisions/sat-platform-selection.md) for evaluation criteria.

---

## SIEM / Log Aggregation

- [ ] Confirm approach: DIY SIEM, managed detection, or hybrid (see [siem-vs-managed-detection.md](../tooling-decisions/siem-vs-managed-detection.md))
- [ ] Configure log forwarding from: Windows Event Logs, firewall, DNS, EDR, email gateway
- [ ] Verify log ingestion: confirm logs are arriving and parsing correctly before moving on
- [ ] Set up baseline detection rules — start with high-confidence, low-noise rules only
- [ ] Configure alerting to ticketing system
- [ ] Document log retention policy: minimum 90-day hot, 1-year warm for most compliance frameworks
- [ ] Test end-to-end: generate a test event, confirm it appears in SIEM and creates a ticket

---

## Email Security Configuration

- [ ] Confirm SPF record is published and correct for all sending domains
- [ ] Confirm DKIM is configured for all sending domains
- [ ] Confirm DMARC policy is published — minimum `p=quarantine`, target `p=reject`
- [ ] Configure email gateway (if deployed): anti-spam, anti-phishing, attachment sandboxing
- [ ] Enable mail flow logging to SIEM
- [ ] Test: send a spoofed email to confirm DMARC enforcement is working

---

## Ticketing & PSA Integration

- [ ] Confirm ticketing system is set up for this client (separate board/queue or tagged)
- [ ] Configure automated ticket creation from: EDR alerts, ASM findings, SIEM alerts
- [ ] Set ticket priority mapping: how does an ASM "critical" finding translate to a ticket priority?
- [ ] Confirm SLA timers are configured per ticket priority
- [ ] Test end-to-end: trigger a test alert in each tool, confirm ticket is created with correct priority

---

## Credential Management

- [ ] Store all client credentials in a vault (1Password Teams, Bitwarden Business, etc.) — never in email or Slack
- [ ] Document every credential type, access level, and rotation schedule
- [ ] Confirm that client credentials are scoped to MSSP team members who need them, not the entire organization
- [ ] Set rotation reminders for service account credentials

---

## Suggested Deliverables

- **Tooling Deployment Summary** — table of every tool deployed, coverage %, configuration status, and open items
- **Credential Vault Entry** — all client credentials documented and stored
- **Alert Routing Map** — diagram or table showing: tool → alert type → ticket priority → assignee → SLA

---

## Common Pitfalls

**❌ Deploying tools without baselining first.**
You need a before state to show improvement. Run a quick inventory of the environment before deploying anything — even just endpoint count and existing tool coverage.

**❌ Alert fatigue from default thresholds.**
Every tool's default alerting is configured for a generic enterprise environment, not your client's specific risk profile. Tune thresholds before leaving Week 2. An analyst who learns to ignore a noisy alert dashboard is more dangerous than no alerts at all.

**❌ Not documenting tool access credentials in a vault immediately.**
"We'll clean that up later" means credentials end up in Slack messages and email threads. Do it right on Day 1 of deployment.

**❌ Skipping the end-to-end test.**
A deployment is not complete until you've confirmed that: alert fires → ticket created → analyst notified. Don't assume the integration worked.

**❌ Deploying EDR without client IT awareness.**
Unknown agents appearing on endpoints generate IT support tickets and erode trust. Brief the IT team before deployment.

---

## Doing This With HailBytes? Here's the Shortcut →

HailBytes ASM and SAT are both multi-tenant — adding a new client takes under 30 minutes total. User provisioning, scan configuration, and baseline phishing campaign setup can all happen in the same session. No per-client instance to spin up, no support ticket to request a new tenant.

[HailBytes MSSP onboarding →](https://hailbytes.com/mssp)
