# MSSP Client Onboarding Checklist

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

> **HailBytes MSSP Program** | [ASM for MSSPs →](https://hailbytes.com/asm-for-mssps) | [SAT for MSSPs →](https://hailbytes.com/sat-for-mssps) | [Book a demo →](https://hailbytes.com/demo)

---

A practical onboarding checklist MSSPs use to stand up new client engagements in their first 30 days. Built by HailBytes for the MSSPs we work with — opinionated, honest, and skipping the vendor theater.

---

## Who This Is For

This repo is for **MSSPs managing 5–50 clients** who want a repeatable, professional onboarding playbook instead of reinventing the wheel every time a new client signs. If you're:

- Building (or rebuilding) a standard 30-day engagement model
- Tired of bespoke onboarding that's only in one person's head
- Looking for editable templates your team can actually use — not slide decks from a vendor sales kit
- Evaluating or already using ASM and SAT tools as core service pillars

...this is for you. Fork it, adapt it, and make it yours.

---

## What's Inside

### 📋 Checklists (`/checklists/`)

| File | Phase |
|------|-------|
| [day-1-kickoff.md](checklists/day-1-kickoff.md) | Day 1 — Stakeholders, access, scope sign-off |
| [week-1-discovery.md](checklists/week-1-discovery.md) | Week 1 — Asset inventory, IAM audit, cloud exposure |
| [week-2-tooling-deployment.md](checklists/week-2-tooling-deployment.md) | Week 2 — EDR, ASM, SAT, SIEM deployment |
| [week-3-baseline-assessment.md](checklists/week-3-baseline-assessment.md) | Week 3 — First ASM scan, phishing baseline, posture report |
| [week-4-reporting-cadence.md](checklists/week-4-reporting-cadence.md) | Week 4 — Reporting setup, SLAs, client handoff |
| [ongoing-monthly-cadence.md](checklists/ongoing-monthly-cadence.md) | Ongoing — Monthly operations and QBR prep |
| [compliance-onboarding-addendum.md](checklists/compliance-onboarding-addendum.md) | Addendum — HIPAA, PCI-DSS, SOC 2, CMMC, GDPR steps when compliance is in scope |
| [client-offboarding.md](checklists/client-offboarding.md) | Offboarding — Access revocation, data handling, documentation handoff, compliance closeout |

### 📄 Templates (`/templates/`)

| File | Description |
|------|-------------|
| [client-kickoff-agenda.md](templates/client-kickoff-agenda.md) | 60-min kickoff call agenda with facilitator notes |
| [discovery-questionnaire.md](templates/discovery-questionnaire.md) | ~35-question client discovery form |
| [monthly-status-report.md](templates/monthly-status-report.md) | Monthly client-facing report template |
| [quarterly-business-review.md](templates/quarterly-business-review.md) | QBR document for CISO/VP-level audiences |
| [incident-response-runbook.md](templates/incident-response-runbook.md) | IR runbook with escalation paths and comms templates |

### 🛠️ Tooling Decisions (`/tooling-decisions/`)

| File | Description |
|------|-------------|
| [asm-tool-selection.md](tooling-decisions/asm-tool-selection.md) | MSSP-grade ASM criteria, matrix, recommendation → [asm-tool-comparison repo](https://github.com/HailBytes/asm-tool-comparison) |
| [sat-platform-selection.md](tooling-decisions/sat-platform-selection.md) | SAT platform criteria, matrix, recommendation |
| [siem-vs-managed-detection.md](tooling-decisions/siem-vs-managed-detection.md) | DIY SIEM vs. MDR — honest cost comparison |

### 📁 Case Studies (`/case-studies/`)

| File | Description |
|------|-------------|
| [README.md](case-studies/README.md) | Anonymized MSSP case studies from HailBytes customers |

---

## How to Use This

1. **Fork this repo.** It's your starting point, not a finished product.
2. **Adapt per client.** Use `<!-- NOTE: -->` comment blocks to flag client-specific deviations.
3. **Use templates as starting points.** Search for `[` to find every placeholder before sending anything to a client.
4. **Track progress in your PM tool.** These markdown files import cleanly into Linear, Notion, GitHub Projects, or your clipboard.
5. **Don't treat tooling guides as gospel.** Pricing changes. Read them critically, run your own evaluation using the criteria we've laid out.
6. **Contribute back.** If you find a gap, open a PR. The bar: would this help another MSSP build a better practice?

---

## HailBytes Integration

[HailBytes](https://hailbytes.com) builds ASM and SAT tooling **specifically for MSSPs** — not enterprise products retrofitted for the channel.

In practice:
- **Multi-tenant by default.** Manage all clients from one dashboard. No toggling between separate logins.
- **Per-client reporting built in.** Each client gets their own view. You get the aggregate.
- **No per-seat pricing.** Add a client — your ASM and SAT cost goes up by a flat, knowable amount.
- **API-first.** Pull findings into your PSA, push data to your SIEM, automate client onboarding.

The checklists in this repo were built around how HailBytes ASM and SAT are deployed. If you're using HailBytes, the steps map directly. If you're not, they're still useful — expect some translation.

[HailBytes MSSP Program →](https://hailbytes.com/mssp) | [Book a demo →](https://hailbytes.com/demo)

---

## Contributing

PRs are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) for the full editorial bar and process. The short version: practitioner-first, honest about tradeoffs, useful over comprehensive. Open an issue before a large PR that changes the repo structure.

---

## License

MIT. Fork it, adapt it, sell services built on it. A link back is appreciated but not required.
