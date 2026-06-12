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
| **P1 — Critical** | Active breach or imminent material risk | Active ransomware, confirmed data exfil, account takeover of admin credentials | Immediate — page on-call, begin triage within 15 min |
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

**Definition:** An attacker — either through compromised email credentials or a spoofed/lookalike domain — impersonates an executive, vendor, or internal finance contact to redirect a payment, request a wire transfer, or change payment account details.

> **Time-critical:** Wire recall windows close within 24–72 hours. Every hour of delay reduces the probability of fund recovery. Financial institution contact takes priority over internal investigation.

**Immediate Actions:**
1. Confirm a fraudulent payment instruction was issued — verify directly with the supposed sender via phone or in-person (not email).
2. If a wire transfer or ACH payment has already been initiated:
   - Call the sending bank's wire transfer department **immediately** — ask to place a SWIFT recall or reverse the ACH.
   - Reference the FBI's **Financial Fraud Kill Chain (FFKC)**: notify the FBI's IC3 at [ic3.gov](https://www.ic3.gov) so they can coordinate with FinCEN to flag the receiving account.
   - Provide the sending bank: beneficiary name, beneficiary bank, account number, routing number, transfer amount, and transfer date/time.
3. If the fraudulent instruction has not yet been executed — hold the payment and do not execute it under any circumstances until the request is verified through a confirmed out-of-band channel.
4. Identify the attack vector: was this a compromised account (internal actor's mailbox), a spoofed domain, or a lookalike domain? The remediation path differs for each.
5. Preserve the fraudulent email in full (including full headers) — do not delete it. Export to PDF and raw `.eml` format.
6. Identify who received the fraudulent email and who else may have acted on it.
7. Notify client executive sponsor and legal counsel immediately.
8. Notify cyber insurance carrier — BEC/wire fraud is typically a covered event, and carriers may have their own fraud recovery contacts.

**Compromised Internal Mailbox (attacker used a real employee account):**
- Follow the Credential Compromise playbook (4.2) in parallel.
- Check the compromised mailbox for: forwarding rules, auto-replies, deleted items (search for the fraud thread), inbox rules that hid replies from the legitimate user.
- Review the sent items folder for how long the attacker had access and who else they contacted.
- Check for attacker-set auto-forwards that will continue to exfiltrate email even after the initial fraud is stopped.

**Spoofed / Lookalike Domain (attacker used an external fraudulent domain):**
- Document the fraudulent domain exactly — this is evidence for FBI IC3 and the fraud recovery process.
- Confirm the client's own DMARC policy: a `p=reject` DMARC policy would have blocked spoofing of their own domain. If not in place, add it to the remediation tracker.
- Check if the lookalike domain is registered — if so, report to the registrar for takedown.

**Do Not:**
- Do not contact the fraudulent vendor/payee account to notify them — you may alert the attacker and accelerate fund movement.
- Do not send any additional payments while the investigation is active.
- Do not modify or delete the email thread containing the fraudulent instructions — it is evidence.

**Communication Note:**
- BEC often targets finance and executives who may be embarrassed about the fraud. Approach internal communication with this in mind — the goal is swift recovery, not blame assignment.
- Notify only those who need to know until the scope is understood. Premature broad disclosure can complicate law enforcement coordination.

**Key External Contacts:**
| Contact | Purpose | How to Reach |
|---------|---------|--------------|
| Sending bank wire department | SWIFT recall / ACH reversal | Direct phone — not the main branch number |
| FBI IC3 | FFKC activation, FinCEN coordination | [ic3.gov](https://www.ic3.gov) — file a complaint immediately |
| Cyber insurance carrier | Coverage notification, fraud recovery support | Policy / broker contact (see escalation path) |
| Client legal counsel | Regulatory reporting, litigation hold | See Part 3 escalation path |

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
