# Day 1 — Client Kickoff Checklist

> **Goal:** Establish trust, collect the access and context you need, and leave Day 1 with no ambiguity about who owns what.

---

## Pre-Meeting Prep

- [ ] Review signed contract and SOW — confirm scope, exclusions, and any pre-negotiated SLAs
- [ ] Prepare kickoff agenda ([template →](../templates/client-kickoff-agenda.md))
- [ ] Confirm all internal team members know their role for this engagement
- [ ] Set up shared documentation space (Notion, Confluence, SharePoint — pick one and commit)
- [ ] Create client folder in PSA/ticketing system
- [ ] Prepare access request forms for tools you'll need: EDR console, firewall, AD, cloud portals

---

## Kickoff Call Checklist

- [ ] Introductions: MSSP team + client-side stakeholders (IT lead, security POC, business sponsor)
- [ ] Review and confirm engagement scope — get verbal acknowledgment from the right people
- [ ] Identify primary day-to-day contact vs. escalation contact vs. executive sponsor
- [ ] Document emergency contact information (personal cell numbers for P1 incidents — ask for this now, not after a breach)
- [ ] Confirm business hours, preferred communication channel (Slack, Teams, email), and response time expectations
- [ ] Agree on ticketing process: how does the client log requests? How do they receive updates?
- [ ] Walk through the 30-day onboarding plan — set expectations for what you'll need from them each week
- [ ] Schedule all recurring calls: weekly check-in (Weeks 1–4), monthly cadence post-onboarding
- [ ] Confirm: who has authority to approve firewall changes? DNS changes? New tool deployments?
- [ ] Sign off on engagement scope document before the call ends

---

## Access Provisioning — Request Today

- [ ] Active Directory read access (or equivalent for non-AD environments)
- [ ] Firewall admin access (or read-only + a named contact who can make changes)
- [ ] DNS admin access (or named contact)
- [ ] Cloud console access: AWS/Azure/GCP with appropriate IAM role (read-only to start)
- [ ] EDR/endpoint management console (if client has existing tooling)
- [ ] Microsoft 365 or Google Workspace admin access (for email security visibility)
- [ ] VPN credentials if required to reach internal systems
- [ ] Any existing vulnerability scanner or SIEM access

---

## Documentation — Gather on Day 1

- [ ] Existing network topology diagrams (even outdated ones are useful)
- [ ] Current asset inventory (even a spreadsheet counts)
- [ ] Existing security policies (AUP, incident response, password policy — whatever exists)
- [ ] List of critical business applications and their hosting locations
- [ ] List of known 3rd party vendors with system access
- [ ] Any recent audit, assessment, or pen test reports

---

## Internal Actions Before End of Day 1

- [ ] Create engagement notes document — capture everything said, not just what was agreed
- [ ] Log all access requests in PSA as pending tickets
- [ ] Send follow-up email to client summarizing agreed-upon scope, open items, and next steps
- [ ] Add all recurring calls to both team calendars
- [ ] Set a Day 3 internal check-in to confirm access provisioning is progressing

---

## Suggested Deliverables

- **Engagement Summary Email** — sent to client POC within 4 hours of kickoff call
- **Open Items Log v1** — internal document tracking every outstanding access request and document request
- **Shared Calendar** — recurring meeting schedule visible to both client and MSSP team

---

## Common Pitfalls

**❌ Not getting emergency contact info on Day 1.**
Every MSSP has a story about a P1 incident at 2am where nobody could reach the client's IT lead. Get personal cell numbers on Day 1 — it's not awkward if you frame it as part of the engagement setup.

**❌ Assuming IT and security teams are aligned.**
The person who signed the contract and the person who manages the firewall are often not talking to each other. Identify both, get both in the room, and surface any misalignment early.

**❌ Not clarifying who owns what.**
Who approves firewall changes? DNS changes? EDR policy changes? If you don't know, you'll find out mid-incident. That's a bad time to find out.

**❌ Letting access requests drift.**
Access requests submitted on Day 1 that aren't followed up on by Day 3 will take 2–3 weeks to arrive. Treat them like P2 tickets.

**❌ Treating scope as a formality.**
Verbal scope drift is the #1 source of MSSP margin erosion. Get scope acknowledged on the kickoff call and in the follow-up email.

---

## Doing This With HailBytes? Here's the Shortcut →

When you're provisioning the HailBytes multi-tenant dashboard, you can create the client account and begin configuring ASM scope in under 30 minutes. Your client never needs to touch the HailBytes platform directly — all access is managed at the MSSP level.

[Get started with HailBytes MSSP onboarding →](https://hailbytes.com/mssp)
