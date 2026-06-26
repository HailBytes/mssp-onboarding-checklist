# Client Offboarding Checklist

> **Goal:** Exit the engagement cleanly — no orphaned MSSP access, no retained client data beyond what's required, no ambiguous handoffs. A poorly executed offboarding is a security incident waiting to happen, and a liability if you're subject to HIPAA, GDPR, or PCI.
>
> **When to start:** 30 days before the engagement end date, or immediately upon receiving notice of termination.

---

## Pre-Termination Planning

- [ ] Confirm the engagement end date and review the termination notice clause in the MSA/SOW
- [ ] Determine the offboarding scenario: contract expiry, client churn, migration to new provider, client being acquired
- [ ] Identify whether a new provider is taking over — this changes the knowledge transfer obligations
- [ ] Brief internal team: account manager, analysts, technical lead — everyone needs to know the end date
- [ ] Create an offboarding project in your PSA with the end date as the milestone
- [ ] Confirm data retention obligations before destroying anything: some contracts or regulations require records to be kept for a defined period after termination

---

## Final Deliverables — Prepare Before Last Day

- [ ] **Final security posture report** — covers the full engagement period, not just the last month; include trend data, closed findings, and open items
- [ ] **Open findings summary** — every unresolved finding with current status, severity, and recommended next steps; the client owns these now
- [ ] **Asset register export** — last known state of the asset inventory
- [ ] **Remediation tracker export** — full history of findings, actions taken, and current status
- [ ] **IR runbook (client copy)** — the version filled in with client-specific contacts and escalation paths; transfer this even if they're moving to a new provider
- [ ] **Credential and access inventory** — list every system MSSP had access to (for your records, to confirm revocation completeness)
- [ ] Deliver all documents at least 3 business days before end date — not on the last day

---

## Access Revocation — MSSP Accounts on Client Systems

Complete this section before or on the final day. Every unchecked item is an orphaned access vector.

### Identity & Directory

- [ ] Remove MSSP service accounts from Active Directory / Azure AD
- [ ] Remove MSSP personnel from any client Azure AD or Google Workspace tenants
- [ ] Remove MSSP from any privileged groups: Domain Admins, Global Admins, security groups
- [ ] Search AD for any remaining accounts containing the MSSP's name or known naming convention — catch stragglers

### Network & Remote Access

- [ ] Revoke MSSP VPN credentials and certificates
- [ ] Remove MSSP IP ranges from firewall allowlists (if any were added)
- [ ] Revoke jump host or bastion access
- [ ] Remove MSSP from any remote support tool accounts (TeamViewer, AnyDesk, ConnectWise Control)

### Cloud & SaaS

- [ ] Remove MSSP from AWS IAM (users, roles, and cross-account trust policies)
- [ ] Remove MSSP from Azure RBAC and Entra ID guest accounts
- [ ] Remove MSSP from GCP IAM
- [ ] Remove MSSP admin accounts from M365 and Google Workspace
- [ ] Revoke any OAuth application grants or API keys issued to MSSP tools
- [ ] Remove MSSP from any cloud billing consoles

### Security Tooling Access

- [ ] Remove MSSP access from client's existing EDR console (if MSSP had access to client-owned tooling)
- [ ] Remove MSSP from any SIEM or log aggregation platform the client owns
- [ ] Remove MSSP from any vulnerability scanner console
- [ ] Remove MSSP from firewall management console

---

## MSSP Tool Removal from Client Environment

Tools you deployed that remain in the environment after offboarding are a liability for both parties.

- [ ] Uninstall EDR agents deployed by MSSP (or transfer management to client/new provider before uninstalling)
- [ ] Remove SIEM log collectors or forwarders deployed on client systems
- [ ] Remove ASM agents or network probes (if any were deployed on-premise)
- [ ] Remove any MSSP-installed scripts, scheduled tasks, or monitoring agents
- [ ] Confirm with client IT that all MSSP-deployed software has been removed — get written confirmation
- [ ] **Exception:** If the client is retaining a tool on their own subscription, document the transfer of management and update licensing before removing your access

---

## MSSP Internal Systems — Remove Client Data

- [ ] Disable client tenant in MSSP's multi-tenant tooling (ASM dashboard, SAT platform, SIEM)
- [ ] Export all client reports and data before disabling — you may need these for your own records
- [ ] Remove client from MSSP's PSA after archiving all ticket history
- [ ] Remove client from recurring reporting workflows, alerting rules, and scheduled scans
- [ ] Revoke client portal access credentials
- [ ] Archive (don't delete yet) client documentation per your data retention policy
- [ ] Cancel any client-specific third-party subscriptions or licenses the MSSP held on the client's behalf

---

## Legal & Compliance Agreement Closure

Handle these before the engagement ends, not after.

### HIPAA (if a BAA was executed)

- [ ] Confirm data destruction or return obligations under the BAA — HIPAA requires destruction or return of PHI upon termination
- [ ] Execute BAA termination: document the termination date and confirm no PHI remains in MSSP systems
- [ ] If data cannot be destroyed immediately (e.g., active backup retention cycles), document the reason and a destruction date — this is an allowable HIPAA exception but must be documented

### GDPR (if a DPA was executed)

- [ ] Execute DPA termination per Article 28 requirements: confirm data deletion timelines
- [ ] Notify any subprocessors (cloud providers, tooling vendors) who processed client personal data of the termination
- [ ] Confirm all personal data has been deleted or returned within the timeline specified in the DPA
- [ ] Document the deletion confirmation — you may need this if the client or a regulator asks later

### PCI-DSS (if MSSP was in CDE scope)

- [ ] Notify the client's QSA or compliance contact that MSSP access to the CDE is being terminated
- [ ] Document the access revocation date — relevant for the client's next PCI assessment
- [ ] Confirm no MSSP tooling remains in the CDE scope after offboarding

### General

- [ ] Confirm the contract termination is documented (signed termination letter or email acknowledgment from both parties)
- [ ] Archive the MSA, SOW, and any amendments per your records retention policy
- [ ] Confirm any outstanding invoices are settled before closing the record

---

## Knowledge Transfer (If Client Is Moving to a New Provider)

- [ ] Confirm what documentation the client has authorized you to share with the new provider
- [ ] Schedule a handoff call with the new provider's technical team — cover: environment overview, open findings, tool configuration, active threat intel
- [ ] Transfer documentation access (read-only is fine) for the handoff window — set an expiry date
- [ ] Provide the new provider with credentials or handoff instructions for any tools they're inheriting (not MSSP tools — only client-owned tools MSSP managed)
- [ ] Do not provide the new provider with MSSP-proprietary processes, tooling configurations, or internal documentation

---

## Client Communication

- [ ] Send a formal offboarding summary email to the client POC: what was delivered, what's open, what to do next
- [ ] Confirm the client has received and acknowledged receipt of all final deliverables
- [ ] Confirm the client knows their open findings and has a plan for who owns them going forward
- [ ] If the relationship ended on good terms, ask for a reference or case study permission — do this now, not 6 months later

---

## Internal Retrospective

Run this within 2 weeks of the engagement close — while it's still fresh.

- [ ] What went well during this engagement?
- [ ] What would we do differently on the next client?
- [ ] Were there scope creep or margin erosion issues? What caused them?
- [ ] Did anything in the offboarding process surface security or compliance gaps we should fix in our own processes?
- [ ] Update internal templates or checklists based on lessons learned

---

## Suggested Deliverables

- **Final Security Posture Report** — sent to client 3+ days before end date
- **Open Findings Summary** — transferred with clear ownership noted (client IT, new provider, or unfixed)
- **Access Revocation Confirmation** — internal document confirming every access vector was revoked, with date and person who confirmed it
- **Agreement Termination Record** — filed copy of contract termination, BAA/DPA termination if applicable
- **Offboarding Completion Sign-off** — email from client acknowledging receipt of deliverables and confirmation that the engagement is closed

---

## Common Pitfalls

**❌ Leaving MSSP accounts active "just in case."**
There is no "just in case." Every MSSP account left active after engagement end is an orphaned credential. If the client re-engages, you provision new access. Don't leave a standing back door — you'll both forget about it, and someone will eventually find it.

**❌ Skipping the new provider handoff.**
A new MSSP walking into an undocumented environment is going to repeat Week 1 discovery from scratch — and they're going to find things you missed, which looks bad for you. A clean handoff is professional and protects your reputation.

**❌ Destroying data before confirming retention obligations.**
A HIPAA BAA, GDPR DPA, or contract data retention clause may require you to keep records for 3–7 years after engagement end. Confirm before deleting. The cost of keeping archived data is lower than the cost of a regulatory inquiry.

**❌ Not documenting access revocation.**
"We revoked it" is not enough if someone asks later. Log what was revoked, when, and who confirmed it. This is your defense if a client later claims MSSP access caused a post-engagement incident.

**❌ Treating offboarding as a one-day task.**
Access revocation across AD, cloud, VPN, and security tooling takes time — especially when client IT needs to action some of it. Start 30 days out. The last day should be confirmation, not execution.

**❌ Letting the relationship end awkwardly.**
Even if the client churned, a professional offboarding is a marketing asset. Word of mouth in the SMB/mid-market is real. The MSSP that handed over clean documentation and revoked access cleanly gets recommended even by clients who left.
