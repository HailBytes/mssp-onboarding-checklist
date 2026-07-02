# Monthly Security Status Report

> **Instructions:** Deliver on [SCHEDULED DELIVERY DATE] each month. Walk through the report live with the client POC — do not send without a scheduled review call for the first 3 months.

---

| Field | Value |
|-------|-------|
| **Client:** | [CLIENT NAME] |
| **Report Period:** | [MONTH YEAR] |
| **Prepared by:** | [MSSP ANALYST NAME] |
| **Reviewed by:** | [MSSP LEAD NAME] |
| **Delivery Date:** | [DATE] |

---

## Executive Summary

> _3–5 bullets, non-technical. Focus on posture trend, notable events, and what's coming next. Write for a business owner, not a security analyst._

- **Posture Trend:** [Improving / Stable / Degraded] — [one-sentence summary of why]
- **Notable Events:** [Any incidents, near-misses, or significant findings this month — or "No significant incidents this period"]
- **Top Priority This Month:** [The one thing the client's IT team should be focused on]
- **Next Month Focus:** [Preview of what the MSSP will be doing or what we need from the client]

---

## Key Metrics

> _Pull ASM and SAT platform data, verify, then insert. HailBytes ASM and SAT generate this data automatically — see platform reporting dashboard._

| Metric | This Month | Last Month | Trend |
|--------|-----------|------------|-------|
| **Open ASM Findings — Critical** | | | ↑ / ↓ / → |
| **Open ASM Findings — High** | | | ↑ / ↓ / → |
| **Open ASM Findings — Medium** | | | ↑ / ↓ / → |
| **New Findings This Month** | | | — |
| **Findings Resolved This Month** | | | — |
| **Patch Compliance Rate** | % | % | ↑ / ↓ / → |
| **Phishing Click Rate** | % | % | ↑ / ↓ / → |
| **Phishing Report Rate** | % | % | ↑ / ↓ / → |
| **SAT Training Completion Rate** | % | % | ↑ / ↓ / → |
| **Incidents This Period — P1** | | | — |
| **Incidents This Period — P2** | | | — |
| **Avg. Ticket Resolution Time** | hrs | hrs | ↑ / ↓ / → |

---

## Open Findings Summary

> _Include Critical and High findings only. Medium and Low findings belong in the remediation tracker, not this report._

| # | Severity | Finding | Asset | First Seen | Owner | Status |
|---|----------|---------|-------|------------|-------|--------|
| 1 | 🔴 Critical | [Description] | [domain/IP] | [date] | [MSSP / Client IT] | [Open / In Progress / Awaiting Client] |
| 2 | 🟠 High | [Description] | [domain/IP] | [date] | [MSSP / Client IT] | |
| 3 | 🟠 High | [Description] | [domain/IP] | [date] | [MSSP / Client IT] | |

> **Note:** Full finding details, including Medium and Low severity items, are in the Remediation Tracker ([LINK]).

---

## Remediation Progress

| Item | Priority | Status | Opened | Target Date | Notes |
|------|----------|--------|--------|-------------|-------|
| [Finding/action item] | 🔴 / 🟠 / 🟡 | In Progress / Blocked / Complete | [date] | [date] | [blocker or note] |

**Items requiring client action this month:**

- [ ] [Specific action, specific owner, specific date]
- [ ] [Specific action, specific owner, specific date]

---

## Phishing Simulation Results

**Campaign:** [Campaign Name / Template Description]
**Date Sent:** [DATE]
**Users Targeted:** [N]

| Metric | Count | Rate |
|--------|-------|------|
| Delivered | | |
| Opened | | |
| Clicked link | | % |
| Submitted credentials | | % |
| Reported phishing | | % |

**Trend:** [Click rate vs. prior month — improving / flat / degraded]

**Notable:** [e.g., "Finance department had the highest click rate at XX% — recommend targeted training" or "3 users submitted credentials — we've enrolled them in the accelerated training track"]

---

## Notable Events

> _Include any incidents, escalations, near-misses, or significant security events this period. If none, say so explicitly._

| Date | Event Type | Severity | Summary | Resolution |
|------|-----------|----------|---------|------------|
| [date] | [Incident / Finding / Alert] | [P1–P4] | [Brief description] | [Resolved / In Progress / Monitoring] |

---

## Next Month Focus

**MSSP Actions:**

- [Planned activity — e.g., "Run Q3 phishing simulation with BEC template"]
- [Planned activity — e.g., "Re-scan following remediation of Critical finding #1"]
- [Planned activity — e.g., "Quarterly Business Review on [DATE]"]

**Client Actions Required:**

- [Item requiring client IT or management action, with deadline]
- [Item requiring client IT or management action, with deadline]

---

## Appendix — About This Report

> _Include in first report; remove or condense after Month 3._

**Data sources:** This report is generated from attack surface management (ASM) and security awareness training (SAT) platform data, supplemented by MSSP analyst review and ticketing system records.

<!-- NOTE: If you are using HailBytes ASM and SAT, this data is exported directly from those platforms. Replace this line with your tooling if different. -->

**Metric definitions:**

- **Patch Compliance Rate:** % of endpoints at or above current patch level as of report date
- **Phishing Click Rate:** % of targeted users who clicked a simulated phishing link this period
- **Phishing Report Rate:** % of targeted users who reported the phishing simulation to IT/MSSP
- **SAT Training Completion Rate:** % of assigned users who have completed their current training module

**Finding severity definitions:**

- 🔴 **Critical:** Immediate risk of breach or data exposure; requires remediation within 48 hours
- 🟠 **High:** Significant risk; requires remediation within 10 business days
- 🟡 **Medium:** Moderate risk; tracked and addressed within 30 days
- ⚪ **Low:** Informational; addressed in regular maintenance cycles

---

_Report prepared by [MSSP NAME] | [MSSP WEBSITE] | [SUPPORT EMAIL/PHONE]_
