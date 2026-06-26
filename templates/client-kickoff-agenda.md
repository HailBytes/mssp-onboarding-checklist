# Client Kickoff Call Agenda

**Meeting Type:** New Client Security Engagement Kickoff
**Duration:** 60 minutes
**Format:** Video call or in-person

---

| Field | Value |
|-------|-------|
| **Client:** | [CLIENT NAME] |
| **Date:** | [DATE] |
| **Time:** | [TIME + TIMEZONE] |
| **Location/Link:** | [VIDEO LINK or ROOM] |
| **MSSP PM/Lead:** | [MSSP PM NAME] |
| **MSSP Technical Lead:** | [TECH LEAD NAME] |
| **Client Primary Contact:** | [CLIENT POC NAME, TITLE] |
| **Client Executive Sponsor:** | [EXEC SPONSOR NAME, TITLE] |

---

## Agenda

### 0:00 – 0:05 | Welcome & Introductions (5 min)

- MSSP team introduces themselves: role and what they'll be doing for [CLIENT NAME]
- Client team introduces themselves: role and relationship to security/IT
- Quick housekeeping: recording policy, how to ask questions during the call

---

### 0:05 – 0:15 | Scope Review (10 min)

- Walk through the signed SOW: what's in scope, what's explicitly out of scope
- Confirm any pre-agreed exclusions (systems, locations, business units)
- Address any open questions about scope before moving forward
- Get verbal acknowledgment from client executive sponsor that scope is correct

> **Facilitator Note:** Any scope ambiguity left unresolved on this call will cost 10x the time to resolve post-engagement. Take the time to get it right here.

---

### 0:15 – 0:25 | Stakeholder RACI (10 min)

- Map key decisions to decision-makers:
  - Who approves firewall changes?
  - Who approves EDR policy changes?
  - Who approves new tool deployments?
  - Who is the incident escalation contact at 2am?
- Confirm primary day-to-day contact for operational questions
- Confirm escalation contact (different from day-to-day — usually one level up)
- Confirm executive sponsor for QBR and business-level updates
- **Collect emergency contact information:** personal mobile numbers for P1 incidents

> **Facilitator Note:** Do not leave this agenda item without mobile numbers for at least two people on the client side. Frame it as standard engagement setup, not an alarm.

---

### 0:25 – 0:35 | Communication Protocols (10 min)

- **Preferred channel:** [Client's preference — Teams / Slack / Email]
- **Ticketing process:** How does the client log a request? (Use [PSA TOOL] — walk through it briefly)
- **Report cadence:** Monthly status report delivered on [DAY] of each month, followed by a 30-min review call
- **Response time expectations:** Review SLA tiers (P1–P4) — confirm understanding
- **After-hours:** [MSSP paging mechanism] for P1 incidents — confirm client knows how to use it
- **QBRs:** Quarterly, scheduled at [DAY 90 from engagement start] — confirm attendees

---

### 0:35 – 0:50 | Tool Access Walkthrough (15 min)

- Walk through the access request list — confirm client understands what we're requesting and why:
  - Active Directory read access → for asset discovery and IAM audit
  - Firewall access → for rule review and log configuration
  - Cloud console access → for cloud footprint enumeration
  - Email admin access → for SPF/DKIM/DMARC review and email security config
  - EDR console → for coverage verification and agent deployment
- Assign each request an owner on the client side with a target date
- Confirm access request process: will tickets be opened? Who approves?
- Note any access that will take more than 5 business days — flag as a potential blocker

> **Facilitator Note:** Every access request you don't get in Week 1 is a delay multiplier for everything in Week 2. Treat these as P2 tickets and follow up on Day 3.

---

### 0:50 – 0:58 | 30-Day Onboarding Plan Overview (8 min)

- Brief walk through the 30-day plan:
  - **Week 1:** Discovery — we'll be inventorying assets and reviewing existing security posture
  - **Week 2:** Tooling — deploying EDR, ASM, SAT, configuring logging
  - **Week 3:** Baseline assessment — first ASM scan, phishing baseline, posture report
  - **Week 4:** Reporting setup — first monthly report, SLA confirmation, ongoing cadence
- Confirm what the client needs to have ready for each week
- Remind client: phishing simulations will happen — no surprises

---

### 0:58 – 1:00 | Q&A & Close (2 min)

- Open for questions
- Confirm: next touchpoint is [DATE] for [Week 1 discovery call or check-in]
- Thank everyone for their time

---

## Post-Call Actions (MSSP Lead)

- [ ] Send summary email within 4 hours: scope confirmed, open items, next steps, access request list
- [ ] Log all open access requests in PSA as P2 tickets
- [ ] Create client folder in documentation system, upload kickoff notes
- [ ] Add all recurring calls to both team calendars
- [ ] Set Day 3 internal reminder to follow up on access request status

---

## Facilitator Notes

**Before the call:**

- Review the SOW one more time — know the scope cold. You will be asked about it.
- Have the access request list ready to share on screen.
- Confirm all MSSP team members know what they're presenting.

**During the call:**

- Take notes in real time, not after — details fade fast.
- If you can't get an answer on scope or ownership, don't move on — park it in a "parking lot" and come back before the call ends.
- Don't overload the client with technical detail in the first call. This is a relationship call first, a technical briefing second.

**Red flags to watch for:**

- Client isn't sure who owns key systems (firewall, DNS, cloud admin) — this will delay Week 2.
- IT team and security team seem misaligned — investigate before assuming you have a unified stakeholder.
- Client minimizes access requests ("we'll figure it out") — gently push back; delayed access is the #1 onboarding blocker.
- Executive sponsor doesn't know what was in the SOW — re-scope risk.
