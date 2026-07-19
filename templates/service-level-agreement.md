# MSSP Service Level Agreement

> **Instructions:** Customize this template before Week 4 delivery. Confirm all response-time targets are achievable for your current team size — a P1 commitment your team can't sustain is worse than a realistic one they can. Obtain client signature or email confirmation before the engagement goes live. Store one copy in your documentation system and one in the client's.
>
> **Link from IR runbook:** Once filled in, link this document from `templates/incident-response-runbook.md` under the client's escalation contacts.

---

| Field | Value |
|-------|-------|
| **Client:** | [CLIENT NAME] |
| **MSSP:** | [MSSP NAME] |
| **Effective Date:** | [DATE] |
| **Annual Review Date:** | [DATE — 12 months from effective date] |
| **Prepared by:** | [MSSP ACCOUNT LEAD] |

---

## 1. Scope of Services

This SLA covers the following services provided by [MSSP NAME] to [CLIENT NAME]. Uncheck any that do not apply.

- [ ] Attack surface monitoring (ASM)
- [ ] Security awareness training and phishing simulation (SAT)
- [ ] SIEM monitoring / managed detection and response (MDR)
- [ ] Endpoint detection and response (EDR) management
- [ ] Vulnerability management
- [ ] Incident response support
- [ ] Monthly security reporting
- [ ] Quarterly Business Reviews
- [ ] [OTHER SERVICE — describe]

> Services not checked above are out of scope. Additions require a written amendment signed by both parties.

---

## 2. Ticket Priority Levels

| Priority | Name | Definition | Example |
|----------|------|------------|---------|
| **P1** | Critical | Active incident with confirmed or likely business impact; systems compromised or data at risk | Ransomware execution, confirmed data exfiltration, admin credentials in active use by attacker |
| **P2** | High | High-risk finding or confirmed vulnerability with imminent exploitation potential; no active harm yet | Unpatched critical CVE on an internet-facing system, harvested credential not yet used |
| **P3** | Medium | Standard remediation work; findings from ASM, SAT, or monitoring that require action | Medium/high ASM finding, failed patch, policy gap from review |
| **P4** | Low | Low-risk or informational items; scheduled work | Informational ASM finding, routine hardening recommendation, documentation update |

> **Priority assignment:** [MSSP NAME] assigns initial priority. [CLIENT NAME] may request re-prioritization; [MSSP NAME] will confirm or explain within one business day. Disputes escalate to [MSSP LEAD ROLE].

---

## 3. Response Time Commitments

### 3.1 Business Hours

Business hours: **[START TIME]–[END TIME] [TIMEZONE], Monday–Friday**, excluding holidays listed in Appendix A.

| Priority | Initial Acknowledgment | Update Cadence | Target Resolution |
|----------|------------------------|----------------|-------------------|
| **P1** | Within **1 hour** | Every **30 minutes** until contained | As fast as possible — no fixed target |
| **P2** | Within **4 hours** | Every **4 hours** | Within **48 hours** |
| **P3** | Within **1 business day** | Every **3 business days** | Within **10 business days** |
| **P4** | Within **5 business days** | Monthly (status report) | Best effort — no SLA |

> **What counts as acknowledgment:** A ticket update or direct reply confirming [MSSP NAME] is investigating. An automated "ticket received" notification does not count.

### 3.2 After-Hours Coverage

> Choose the model that matches your actual staffing. Do not promise 24/7 coverage if you do not have on-call rotation.

**Option A — Business hours only:**
[MSSP NAME] provides coverage during business hours. P1 incidents reported outside business hours receive initial acknowledgment by [TIME] on the next business day. Clients should contact [AFTER-HOURS EMERGENCY CONTACT — law enforcement, external IR firm] for incidents requiring immediate response outside hours.

**Option B — On-call P1 coverage:**
[MSSP NAME] provides on-call coverage for P1 incidents 24/7/365. P2–P4 tickets reported outside business hours are queued for the next business day. Reach the on-call analyst by calling [PAGER/PHONE NUMBER] or paging via [TOOL/SYSTEM].

---

## 4. Escalation Path

### 4.1 MSSP Escalation

| Level | Name / Role | Contact | Escalate When |
|-------|-------------|---------|---------------|
| **Tier 1** | [ANALYST NAME / ROLE] | [EMAIL] · [PHONE] | First contact for all tickets |
| **Tier 2** | [SENIOR ANALYST / ROLE] | [EMAIL] · [PHONE] | P1 incidents; P2 unresolved after 24 hours |
| **Tier 3** | [MSSP LEAD / ROLE] | [EMAIL] · [PHONE] | SLA miss; client escalation request; major incident |
| **Executive** | [MSSP OWNER / TITLE] | [EMAIL] · [PHONE] | Breach; regulatory notification; contract dispute |

### 4.2 Client Escalation

| Level | Name / Role | Contact |
|-------|-------------|---------|
| **Day-to-day** | [IT CONTACT NAME / ROLE] | [EMAIL] · [PHONE] |
| **Manager** | [IT MANAGER NAME / ROLE] | [EMAIL] · [PHONE] |
| **Sponsor** | [CISO / SECURITY SPONSOR] | [EMAIL] · [PHONE] |
| **Executive** | [BUSINESS EXECUTIVE / TITLE] | [EMAIL] · [PHONE] |

> **How to submit a ticket:** [TICKETING SYSTEM URL or email address]. Include: affected system(s), observed behavior, time first noticed, and your assessment of business impact.

---

## 5. Reporting Deliverables

| Deliverable | Frequency | Recipient |
|-------------|-----------|-----------|
| Monthly Security Status Report | Monthly, by [DAY] of each month | [CLIENT IT CONTACT] |
| Quarterly Business Review | Every 90 days from engagement start | [CLIENT EXECUTIVE SPONSOR] |
| P1 Incident Brief | Within 24 hours of containment | [CLIENT CISO / SPONSOR] |
| P1 Post-Incident Report | Within [5–10] business days of closure | [CLIENT CISO / SPONSOR] |

---

## 6. Client Responsibilities

[CLIENT NAME] agrees to:

- Designate a primary IT contact who can authorize access and approve remediation
- Respond to MSSP requests for information or approvals within **1 business day for P1–P2** and **3 business days for P3–P4**
- Provide timely access to systems and credentials when requested for authorized work
- Apply MSSP-recommended P1 and P2 remediations within agreed timeframes, or formally accept the risk in writing
- Notify [MSSP NAME] of significant organizational changes: acquisitions, major infrastructure changes, regulatory scope changes
- Not grant third-party access to MSSP-managed systems without prior written approval

> **SLA clock pause:** If [CLIENT NAME] does not respond within the above timeframes, the SLA clock pauses until a response is received. [MSSP NAME] will document each pause in the ticket record.

---

## 7. Exclusions

This SLA does not cover:

- Incidents caused by [CLIENT NAME]'s failure to apply MSSP-recommended remediations within agreed timeframes
- Systems, users, or IP ranges not listed in Appendix B (Scope of Coverage)
- Force majeure events (widespread infrastructure outages, natural disasters)
- Forensic investigation work beyond [X] hours (available as a separate engagement)
- Compliance audit support beyond standard monthly reporting (available as a separate engagement)

---

## 8. SLA Breach Remedy

> Set terms you can actually honor. Service credits are common; do not promise financial remedies beyond that.

If [MSSP NAME] misses a documented response-time target, [CLIENT NAME] may request:

1. A written root-cause explanation within **5 business days**
2. A service credit of **[X%] of the monthly retainer** per confirmed P1 SLA breach, up to **[X%] of one monthly retainer per calendar month**

Service credits are the sole remedy for SLA breaches and do not constitute an admission of liability.

---

## 9. Amendment and Review

- This SLA is reviewed annually or when scope changes materially
- Either party may propose amendments in writing; amendments take effect upon written agreement from both parties
- [MSSP NAME] provides at least **30 days' written notice** before reducing service levels or increasing pricing

---

## 10. Acknowledgment

Signature or email confirmation from an authorized representative constitutes acceptance.

| | MSSP | Client |
|--|------|--------|
| **Name** | [SIGNATORY NAME] | [SIGNATORY NAME] |
| **Title** | [TITLE] | [TITLE] |
| **Signature** | | |
| **Date** | | |

> **Email confirmation:** If formal signature is not practical, a reply email from an authorized client representative confirming acceptance is sufficient. Archive this email alongside the signed MSA.

---

## Appendix A — Observed Holidays

[MSSP NAME] observes the following holidays (business-hours SLAs suspended; on-call P1 coverage per Section 3.2):

- [HOLIDAY NAME — DATE]
- [HOLIDAY NAME — DATE]
- [Add remaining observed holidays]

---

## Appendix B — Scope of Coverage

> Complete this before sending. Scope ambiguity is the most common source of SLA disputes.

| Category | In Scope | Notes |
|----------|----------|-------|
| **Users** | [COUNT] employees | Contractors: [in / out of scope] |
| **Managed Endpoints** | [COUNT] | Unmanaged / BYO devices: [in / out] |
| **Servers / Cloud Workloads** | [List or count] | |
| **External Attack Surface** | [Domain(s) and IP ranges] | |
| **SaaS Applications Monitored** | [List] | |
| **Physical Locations** | [List] | Remote workers: [in / out] |
| **Network Segments** | [List, or "all client-managed networks"] | OT/ICS: [in / out] |
