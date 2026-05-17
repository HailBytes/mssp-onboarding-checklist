# Ongoing Monthly Cadence Checklist

> **Goal:** Maintain consistent, defensible security operations across all clients. The difference between a good MSSP and a bad one is whether the cadence holds after Month 3.

---

## Monthly ASM Operations

- [ ] Confirm ASM scans ran on schedule (continuous monitoring should be automatic — verify, don't assume)
- [ ] Review new findings since last month's baseline:
  - [ ] New Critical/High findings: triage immediately, open tickets
  - [ ] New assets discovered: are they expected? If not, flag for client
  - [ ] Resolved findings: confirm resolution is real, not a suppression error
- [ ] Update asset register: add new assets, mark decommissioned assets
- [ ] Review certificate expiration calendar: anything expiring in the next 60 days needs action now
- [ ] Check for new subdomain takeover risks or dangling DNS entries
- [ ] Run suppression review: are any suppressed findings still appropriate to suppress?
- [ ] Prepare ASM delta summary: new findings vs. last month, net improvement/degradation trend

---

## Monthly SAT & Phishing Operations

- [ ] Confirm phishing simulation campaign ran on schedule
- [ ] Pull campaign results: delivery rate, open rate, click rate, credential submission rate, report rate
- [ ] Compare to previous month: is click rate trending down? If not, investigate and adjust training approach
- [ ] Review training completion rates: what % of users have completed assigned modules?
- [ ] Identify repeat offenders (clicked in 3+ consecutive campaigns): these users need targeted intervention, not just more training
- [ ] Assign new training module for the month if applicable
- [ ] Prepare phishing results summary for monthly report: department-level view, trend chart

---

## Patch Compliance Review

- [ ] Pull current patch status from EDR/endpoint management
- [ ] Compare to last month's baseline: has patch compliance improved or degraded?
- [ ] Flag any new Critical/High CVEs published since last month that affect the client's software stack
- [ ] Follow up on any open patch remediation items from prior month
- [ ] For servers: confirm server patching happened on schedule (servers often get missed)
- [ ] Document any endpoints that are consistently behind — there's usually a reason (compatibility issue, unmanaged device, exception request)

---

## Firewall & Network Review

- [ ] Review firewall change log: what changed since last month?
- [ ] Confirm no ad-hoc rules were added without MSSP knowledge
- [ ] Review any new network segments, VPN configurations, or cloud connectivity changes
- [ ] Check for any new services exposed to the internet that weren't there last month

---

## Incident Review

- [ ] Pull all tickets opened this month: incidents, findings, client requests
- [ ] For any incidents: confirm post-incident review was completed
- [ ] Identify any recurring ticket types: these indicate systemic issues, not one-off events
- [ ] Update incident register with any new entries
- [ ] If a P1 or P2 incident occurred: prepare a brief incident summary for the monthly report (even if resolved — transparency builds trust)

---

## Monthly Status Report

- [ ] Compile all monthly data: ASM delta, phishing results, patch compliance, incidents
- [ ] Update key metrics table in report template
- [ ] Write executive summary: 3–5 bullets, non-technical, focused on posture trend and business impact
- [ ] Update open remediation tracker: close resolved items, add new items
- [ ] Note any items requiring client action (approvals, IT owner tasks, budget decisions)
- [ ] Internal review: check for errors, inconsistencies, or metrics that need context before sending
- [ ] Send report to client on scheduled date
- [ ] Schedule or confirm monthly check-in call to walk through the report

---

## Client Check-In Call

- [ ] Review report together: don't assume they read it before the call
- [ ] Review open remediation items: who owns what, what's overdue, what's blocked
- [ ] Identify any upcoming changes at the client that affect your scope: M&A, new office, new cloud project, new software rollout
- [ ] Capture any client concerns or requests — log them in PSA immediately after the call
- [ ] Confirm next month's call date before hanging up

---

## QBR Prep (Quarterly — Month 3, 6, 9, 12)

- [ ] Pull 3-month trend data: ASM finding count trend, phishing click rate trend, patch compliance trend
- [ ] Prepare security posture trend chart (visual, suitable for CISO/VP audience)
- [ ] Calculate ROI metrics: incidents prevented, exposure reduced, compliance posture improvement
- [ ] Draft recommendations for next quarter: top 3 priority items
- [ ] Prepare service delivery review: were SLAs met? Any incidents? Resolution quality?
- [ ] Send QBR agenda to client 2 weeks in advance ([template →](../templates/quarterly-business-review.md))
- [ ] Brief internal team on QBR content before the meeting

---

## Suggested Deliverables

- **Monthly Status Report** — delivered on scheduled date, every month, no exceptions
- **Updated Remediation Tracker** — shared with client at report delivery
- **Monthly Risk Register Update** — internal document tracking risk posture over time

---

## Common Pitfalls

**❌ Letting cadence slip after the honeymoon period.**
The first 3 months of an MSSP engagement get attention. Month 7 is where the report is late, the phishing campaign didn't run, and the client starts wondering what they're paying for. Automate what you can. Build internal SLAs for report delivery.

**❌ Not escalating stale remediation items.**
An open Critical finding that's been in the remediation tracker for 90 days is not just a client problem — it's a liability for you. Document every follow-up. If the client isn't remediating, put it in writing that you've flagged it and they've deferred. Protect yourself.

**❌ Treating the monthly call as optional.**
"We'll just send the report" is the beginning of client churn. The call is where you catch context that doesn't show up in metrics: the client is planning a cloud migration, they had a near-miss, they're unhappy about something. You can't read that in a ticket.

**❌ Sending the same training content every month.**
Phishing click rates plateau when users see the same type of test repeatedly. Rotate templates: try BEC simulations, then OAuth consent phishing, then vendor impersonation. Vary difficulty. Users who get too comfortable with "spotting the phish" in a narrow format get blindsided by real attacks that look different.

**❌ Ignoring repeat phishing offenders.**
The same 5% of users click on every simulation. Standard training doesn't work for them. Targeted 1-on-1 training, conversation with their manager, or supervised computer use are the tools for repeat offenders — not sending them the same module again.

---

## Doing This With HailBytes? Here's the Shortcut →

HailBytes ASM runs on a continuous schedule — you're reviewing new findings, not kicking off a new scan. HailBytes SAT runs phishing campaigns on your configured schedule per client and generates the monthly report data automatically. The monthly cadence is mostly review and synthesis, not manual data collection.

[HailBytes MSSP program →](https://hailbytes.com/mssp)
