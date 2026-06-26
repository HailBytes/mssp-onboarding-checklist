# Compliance Onboarding Addendum

> **When to use this:** When Section 6 of the [discovery questionnaire](../templates/discovery-questionnaire.md) identifies one or more regulatory frameworks — HIPAA, PCI-DSS, SOC 2, CMMC, GDPR, or NIS2 — run the relevant section(s) of this addendum alongside the standard Week 1–4 checklists. These are the steps that change when compliance is in scope.
>
> **This is not a compliance audit checklist.** It's the MSSP operational steps — BAAs, scope documentation, evidence workflows, data handling adjustments — that need to happen during onboarding to avoid being a compliance liability for your client.

---

## HIPAA (Healthcare / Covered Entity Clients)

**Trigger:** Client handles Protected Health Information (PHI), or their systems touch PHI even incidentally (e.g., email containing patient records, backup systems with PHI).

### Legal Agreements

- [ ] Execute a **Business Associate Agreement (BAA)** with the client before accessing any PHI-adjacent systems — this is a legal requirement, not a formality
- [ ] Confirm the client has BAAs in place with all other vendors who access PHI (cloud providers, email platforms, backup vendors) — gaps here are your liability too
- [ ] Document the BAA execution date and storage location in the client record

### PHI Scope Mapping

- [ ] Identify every system that stores, processes, or transmits PHI: EHR, billing systems, email, backup, cloud storage
- [ ] Confirm PHI is not stored in systems that weren't disclosed in the discovery questionnaire (shadow IT in healthcare is common and dangerous)
- [ ] Document the PHI data flows: where does it originate, where does it go, what touches it in transit?

### Access Controls

- [ ] Confirm all accounts with PHI access have MFA enforced — no exceptions
- [ ] Confirm access logging is enabled on all PHI-holding systems (HIPAA requires audit logs of PHI access)
- [ ] Review access to PHI by role — HIPAA minimum-necessary standard applies: access should be scoped to what the role requires
- [ ] Verify no shared credentials exist on PHI-adjacent systems

### Incident Response Modifications

- [ ] Update IR runbook: HIPAA breach notification to HHS is required within 60 days of discovery for breaches affecting 500+ individuals; breaches affecting fewer than 500 require annual notification
- [ ] Identify who at the client side owns HHS breach notification (typically Compliance Officer or Legal)
- [ ] Add state breach notification law review to IR process — many states have stricter timelines than HIPAA
- [ ] Confirm client knows: workforce member unauthorized access to PHI counts as a breach even if no external attacker was involved

### Ongoing Operations

- [ ] Include HIPAA-relevant metrics in monthly reports: PHI-adjacent system access anomalies, failed login patterns on EHR
- [ ] Schedule annual HIPAA risk assessment review (MSSP can support evidence gathering, but client typically owns the assessment)
- [ ] Confirm SAT training includes HIPAA-specific modules — generic security awareness is not sufficient for workforce members handling PHI

---

## PCI-DSS (Payment Card Industry)

**Trigger:** Client stores, processes, or transmits cardholder data (CHD), or systems are in-scope for PCI compliance per their current SAQ or QSA assessment.

### Scope Confirmation

- [ ] Obtain the client's most recent **Self-Assessment Questionnaire (SAQ)** or QSA Report on Compliance (RoC) — understand current scope before touching anything
- [ ] Identify all systems in the **Cardholder Data Environment (CDE)**: POS terminals, payment processors, networks that carry CHD
- [ ] Confirm scope with client: is MSSP tooling (EDR agents, ASM scanners, SIEM) in-scope for PCI? Tools deployed into CDE become part of scope
- [ ] Document scope decisions and their rationale — scope creep is the most common source of PCI assessment failures

### Network Segmentation

- [ ] Verify CDE is segmented from the general network — flat networks where POS systems share a segment with general workstations fail PCI requirement 1
- [ ] Review firewall rules between CDE and non-CDE segments — confirm only explicitly required traffic is permitted
- [ ] Confirm ASM scanning approach for CDE: some clients require scans to originate from specific IPs to avoid CDE network log anomalies

### Logging & Monitoring (PCI Requirement 10)

- [ ] Confirm log aggregation covers all CDE systems with 12-month retention (3 months immediately available)
- [ ] Verify daily review process exists for CDE logs — PCI requires it; confirm it's happening and documented
- [ ] Confirm time synchronization across all CDE systems (NTP) — log correlation falls apart without it

### Vulnerability Management (PCI Requirements 6 & 11)

- [ ] Confirm quarterly internal vulnerability scans are scheduled for CDE systems
- [ ] Confirm quarterly external scans are being performed by an Approved Scanning Vendor (ASV) — this cannot be the MSSP unless they hold ASV certification
- [ ] Confirm penetration testing is scheduled: external and internal annually, and after significant infrastructure changes
- [ ] Document responsible party for each requirement — MSSP often supports evidence collection but client QSA drives the assessment

### Incident Response Modifications

- [ ] Update IR runbook: confirmed cardholder data compromise requires notifying the card brands (Visa, Mastercard) via the client's acquiring bank — timelines are tight and contractual
- [ ] Confirm client knows: PCI incident notification is bank/acquirer-driven, not just regulatory

---

## SOC 2

**Trigger:** Client is pursuing SOC 2 Type I or Type II certification, or is already SOC 2 certified and MSSP is part of their control environment.

### Scoping Your Role

- [ ] Confirm whether MSSP is a **subservice organization** (controls delegated to MSSP that the auditor will test) or a vendor outside SOC 2 scope — this changes what you need to provide
- [ ] If in scope: request a copy of the client's SOC 2 scope document and identify which Trust Services Criteria (TSC) apply
- [ ] Confirm whether the engagement requires a **complementary user entity controls (CUEC)** review — these are controls the client must implement for your service to function as documented

### Evidence Support

- [ ] Identify which MSSP-managed systems and processes will be included in scope (typically: EDR policy, log retention, access management, incident response)
- [ ] Confirm your tooling can export evidence-ready reports: user access logs, configuration change logs, incident records
- [ ] Set up a recurring evidence export schedule if the audit period has started — auditors require consistent evidence, not a scramble at the end
- [ ] Confirm MSSP has its own SOC 2 report if the client's auditor will rely on it (bridge letters may be needed if your report period doesn't align)

### Ongoing Operations

- [ ] Include SOC 2 control status in QBR agenda — clients under active audit need quarterly confirmation that monitored controls are operating effectively
- [ ] Flag any control failures to client compliance contact immediately — waiting for the monthly report is too slow during an audit period

---

## CMMC (Cybersecurity Maturity Model Certification — DoD Contractors)

**Trigger:** Client holds or is pursuing a DoD contract requiring CMMC Level 2 or Level 3 certification, or handles **Controlled Unclassified Information (CUI)**.

### CUI Scope Mapping

- [ ] Obtain the client's **System Security Plan (SSP)** — this documents the CUI boundary and is the foundation of CMMC assessment
- [ ] Confirm which systems are in CUI scope before deploying any tooling — tools deployed into CUI scope inherit compliance requirements
- [ ] Verify that CUI data flows are documented and do not pass through systems outside the defined boundary

### Technical Controls (CMMC Level 2 = NIST SP 800-171)

- [ ] Review the client's current **Plan of Action & Milestones (POAM)** for open NIST 800-171 control gaps — these are your remediation roadmap
- [ ] Confirm MFA is enforced for all accounts with access to CUI systems (NIST 800-171 3.5.3)
- [ ] Confirm encryption is enforced for CUI at rest and in transit (NIST 800-171 3.13.8, 3.13.10)
- [ ] Confirm audit logging covers all CUI-adjacent systems with review process (NIST 800-171 3.3.1, 3.3.2)
- [ ] Confirm media sanitization process exists for devices leaving CUI scope (NIST 800-171 3.8.3)

### Incident Response Modifications

- [ ] Update IR runbook: CUI-related incidents must be reported to the DoD within 72 hours of discovery
- [ ] Confirm reporting mechanism: DoD DIBNet portal is the standard channel; confirm client has an active account
- [ ] Preserve all digital media related to a CUI incident for 90 days post-reporting (DoD requirement)

### MSSP Compliance Obligations

- [ ] Confirm MSSP's own CMMC posture: if you manage CUI-adjacent systems, you may have your own CMMC requirements
- [ ] Confirm any cloud services used to manage client data (ticketing, documentation, remote access) meet FedRAMP Moderate or equivalent requirements for CUI handling

---

## GDPR / EU Data Privacy

**Trigger:** Client processes personal data of EU/EEA residents, regardless of the client's own location.

### Legal Agreements

- [ ] Execute a **Data Processing Agreement (DPA)** with the client — GDPR Article 28 requires a written contract for all processors
- [ ] Confirm the DPA covers: nature and purpose of processing, type of personal data, data subject categories, MSSP obligations and rights
- [ ] Review the client's DPA with their other processors to understand the data sharing landscape

### Data Residency & Transfer

- [ ] Confirm where MSSP tooling stores and processes data — EU clients may have contractual or regulatory constraints on data leaving the EU/EEA
- [ ] If data transfers outside EU/EEA are required: confirm legal transfer mechanism (Standard Contractual Clauses, adequacy decision, or Binding Corporate Rules)
- [ ] Document all third-party subprocessors that will touch client data (GDPR requires clients to maintain a list)

### Incident Response Modifications

- [ ] Update IR runbook: **72-hour breach notification to the lead supervisory authority** is mandatory under GDPR Article 33 for breaches likely to result in risk to individuals
- [ ] Identify the client's lead supervisory authority (determined by the EU member state where the client's main establishment is located)
- [ ] Confirm process for notifying affected data subjects when required (Article 34 — when breach is likely to result in high risk to individuals)
- [ ] Confirm client has a Data Protection Officer (DPO) if required — large-scale processors of sensitive data must designate one

### Data Minimization During Operations

- [ ] Review what personal data MSSP tools collect from the client environment: logs, email metadata, user activity
- [ ] Confirm data collected is necessary for the security service being provided (GDPR data minimization principle)
- [ ] Confirm data retention periods for MSSP-held client data are defined, documented, and enforced

---

## NIS2 (EU Network and Information Security Directive 2)

**Trigger:** Client is a medium or large enterprise (50+ employees or €10M+ annual turnover) operating in an EU member state within a covered sector — or provides services to such an entity where disruption would have cross-border impact. NIS2 applies regardless of where the MSSP is located; what matters is where the client operates and whether they qualify as an "essential" or "important" entity.

**Covered sectors (essential entities — higher scrutiny):** Energy, transport, banking, financial market infrastructure, health, drinking water, wastewater, digital infrastructure, ICT service management (B2B — this includes most MSSPs), public administration, space.

**Covered sectors (important entities — same requirements, lighter enforcement):** Postal/courier, waste management, chemicals, food production/processing/distribution, manufacturing (medical devices, electronics, machinery, motor vehicles), digital providers (online marketplaces, search engines, social networks), research.

> **MSSP self-check:** ICT service management (B2B) is an **essential entity** sector under NIS2. If your MSSP has 50+ employees or €10M+ revenue and operates within the EU, you likely have your own NIS2 obligations independent of any client engagement. Confirm your own classification with legal counsel before advising clients on theirs.

---

### Entity Classification

- [ ] Confirm whether the client qualifies as an **essential entity** or **important entity** (sector + size threshold — obtain this from legal counsel or the national competent authority's published guidance)
- [ ] Confirm the member state(s) where the client has its main establishment — this determines which national competent authority (NCA) oversees them
- [ ] If the client operates in multiple EU member states: identify the lead NCA (determined by location of main establishment) and any other relevant NCAs
- [ ] Check whether any small-entity exemption applies — entities below the size thresholds are generally exempt unless they are a sole provider in their sector or their disruption would have significant cross-border impact

### Registration

- [ ] Confirm whether the client has registered (or is required to register) with their national competent authority — most essential and important entities must self-register; deadlines vary by member state
- [ ] Confirm registration includes: entity name and sector classification, primary contact details, IP address ranges and domain names (for digital infrastructure entities), and list of member states where the client provides services
- [ ] Note: failure to register is itself a compliance violation in most member states

### Article 21 Security Measures

NIS2 Article 21 mandates ten categories of cybersecurity risk management measures. MSSP deployments should directly support or document coverage for each.

- [ ] **Risk analysis and information system security policies:** Confirm client has documented risk management policies; MSSP discovery work (Week 1–2) maps to this requirement — ensure outputs are documented and retained
- [ ] **Incident handling:** Verify IR runbook is in place and reflects NIS2 notification timelines (see below) — the standard IR template requires updating for NIS2 before it is live for EU clients
- [ ] **Business continuity, backup management, and disaster recovery:** Confirm backup strategy is documented with tested recovery procedures; business continuity plan exists and is reviewed at least annually
- [ ] **Supply chain security:** Document the security posture of all suppliers with access to the client environment — this includes the MSSP itself; clients will likely request the MSSP's own security documentation (certifications, penetration test results, security policies) as evidence of supply chain due diligence
- [ ] **Security in network/system acquisition and development:** Confirm client has a process for security requirements in procurement and software development; MSSP tooling deployed into the environment should have documented security properties
- [ ] **Effectiveness measurement:** Confirm there is a process to assess whether security controls are working — this can be supported by MSSP monthly reports, ASM findings trends, and phishing simulation improvement metrics
- [ ] **Cyber hygiene and security training:** Confirm all staff complete baseline cybersecurity awareness training; NIS2 explicitly requires training for **management and governing bodies** — this is often the gap
- [ ] **Cryptography and encryption policies:** Confirm policies exist for use of encryption at rest and in transit; confirm MSSP-managed tooling applies encryption consistent with the policy
- [ ] **Human resources security, access control, and asset management:** Confirm joiners/movers/leavers process is documented; access reviews are scheduled; asset inventory is maintained — Week 1 discovery work directly supports this
- [ ] **Multi-factor authentication and secure communications:** Confirm MFA is enforced for all access to network and information systems — NIS2 Article 21(2)(j) explicitly requires MFA or continuous authentication; document any exceptions with compensating controls

### Incident Reporting (Article 23)

NIS2 incident reporting timelines are among the strictest of any framework and have three stages:

| Stage | Deadline | Content Required |
|-------|----------|-----------------|
| Early warning | **24 hours** after becoming aware | Incident occurred, suspected cause (attack/human error/etc.), initial severity assessment |
| Incident notification | **72 hours** after becoming aware | Updated information, initial assessment of impact and severity, indicators of compromise where available |
| Final report | **1 month** after incident notification | Full description, type of threat or root cause, applied and ongoing mitigation measures, cross-border impact if applicable |

- [ ] Update IR runbook with NIS2 three-stage reporting timeline — the 24-hour early warning is the most operationally demanding; confirm the MSSP analyst escalation path can trigger this within business and out-of-hours scenarios
- [ ] Identify the client's designated point of contact for NCA notifications — this is a named individual responsible for regulatory communication
- [ ] Confirm the client has identified their lead NCA contact and submission method (most NCAs have an online portal or dedicated email for NIS2 notifications)
- [ ] Confirm client knows: significant incidents affecting services they provide to other entities may also require notification to those recipients simultaneously with the NCA notification
- [ ] For cross-border incidents (client operates in multiple EU member states): confirm process for notifying all relevant NCAs, not just the lead

**Significance threshold for reporting:** An incident is "significant" under NIS2 if it has caused or is capable of causing: severe operational disruption; financial loss to the entity; or significant material or non-material damage to other persons. When uncertain, treat the incident as significant — the cost of an unnecessary early warning is negligible; the cost of missing the window is not.

### Management Accountability

NIS2 introduced personal liability for management bodies — a significant change from NIS1.

- [ ] Brief client executive/board sponsor on NIS2 management obligations: governing bodies must approve cybersecurity risk management measures and oversee their implementation; they can be held personally liable for non-compliance
- [ ] Confirm management-level cybersecurity training is scheduled — this is an explicit Article 21 requirement, not implied
- [ ] Document that the client's management body has formally approved the security measures in place — board minutes or equivalent sign-off
- [ ] Note: member states may require competent authorities to temporarily suspend a natural person from management functions in the case of repeated significant NIS2 violations

### Supply Chain Obligations (MSSP-Specific)

As a supplier to NIS2-covered clients, the MSSP is part of the client's supply chain security perimeter. Clients must assess and manage supplier risk under Article 21.

- [ ] Anticipate and prepare for client requests for MSSP security documentation: certifications (ISO 27001, SOC 2), penetration test results, vulnerability disclosure policy, incident response procedures
- [ ] Confirm the services agreement or MSA addresses NIS2 supply chain requirements: security obligations, incident notification to the client, right-to-audit provisions
- [ ] If MSSP has its own NIS2 obligations (likely for EU-based MSSPs in ICT service management): confirm MSSP's own compliance posture is documented and can be shared with clients on request
- [ ] Document which MSSP personnel have privileged access to client systems — clients' supply chain risk assessments will ask this

### Ongoing Operations

- [ ] Include NIS2 compliance posture in QBR agenda: Article 21 control coverage, any open gaps, incident log review
- [ ] Track member state implementation divergence — NIS2 is an EU directive, and member states have implemented it with varying national-level requirements; clients operating in multiple EU countries may face different specific obligations per country
- [ ] Monitor ENISA (EU Agency for Cybersecurity) guidance — sector-specific technical guidance on Article 21 implementation is being published on a rolling basis

---

## Multi-Framework Clients

When a client is subject to multiple frameworks (e.g., a healthcare payments processor subject to both HIPAA and PCI-DSS):

- Work through each framework's section above separately
- Flag overlapping controls — most controls satisfy multiple frameworks simultaneously (MFA, access logging, encryption)
- Build a unified control matrix for the client showing which MSSP activities map to which framework requirements
- In QBRs, present compliance posture by framework so the client's compliance team can track against each certification separately

**NIS2 + GDPR is a common combination** for EU clients. The Article 21 security measures and the 72-hour incident notification timelines align closely — an incident that triggers GDPR notification will almost certainly also trigger NIS2 notification, and may need to go to two different authorities (the data protection authority for GDPR; the NCA for NIS2). Build a single escalation path that satisfies both simultaneously rather than running two separate workflows.

---

## Common Pitfalls

**❌ Treating the BAA or DPA as a legal formality to sign and file.**
These agreements define your obligations. Read them before signing. If the client's template contains indemnification terms or breach notification timelines your team can't meet, negotiate before signing — not after a breach.

**❌ Assuming compliance certification = current compliance posture.**
A SOC 2 Type II report covers a historical period. A HIPAA audit happened 18 months ago. Compliance certifications describe the past; your job is to support the present. Treat certification documents as baselines, not guarantees.

**❌ Deploying tooling into compliance scope without documenting the decision.**
An EDR agent deployed on a PCI CDE system becomes part of PCI scope. A SIEM ingesting PHI-adjacent logs becomes a HIPAA-covered system. Every tool you deploy into a compliance environment extends that environment's boundary. Make scope decisions explicitly and document them.

**❌ Not updating the IR runbook for regulatory notification timelines.**
The standard IR runbook has no regulatory notification steps. GDPR's 72-hour window and HIPAA's 60-day window require different responses to the same incident. Run this addendum's IR checklist items during onboarding, not during an active incident.

**❌ Letting compliance gaps drive scope creep.**
Discovery will surface compliance gaps — missing DMARC enforcement, unencrypted PHI in email, PCI systems on a flat network. These are findings to document and prioritize, not reasons to expand the engagement scope on the spot. Log them in the remediation tracker and discuss scope adjustments through the normal change process.

**❌ Assuming NIS2 only applies to the client, not the MSSP.**
ICT service management (B2B) is an essential entity sector under NIS2. A mid-sized MSSP operating in the EU may have its own NIS2 registration and Article 21 obligations independent of its clients. Confirm your own classification before advising clients — arriving at a client NIS2 gap analysis while your own compliance is incomplete is a credibility problem and a legal one.

**❌ Treating NIS2's 24-hour early warning as a full incident notification.**
The three-stage NIS2 reporting timeline is sequential — the 24-hour early warning is a low-information heads-up that an incident is occurring, not a full report. MSSPs often confuse the stages. Brief the client's NCA point of contact on the format difference: stage one buys you time; stage three is where the full analysis goes. Missing the 24-hour window because you were waiting for complete information is the failure mode to avoid.

**❌ Overlooking NIS2 management training as a box to check.**
NIS2 Article 21 explicitly requires members of the governing body to receive cybersecurity training — not just awareness that training happened, but their own participation. This is frequently skipped because executives assume IT handles it. If a significant incident occurs and the board cannot demonstrate they received training, this becomes a direct management liability item, not just a compliance finding.
