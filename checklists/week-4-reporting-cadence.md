# Week 4 — Reporting Cadence & Client Handoff Checklist

> **Goal:** Transition from onboarding mode to steady-state operations. By end of Week 4, your client should know exactly what they'll receive from you every month, how to read it, and who to call when something goes wrong.

---

## Monthly Status Report Setup

- [ ] Draft first monthly status report using client data collected in Weeks 1–3 ([template →](../templates/monthly-status-report.md))
- [ ] Customize report branding: your logo, client name, report date — no generic vendor branding visible to client
- [ ] Confirm key metrics section includes: open findings count, patch compliance %, phishing click rate, incidents this period
- [ ] Review report with internal team before sending to client — a typo in the first report is a first impression problem
- [ ] Schedule recurring report delivery date: same day each month, non-negotiable
- [ ] Configure automated report generation if your tooling supports it (HailBytes ASM and SAT auto-generate underlying data)

---

## SLA Framework — Define and Document

- [ ] Define ticket priority levels: P1 (Critical/active incident), P2 (High risk/remediation needed), P3 (Medium/standard queue), P4 (Low/informational)
- [ ] Document response time targets per priority level:
  - P1: initial acknowledgment within 1 hour, ongoing updates every 30 minutes
  - P2: initial response within 4 hours, resolution target within 48 hours
  - P3: initial response within 1 business day, resolution target within 10 business days
  - P4: monthly review, no SLA for resolution
- [ ] Confirm SLA targets are realistic for your current team size — don't promise P1 response in 15 minutes if you're a 3-person team
- [ ] Define escalation path: what happens when SLA is missed?
- [ ] Get client sign-off on SLA framework — even a simple email confirmation counts
- [ ] Document after-hours coverage model: who gets paged for P1 at 2am? Does the client know how to reach them?

---

## Client Dashboard Access

- [ ] Create client portal access if your tooling supports it
- [ ] Scope permissions appropriately: read-only by default, discuss expanded access if client's technical team needs it
- [ ] Send access credentials and a 10-minute walkthrough video or screen share
- [ ] Confirm client POC can log in and navigate to: open findings, remediation status, recent phishing campaign results
- [ ] Document who at the client side has portal access (and who shouldn't)

---

## Escalation Path Documentation

- [ ] Document MSSP escalation path: Tier 1 analyst → Senior analyst → MSSP technical lead → MSSP management
- [ ] Document client escalation path: day-to-day IT contact → IT manager → CISO/security sponsor → Executive sponsor
- [ ] Confirm all contact information is current and in the shared documentation space
- [ ] Define: what triggers an emergency call vs. a ticket vs. an email?
- [ ] Confirm client understands they should not call the MSSP's main number for P1 incidents — give them the direct paging mechanism

---

## Client POC Training

- [ ] Schedule a 30-minute "how to read your reports" walkthrough with the client IT lead
- [ ] Walk through: how to read the monthly status report, what the phishing metrics mean, how to interpret ASM finding severities
- [ ] Confirm client knows how to submit a ticket, escalate a ticket, and reach you after hours
- [ ] Leave the client with a one-page "quick reference" card: who to contact, when to contact them, and what to expect in response

---

## Open Remediation Tracking

- [ ] Compile all open findings from Weeks 1–3 into a single remediation tracker
- [ ] Assign each finding: owner (MSSP vs. client IT), priority, target remediation date
- [ ] Send remediation tracker to client with explicit ask: "Please confirm ownership assignments are correct"
- [ ] Schedule first remediation review: 2 weeks out, 30-minute call, go through the tracker together
- [ ] Set up automated reminders for stale remediation items (anything open 30+ days should have a follow-up)

---

## QBR Scheduling

- [ ] Schedule first Quarterly Business Review: approximately Day 90 from engagement start
- [ ] Confirm QBR attendees: MSSP PM/account lead, client IT lead, client business sponsor
- [ ] Send QBR agenda template in advance ([template →](../templates/quarterly-business-review.md))
- [ ] Brief internal team on QBR format and what data they need to prepare

---

## Suggested Deliverables

- **Monthly Status Report v1** — first report covering onboarding period, delivered to client
- **SLA Agreement** — signed or email-confirmed SLA document
- **Remediation Tracker** — shared document with all open findings, owners, and target dates
- **Client Quick Reference Card** — one-page contact sheet and escalation guide

---

## Common Pitfalls

**❌ Sending reports without a walkthrough call.**
The first report will have findings the client doesn't understand. If you send it without a call, you'll get 20 questions via email, a confused client, and a frustrated relationship. Walk through the first report live — 20 minutes, every time.

**❌ Defining SLAs that are too aggressive for your team size.**
A 3-person MSSP that promises P1 response in 15 minutes and 24/7 coverage is a call-back at 3am from a client who expects someone to answer. Set SLAs that your team can actually meet and price them accordingly.

**❌ Skipping the remediation tracker.**
Findings that aren't tracked get forgotten. Findings that get forgotten resurface as incidents. The remediation tracker is your accountability mechanism — use it.

**❌ Letting the first QBR be a surprise.**
A QBR where the client didn't know what to expect and wasn't prepared to discuss the right topics is a waste of everyone's time. Send the agenda and expected topics 2 weeks in advance.

**❌ Creating client portal access without scoping permissions.**
A client IT person with read-write access to the ASM platform who accidentally modifies scan scope or suppresses findings is a real problem. Read-only by default, expanded access by deliberate decision.

---

## Doing This With HailBytes? Here's the Shortcut →

HailBytes generates monthly per-client reports automatically — phishing campaign results, ASM finding trends, and compliance status — formatted and ready to send. No manual assembly. Schedule it once; it delivers on the date you set.

[HailBytes MSSP reporting →](https://hailbytes.com/mssp)
