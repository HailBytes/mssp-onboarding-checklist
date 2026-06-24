# Client Communication Email Templates

Ready-to-send email drafts for each stage of the onboarding engagement. Replace `[BRACKETED]` placeholders before sending.

**Usage notes:**
- Adjust tone to match your relationship with each client (formal vs. conversational).
- CC your internal account lead on all client-facing emails.
- BCC your project management system or forward to your ticket so emails are logged.
- All emails should come from a named person, not a generic `support@` alias.

---

## Day 1 — Kickoff Follow-Up

**Subject:** [CLIENT NAME] Security Onboarding — Kickoff Summary & Next Steps

Hi [SPONSOR FIRST NAME],

Thanks for the time today. Quick summary of what we aligned on and what happens next.

**Scope confirmed:** [2–3 sentence description of agreed scope — e.g., "EDR deployment across 180 Windows endpoints, ASM coverage for your 4 public-facing domains, and monthly phishing simulations starting in Week 3."]

**Access we need from your team by [DATE — Day 3]:**
- [ ] Local admin credentials or Intune/SCCM access for EDR deployment
- [ ] Read-only Azure AD / Active Directory service account
- [ ] DNS management access (or permission to have your IT team apply our TXT records)
- [ ] [Any other access items specific to this client]

**What we're doing this week:**
- External asset discovery across your known domains
- IAM audit — identifying stale accounts, privileged users, MFA gaps
- Full inventory of your current security stack

**Primary contacts confirmed:**
- Your side: [CLIENT POC NAME], [CLIENT POC EMAIL]
- Our side: [MSSP LEAD NAME], [MSSP LEAD EMAIL] — for urgent issues call [PHONE]

We'll send a Week 1 summary by [DATE — Friday of Week 1]. Reply here or ping me directly if anything comes up in the meantime.

[SIGNATURE]

---

## End of Week 1 — Discovery Summary

**Subject:** [CLIENT NAME] Week 1 Discovery Complete — Key Findings

Hi [SPONSOR FIRST NAME],

Week 1 discovery is complete. Here's what we found and what we're doing about it.

**Asset inventory:** We identified [N] external-facing assets across [N] domains, [N] IP ranges, and [N] cloud accounts. [Highlight 1–2 surprises, e.g., "We found 3 subdomains that appear to be forgotten staging environments — we've flagged these for your review."]

**IAM snapshot:** Your Active Directory has [N] user accounts, [N] of which are inactive for 90+ days. We identified [N] accounts with Domain Admin rights — we'll review whether all are intentional in Week 2. MFA enrollment is at [X]% for licensed users.

**Security stack inventory:** [List what's confirmed deployed — e.g., "Defender for Endpoint on Windows, no EDR coverage on macOS workstations, Mimecast on email, no ASM tool currently in place."]

**Open items needing your input:**
1. [Item 1 — e.g., "We couldn't enumerate your AWS accounts — can you send a list of account IDs?"]
2. [Item 2 — e.g., "Three servers are unreachable on the network scan. Are they offline, or is there a firewall rule we should know about?"]

**Week 2 plan:** We begin tool deployment on [DATE]. We'll need [SPECIFIC ACCESS] confirmed before then. No end-user disruption expected — EDR agents install silently.

Let me know if any of the above prompts questions.

[SIGNATURE]

---

## Week 2 — Tooling Deployment Confirmation

**Subject:** [CLIENT NAME] Tool Deployment Complete — Baseline Now Active

Hi [SPONSOR FIRST NAME],

Tooling deployment is complete. Here's where everything stands.

**Deployed and active:**
- **EDR:** [N] of [N] endpoints covered ([%] coverage). [N] endpoints still pending — see note below.
- **ASM:** Continuous monitoring active across [N] domains. First scan results expected within 24 hours.
- **Email security:** SPF [confirmed/updated], DKIM [configured/pending], DMARC policy set to `[p=none / quarantine / reject]`.
- **SAT platform:** [N] user accounts provisioned from your directory. First phishing simulation scheduled for [DATE].

**Pending items:**
- [N] endpoints couldn't be reached for agent deployment — [reason, e.g., "likely offline or VPN-isolated"]. We'll retry on [DATE] and will need your help if machines remain unreachable.
- DMARC is currently in monitoring mode (`p=none`). We'll review telemetry in Week 3 and recommend escalating to quarantine if the data looks clean.

**What you'll notice:**
- EDR may surface quarantine notifications on endpoints. These will come from [TOOL NAME] and are expected.
- Users will receive a SAT enrollment email from [PLATFORM NAME] on [DATE]. We recommend sending your team a heads-up — template below if helpful.

> **Optional internal note to share with your team:**
> *"You'll receive an email from [PLATFORM NAME] this week inviting you to our security awareness training platform. This is legitimate and part of our new security program. Please complete the enrollment when you have a moment. Questions? Contact [IT CONTACT]."*

[SIGNATURE]

---

## Week 3 — Baseline Report Delivery

**Subject:** [CLIENT NAME] Security Baseline Report — [MONTH YEAR]

Hi [SPONSOR FIRST NAME],

Attached is your Baseline Security Posture Report. Here's the executive summary.

**What we assessed:** Three weeks of data across your external attack surface, internal IAM configuration, email security posture, and patch compliance.

**Three things that need your attention:**

1. **[Finding 1 — High severity]:** [Plain-language description, e.g., "Two externally-accessible RDP services were found on your perimeter. These are commonly targeted for ransomware delivery and should be closed or moved behind VPN. Estimated remediation: 2 hours of IT time."]

2. **[Finding 2 — Medium severity]:** [E.g., "17 user accounts haven't logged in for 90+ days but remain enabled. We recommend disabling them after a 2-week grace period notification."]

3. **[Finding 3 — Medium severity]:** [E.g., "DMARC is in monitoring mode. After 3 weeks of clean telemetry, we recommend escalating to quarantine policy to block spoofed emails from your domain."]

**Phishing baseline:** Your pre-training click rate was **[X]%** (industry average for your sector: [Y]%). We'll retest after the first training cycle and expect to see improvement within 60 days.

**Full report:** See attached PDF. Page 5 has the prioritized remediation matrix with effort estimates.

**Next step:** Can we schedule 30 minutes this week to walk through the findings and assign remediation owners? I have availability [OPTIONS].

[SIGNATURE]

---

## Week 4 — Onboarding Completion & Steady-State Transition

**Subject:** [CLIENT NAME] Onboarding Complete — Welcome to Steady-State Operations

Hi [SPONSOR FIRST NAME],

We've completed your 30-day onboarding. Here's a summary of where things stand and what to expect going forward.

**Onboarding outcomes:**
- [N] endpoints under EDR coverage ([%] of your fleet)
- Continuous ASM monitoring across [N] assets
- [N] users enrolled in security awareness training
- Email security hardened (DMARC escalated to [quarantine/reject])
- [N] critical and [N] high findings identified; [N] remediated, [N] in progress

**Your access:**
Your read-only portal is live at [URL]. Login credentials are in the attached PDF (encrypted — password sent separately via [METHOD]).

**Your monthly cadence going forward:**
- **Monthly status report:** Delivered by the [5th] of each month via email
- **Monthly check-in call:** [DAY/TIME — e.g., "Second Tuesday, 10 AM ET"] — calendar invite to follow
- **First QBR:** Scheduled for [DATE ~90 days out]

**SLA reminder:**
- Critical incidents (P1): We page immediately, triage within 15 minutes
- High incidents (P2): Response within 2 hours
- For anything urgent, call [PHONE] — don't wait for email

**Remediation tracker:** Attached. [N] items are assigned to your team with due dates. We'll track these in our monthly calls.

It's been a solid engagement. Looking forward to the long-term partnership.

[SIGNATURE]

---

## Monthly — Status Report Delivery

**Subject:** [CLIENT NAME] Monthly Security Report — [MONTH YEAR]

Hi [SPONSOR FIRST NAME],

Your [MONTH] security report is attached. Key highlights:

**This month's headline:**
[One sentence — e.g., "Overall posture is stable. We closed 4 findings from last month's report and detected one phishing attempt that our tools quarantined before any user interaction."]

**Metrics at a glance:**
| Metric | This Month | Last Month |
|--------|-----------|-----------|
| Open critical/high findings | [N] | [N] |
| Findings closed | [N] | [N] |
| Phishing click rate | [X]% | [X]% |
| Patch compliance (critical patches) | [X]% | [X]% |
| Incidents | [N] | [N] |

**One thing we recommend prioritizing this month:**
[Single, specific action item — e.g., "Patch CVE-XXXX-XXXX on your 3 remaining unpatched servers. Exploit code is publicly available and we're seeing active scanning in our ASM telemetry."]

Full details in the attached report, starting on page 2. Our check-in call is scheduled for [DATE]. Ping me if you'd like to discuss anything before then.

[SIGNATURE]

---

## Incident Notification (P1/P2)

**Subject:** [URGENT] Security Incident — [CLIENT NAME] — [BRIEF DESCRIPTION]

Hi [SPONSOR FIRST NAME],

**We have detected a security incident affecting your environment. Here's what we know right now.**

**Detected:** [TIME AND DATE] via [DETECTION SOURCE — e.g., EDR alert, ASM finding, user report]
**Severity:** [P1 — Critical / P2 — High]
**Status:** Active investigation underway

**What we know so far:**
[2–4 sentences of factual detail — e.g., "EDR flagged lateral movement from workstation DESKTOP-ABC123 at 14:32 UTC. We have isolated the machine and are analyzing the attack chain. We currently have no evidence of data exfiltration, but we cannot rule it out yet."]

**Immediate actions we've taken:**
- [Action 1 — e.g., "Isolated the affected endpoint from the network"]
- [Action 2 — e.g., "Forced password reset for the affected user account"]
- [Action 3 if applicable]

**What we need from you right now:**
- [ ] [E.g., "Confirm whether [USER NAME] is currently at work or traveling"]
- [ ] [E.g., "Do not restart or touch DESKTOP-ABC123 — we need to preserve evidence"]
- [ ] [E.g., "If this system handles [REGULATED DATA TYPE], notify your legal/compliance team now — regulatory notification clocks may apply"]

**We will update you again by [TIME — e.g., "17:00 UTC today"] or sooner if the situation changes.**

For immediate questions, call [MSSP LEAD] at [PHONE].

[SIGNATURE]

---

## Incident Post-Mortem Delivery

**Subject:** [CLIENT NAME] Incident Post-Mortem Report — [INCIDENT NAME/DATE]

Hi [SPONSOR FIRST NAME],

Attached is the post-mortem report for the [INCIDENT DESCRIPTION] incident on [DATE].

**What happened:** [2–3 sentences — e.g., "A phishing email bypassed email filtering and was opened by a user, resulting in credential capture and subsequent unauthorized login from an overseas IP. We detected the anomalous login within 4 minutes and disabled the account before any data was accessed."]

**Root cause:** [E.g., "The phishing email spoofed a known vendor and used a legitimate hosting provider, which reduced its spam score below our filter threshold."]

**What we changed as a result:**
1. [E.g., "Added vendor's domain to allowed-list with enhanced inspection rules"]
2. [E.g., "Tightened geofencing policy — logins from high-risk countries now require MFA step-up even on trusted devices"]
3. [E.g., "Scheduled an unannounced phishing simulation in 30 days to test user response"]

**No further action is required from your team** unless otherwise noted in the attached report.

[SIGNATURE]

---

## QBR Invitation

**Subject:** [CLIENT NAME] Quarterly Security Review — [QUARTER, e.g., Q3 2025] — [DATE]

Hi [SPONSOR FIRST NAME],

Time for our quarterly security review. I'd like to bring together [MSSP ATTENDEES] on our side — I'd recommend including [SUGGESTED CLIENT ATTENDEES — e.g., "your IT lead and your CFO if they have time"] on yours.

**Proposed agenda (60 minutes):**
1. **Quarter in review (10 min):** Key metrics, incidents, wins
2. **Trend analysis (15 min):** Where your posture has improved; where risks have grown
3. **Top 3 recommendations (15 min):** Strategic priorities for next quarter
4. **ROI & value review (10 min):** What the security program has delivered
5. **Roadmap discussion (10 min):** Anything you'd like to add, change, or discuss

**Times that work:** [3 OPTIONS WITH DATES/TIMES]

The QBR deck will be in your hands 48 hours before the call. Let me know if there are specific topics you want us to cover — or things you'd like us to skip.

[SIGNATURE]

---

## Offboarding Notification

**Subject:** [CLIENT NAME] Engagement Transition — Action Required

Hi [SPONSOR FIRST NAME],

As we approach the end of our engagement on [END DATE], I want to make sure the transition is clean and nothing falls through the cracks.

**What we'll deliver before [DATE]:**
- [ ] Final security posture report (current open findings, risk summary, 12-month trend)
- [ ] Asset register export (all assets we've been monitoring)
- [ ] Complete credential inventory (systems we have access to, for your records)
- [ ] Incident response runbook customized to your environment
- [ ] All collected evidence and logs transferred to [AGREED LOCATION]

**Access revocation schedule:**
We'll remove our access to your systems on [DATE]. Before then, we need your team to:
- [ ] Confirm a new owner for [TOOL/PLATFORM] tenant (or confirm you want us to close it)
- [ ] Acknowledge receipt of the final deliverables
- [ ] Countersign the engagement closure form [ATTACHED]

**If you're transitioning to a new provider:**
We're happy to do a 30-minute handoff call with your incoming team. Just let us know and we'll schedule it.

**Post-engagement data retention:**
Per our agreement, we will retain your data for [N days/months] after engagement close, then permanently delete it. If you need an extension, let us know before [DATE].

It's been a privilege working with your team. I hope we'll have an opportunity to work together again.

[SIGNATURE]
