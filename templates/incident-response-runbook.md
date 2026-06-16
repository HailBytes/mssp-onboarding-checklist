# Incident Response Runbook

> **Purpose:** A starting-point IR runbook for MSSP-managed client environments. Adapt this per client — the escalation paths and client-specific details must be filled in before this is live.
>
> **Critical:** This runbook should be reviewed with the client IT lead during Week 4 onboarding and stored in both the MSSP documentation system and the client's internal documentation.

---

| Field | Value |
|-------|-------|
| **Client:** | [CLIENT NAME] |
| **MSSP Primary Contact:** | [NAME, ROLE, PHONE] |
| **Client Primary Contact:** | [NAME, ROLE, PHONE] |
| **Last Reviewed:** | [DATE] |
| **Next Review Due:** | [DATE — annual minimum] |

---

## Part 1 — Incident Classification

### Priority Levels

| Priority | Definition | Examples | Response Target |
|----------|-----------|----------|-----------------|
| **P1 — Critical** | Active breach or imminent material risk | Active ransomware, confirmed data exfil, account takeover of admin credentials, BEC wire fraud (payment sent or pending) | Immediate — page on-call, begin triage within 15 min |
| **P2 — High** | Significant threat requiring urgent attention | Confirmed malware on endpoint, credential stuffing attack, phishing with credential capture | Response within 2 hours |
| **P3 — Medium** | Security event requiring investigation | Suspicious login patterns, failed MFA flood, anomalous network traffic | Response within 4 business hours |
| **P4 — Low** | Informational or low-risk event | Policy violation, isolated malware detection (quarantined), failed external scan | Log and review in standard ticket queue |

**How to classify when unsure:** Escalate up, not down. It costs less to stand down a P1 response than to treat a P1 as a P2.

---

## Part 2 — Initial Triage Checklist

_Run this for every P1 and P2 incident, in order. Do not skip steps._

- [ ] **Confirm the incident is real** — verify the alert against a second data source before escalating. False positives happen; triggering a full IR response for a benign event erodes trust.
- [ ] **Classify the incident** (see Part 1)
- [ ] **Notify the correct escalation path** (see Part 3) — do this early, even if you don't have full information yet
- [ ] **Document the start time** — incident timestamp is critical for post-incident review and insurance claims
- [ ] **Preserve evidence before taking containment action** — screenshots, logs, memory dumps where feasible. Containment can destroy forensic evidence if done carelessly.
- [ ] **Identify the affected systems** — list by hostname, IP, and function
- [ ] **Identify the data at risk** — what data could have been accessed, exfiltrated, or encrypted?
- [ ] **Determine the blast radius** — is this isolated to one endpoint, or is there lateral movement evidence?
- [ ] **Open a P1/P2 incident ticket** — log everything in real time, not from memory afterward
- [ ] **Check for active attacker persistence** — are they still in the environment?

---

## Part 3 — Escalation Paths

### MSSP Internal Escalation

| Level | Who | Contact | When |
|-------|-----|---------|------|
| Tier 1 | [MSSP Analyst Name] | [Phone / Pager] | First responder for all alerts |
| Tier 2 | [Senior Analyst Name] | [Phone / Pager] | P1/P2 incidents, or when Tier 1 is unsure |
| Tier 3 | [MSSP Technical Lead Name] | [Phone / Pager] | Active breach, major IR events |
| Management | [MSSP Manager Name] | [Phone] | Client communication for P1 events, legal/insurance involvement |

### Client Escalation Path

| Level | Who | Contact | When |
|-------|-----|---------|------|
| Day-to-day IT | [Client IT Lead Name] | [Phone / Mobile] | All P1–P2 events |
| IT Manager | [Client IT Manager Name] | [Phone / Mobile] | P1 events, or when IT Lead is unreachable |
| CISO / Security Lead | [Name] | [Phone / Mobile] | P1 events involving data breach risk |
| Executive Sponsor | [Name] | [Phone] | Active breach, regulatory notification required, media risk |
| Legal Counsel | [Name / Firm] | [Phone] | Any event with potential regulatory or legal exposure |
| Cyber Insurance | [Carrier / Broker] | [Phone / Policy #] | Any P1 event — notify early, not after the fact |

> **Client Note:** Cyber insurance carriers often require early notification to preserve coverage. When in doubt, call the broker before taking containment action. This applies to ransomware, data breaches, and BEC events.

---

## Part 4 — Containment Playbooks by Incident Type

### 4.1 Ransomware

**Immediate Actions:**
1. Isolate affected systems from the network — disconnect from LAN and WiFi immediately. Do not shut down (may destroy encryption keys needed for recovery).
2. Identify the scope: which systems are encrypted? Are file servers affected? Is this isolated to one endpoint?
3. Notify client IT lead and MSSP Tier 3 simultaneously.
4. Check for ransomware note — document the strain name, payment demand, and contact method (do not engage).
5. Determine if backups are intact and offline (ransomware frequently targets backup systems first).
6. Notify cyber insurance carrier — ransomware is almost always a covered event, and insurers want early notification.
7. Preserve network logs, EDR telemetry, and memory from an unencrypted system before further containment.

**Do Not:**
- Do not pay ransom without legal and insurance consultation.
- Do not wipe systems before forensic preservation.
- Do not restore from backup without first remediating the initial access vector (you will be re-infected).

**Recovery:**
- Identify initial access vector from EDR/SIEM telemetry before any restoration.
- Restore from verified clean backups (confirm backup integrity before relying on them).
- Remediate initial access vector, then restore systems in priority order.
- Reset all credentials before bringing systems back online.

---

### 4.2 Credential Compromise / Account Takeover

**Immediate Actions:**
1. Disable the compromised account immediately — do not just change the password (active sessions may persist).
2. Force sign-out of all active sessions (M365: `Revoke-AzureADUserAllRefreshToken`; Google: Account → Sign out of all sessions).
3. Check for forwarding rules or delegation added to the compromised mailbox.
4. Check for OAuth application grants made while the account was compromised.
5. Review the account's recent activity: logins (IP, device, location), emails sent, files accessed.
6. Notify the account owner — they need to know, and they may have additional context.
7. Determine if lateral movement occurred: did the attacker access other systems using these credentials?
8. Reset MFA enrollment for the account (attacker may have added their own MFA device).

**For Admin Account Compromise:**
- Treat as P1 immediately — admin compromise is a full domain risk event.
- Audit all admin account activity in the past 7 days.
- Check for new admin accounts or privilege escalations created.
- Rotate service account passwords that the admin had access to.

---

### 4.3 Data Exfiltration

**Immediate Actions:**
1. Identify the exfiltration vector: email, cloud sync, USB, web upload, C2 channel.
2. Block the exfiltration channel without tipping off the attacker if still active.
3. Determine what data was exfiltrated: type, volume, sensitivity, and whether it includes PII, PHI, or PCI data.
4. Preserve evidence of the exfiltration: network logs, proxy logs, DLP alerts, cloud audit logs.
5. Notify client management and legal counsel immediately — regulatory notification timelines start now.
6. Notify cyber insurance carrier.
7. Determine regulatory notification requirements: HIPAA (60 days), GDPR (72 hours), state breach notification laws (varies by state and record type).

**Do Not:**
- Do not delay legal notification to "investigate further." Regulatory timelines don't pause for investigation.
- Do not delete or modify logs that constitute evidence.

---

### 4.4 Phishing — Credential Capture

**Immediate Actions:**
1. Identify affected users: who clicked? Who submitted credentials?
2. Treat every credential submission as a confirmed compromise — assume the credentials are in attacker hands.
3. For each affected user: disable account, force session revocation, reset credentials, re-enroll MFA.
4. Check for immediate attacker activity on affected accounts: logins, mail forwarding rules, external emails sent.
5. Check for BEC indicators: did any affected account send wire transfer requests, gift card requests, or changed payment information?
6. Notify client IT lead and brief them on affected user count.
7. Send client-facing communication to affected users (see Part 5).

---

### 4.5 Business Email Compromise (BEC) / Wire Fraud

BEC is distinct from credential phishing: the attacker either compromises a legitimate email account or spoofs one to manipulate a financial transaction. The goal is money, not data. Common scenarios: vendor invoice fraud, CEO fraud ("wire this now"), payroll diversion, and real estate closing wire redirect.

**Classify immediately:** If a wire has been sent or approved, this is **P1**. Financial recovery windows are measured in hours.

**Immediate Actions:**
1. Determine if a fraudulent payment was sent, approved, or is still pending.
2. If a wire was sent: **call the client's bank fraud line right now — do not email.** The Financial Fraud Kill Chain (FFKC) can sometimes recall wires, but the window closes fast (domestic: 24 hours; international: 72 hours).
3. Identify the attack vector: was a real account compromised, or was the sender domain spoofed?
4. **If a real account was compromised:** disable the account, revoke active sessions, and work through the full 4.2 Account Takeover playbook.
5. **If the domain was spoofed (no account access):** check the DMARC policy for the impersonated domain — a `p=reject` policy would have blocked delivery. Remediate if absent.
6. Search for other recent emails sent from the compromised or spoofed address — BEC actors routinely target multiple contacts in parallel.
7. Alert the client finance/AP team: freeze all pending outbound payment requests until verbally verified (see communication template in section 6.5).
8. Check for payroll diversion: any direct deposit change requests submitted in the past 30 days.
9. Notify client management, legal counsel, and cyber insurance carrier.
10. File an FBI IC3 complaint at ic3.gov — required to access the FBI's wire recovery program.

**Financial Recovery — Time Is the Variable:**

| Transfer Type | Recovery Path | Window |
|--------------|---------------|--------|
| Domestic wire | Call sending bank fraud line → they contact receiving bank to hold funds | 24 hours |
| International wire | FBI IC3 FFKC request + sending bank call | 72 hours (drops sharply after) |
| ACH / direct deposit | NACHA reversal through originating bank | 5 business days |
| Credit card | Chargeback through card issuer | 60–120 days (easiest recovery) |

**Do Not:**
- Do not reply to, forward, or engage with the fraudulent email — the attacker may still be monitoring the mailbox.
- Do not let finance verify the payment by calling the number in the fraudulent email. It goes to the attacker. Use a phone number from a prior known-good invoice or your vendor directory.
- Do not delay the bank call for internal analysis. Both can happen in parallel — the bank call cannot wait.

---

## Part 5 — Evidence Preservation

_Before taking containment action that modifies system state:_

- [ ] Screenshot all relevant dashboards and alert states (timestamp in screenshot)
- [ ] Export EDR telemetry for affected endpoints (process tree, network connections, file writes)
- [ ] Export SIEM events for the relevant time window
- [ ] Capture cloud audit logs (M365 Unified Audit Log, AWS CloudTrail, etc.)
- [ ] Take memory image of affected system if ransomware or advanced malware is suspected (Magnet RAM Capture, WinPMem, or equivalent)
- [ ] Document the chain of custody: who collected what, when, and where it's stored

_Evidence storage:_ [MSSP evidence storage location / secure folder path]

---

## Part 6 — Communication Templates

### 6.1 Internal MSSP Escalation (Pager/SMS)

```
P1 INCIDENT — [CLIENT NAME]
Type: [Ransomware / Account Compromise / Data Exfil / Other]
Affected: [# systems / accounts]
Started: [TIME]
Analyst: [NAME]
Call me immediately.
```

### 6.2 Client Notification — P1 Active Incident

```
Subject: [URGENT] Security Incident — [CLIENT NAME] — [DATE]

[Client Contact Name],

We've identified an active security incident affecting your environment. Here's what we know:

Incident type: [type]
Affected systems: [list]
Current status: [Contained / Investigating / Active]

We are actively responding. [MSSP Lead Name] will call you within 15 minutes.

Please do not take any action on the affected systems until we've spoken.

[MSSP Name]
[Direct phone]
```

### 6.3 Client Communication — Post-Containment Update

```
Subject: Incident Update — [CLIENT NAME] — [DATE / TIME]

[Client Contact Name],

Update on the security incident:

Status: [Contained / In remediation / Monitoring]
What happened: [Plain-language summary — 2-3 sentences]
What we've done: [Actions taken]
What we still need to do: [Next steps]
What we need from you: [Client IT actions, if any]

Next update: [TIME]

[MSSP Name]
[Direct phone]
```

### 6.4 Employee Communication — Phishing Incident (Client to Send)

```
Subject: Security Alert — Action Required

Team,

We experienced a phishing email incident. Some of you may have received and interacted with a fraudulent email [describe the email briefly without revealing which users were targeted].

If you clicked a link or entered your credentials in response to this email, please:
1. Do not log into any company systems until IT instructs you to.
2. Contact IT immediately: [CONTACT METHOD]

If you received the email and deleted it without clicking — thank you. No action required.

We'll share more information as our investigation progresses.

[Sender Name]
[IT / Security Contact]
```

### 6.5 Finance Team Alert — BEC / Wire Fraud (Client to Send)

```
Subject: URGENT — Payment Security Alert — Action Required

[Finance / AP Team],

We are investigating a potential Business Email Compromise (BEC) incident.
Until further notice, apply the following to ALL payment requests:

1. Do NOT process any payment instruction received by email without first 
   verbally confirming it with the requestor — use a phone number from your 
   existing vendor/employee records, NOT a number provided in the email.

2. If you recently processed a payment based solely on an email instruction 
   (especially any change to bank account, routing number, or wire details), 
   contact [IT/Security Contact] immediately.

3. Do not reply to, forward, or engage with any suspicious email. 
   Forward the email as an attachment to [IT/Security Contact] instead.

IT and Security are actively investigating. We will provide an update by [TIME].

[Sender Name]
[IT / Security Contact — phone]
```

---

## Part 7 — Post-Incident Review

Run a post-incident review for every P1 and P2 event. Schedule within 5 business days of incident closure.

**Post-Incident Review Agenda:**

1. **Timeline:** Reconstruct the incident from initial access to detection to containment to resolution
2. **Root cause:** What was the initial access vector? What enabled the attacker?
3. **Detection gap:** How long was the attacker in the environment before detection? How was it detected?
4. **Containment effectiveness:** What worked? What slowed us down?
5. **Remediation completeness:** Are we confident the attacker is fully evicted?
6. **Lessons learned:** What would we do differently?
7. **Follow-up actions:** What controls, processes, or tool configurations need to change?

**Document:** Post-incident review notes in [MSSP documentation system] and share summary with client.

---

_This runbook is a living document. Review annually at minimum, and after every P1 event. If a step didn't work the way it should have, update the runbook before the next incident._

_[MSSP NAME] | [MSSP WEBSITE] | [SUPPORT CONTACT]_
