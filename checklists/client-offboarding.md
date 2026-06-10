# Client Offboarding Checklist

> **When to use this:** When a client engagement ends — planned transition, churn, scope reduction, or acquisition. Run this checklist in full regardless of the reason for offboarding. The goal is a clean, documented separation with no dangling access, no compliance exposure, and no institutional knowledge lost.

> **Timeline:** Start this checklist when notice is given or the decision is made, not on the last day of service.

---

## Part 1 — Pre-Offboarding (Start Immediately on Notice)

### Notify and Assign

- [ ] Confirm the offboarding date in writing with the client — ambiguity about the end date causes access to linger
- [ ] Assign an MSSP owner for the offboarding process — one person owns this from start to close
- [ ] Notify MSSP billing, legal, and tooling teams internally of the offboarding date and client name
- [ ] Review the client contract: termination notice requirements, data retention obligations, final billing terms, any post-term support commitments

### Inventory What You Own for This Client

- [ ] List all MSSP-managed credentials for this client (admin accounts, API keys, service accounts, MFA tokens)
- [ ] List all tooling deployed: EDR agents, ASM, SAT platform, SIEM integrations, remote access tools
- [ ] List all documentation repositories: tickets, runbooks, incident records, configuration notes
- [ ] List all scheduled automated jobs or integrations tied to this client (API polling, report automation, alert routing)
- [ ] Confirm who on the client side is the handoff contact — ideally the IT lead, not just the billing contact

---

## Part 2 — Documentation & Knowledge Transfer

### Prepare Handoff Documentation

- [ ] Export and package the final **Asset Register** — all discovered assets, including shadow IT flagged during the engagement
- [ ] Export the **Security Stack Inventory** — every tool, version, configuration note, and license key you manage
- [ ] Export all **open findings and remediation items** — anything unresolved that the client or new MSSP needs to be aware of
- [ ] Compile the **Incident History** — all P1/P2 incidents during the engagement, their resolutions, and any follow-up actions still outstanding
- [ ] Export the final **IAM baseline** — current user list, privilege levels, MFA status, service accounts
- [ ] Prepare a **configuration handoff document** for each deployed tool: how it's configured, what's tuned, what's suppressed and why

### Knowledge Transfer Meeting

- [ ] Schedule a handoff call with the client IT lead and — if applicable — the incoming MSSP
- [ ] Walk through open findings, critical configurations, and any environment quirks discovered during the engagement
- [ ] Confirm the client has copies of all documentation before access is revoked — do not revoke access and then try to transfer docs

---

## Part 3 — Access Revocation

> **Order matters:** Transfer documentation first, then revoke access. Revoking access before the client has their documentation creates an emergency.

### MSSP Accounts in Client Systems

- [ ] Revoke all MSSP accounts in the client's Active Directory / Azure AD / Entra ID
- [ ] Revoke all MSSP accounts in cloud platforms: AWS, Azure, GCP — confirm IAM user deletion, not just password change
- [ ] Revoke all MSSP OAuth app grants in M365 / Google Workspace
- [ ] Remove MSSP service accounts from all client SaaS platforms (PSA integrations, ticketing connectors, etc.)
- [ ] Revoke VPN credentials or certificates used by MSSP team members for client access
- [ ] Remove MSSP from any shared password vaults or PAM systems the client uses

### Client Accounts in MSSP Systems

- [ ] Disable or remove the client's portal access in your MSSP platform (ASM, SAT dashboard, ticketing portal)
- [ ] Remove client contacts from MSSP alerting and notification lists — former clients should not receive alerts after offboarding
- [ ] Remove client from shared Slack/Teams channels if applicable

### Verification

- [ ] Confirm with the client IT lead that all MSSP accounts have been removed from their directory — have them verify, not just take your word for it
- [ ] Document the access revocation date and method in the client record

---

## Part 4 — Tooling Deprovisioning

### Agent and Sensor Removal

- [ ] Uninstall EDR agents from all client endpoints — coordinate with client IT for remote uninstall if needed
- [ ] Remove ASM scanning configurations for the client's domains and IP ranges — confirm no further scans will run after offboarding
- [ ] Remove SAT platform configuration for the client: user lists, campaign schedules, domain configurations
- [ ] Remove client from SIEM or log aggregation pipelines — confirm no further log ingestion

### License and Subscription Management

- [ ] Cancel or reassign per-client licenses that will no longer be needed
- [ ] Remove the client from any multi-tenant dashboards — confirm they cannot see other clients' data after removal (and confirm this actively, not assumptively)
- [ ] Document license changes for billing reconciliation

---

## Part 5 — Data Handling & Retention

> **Read the contract first.** Data retention obligations vary by client contract, regulatory framework, and jurisdiction. These are defaults — override per your contractual and legal obligations.

### Data You Hold About the Client

- [ ] Identify all MSSP-side data stores containing client data: logs, incident tickets, configuration backups, scan results, reports
- [ ] Determine the applicable retention period per contract and any regulatory requirement (see Part 5A below)
- [ ] Confirm where data will be retained post-offboarding and who is responsible for it
- [ ] For data that must be deleted: document the deletion method and date (simple deletion is not sufficient for sensitive data — confirm your deletion method meets the applicable standard)
- [ ] Transfer any data the client is contractually entitled to receive before deletion

### 5A — Regulatory Framework Considerations

**If the client was under HIPAA:**
- [ ] Confirm BAA obligations post-termination — HIPAA requires the business associate to return or destroy PHI at the end of the engagement, or document why destruction is not feasible
- [ ] If PHI destruction is not feasible (e.g., log archives), extend protections for the retention period per the BAA
- [ ] Obtain written confirmation from the client that PHI handoff or destruction is complete

**If the client was under PCI-DSS:**
- [ ] Confirm cardholder data (CHD) is not retained in MSSP systems post-offboarding — PCI prohibits unnecessary CHD storage
- [ ] If MSSP systems were in-scope for PCI, notify the client's QSA that MSSP is exiting scope
- [ ] Document the scope reduction for the client's records

**If the client was under GDPR:**
- [ ] Execute any data deletion or return obligations specified in the DPA
- [ ] Confirm all subprocessors with access to this client's EU personal data have also terminated processing
- [ ] Provide the client with written confirmation of data deletion if required by the DPA

**If the client was under CMMC:**
- [ ] Confirm CUI is not retained in MSSP systems unless specifically required by contract
- [ ] Document the handling of any CUI in MSSP possession per the SSP and contractual requirements

---

## Part 6 — Final Reporting & Financial Closeout

### Final Deliverables

- [ ] Deliver the **Final Security Posture Report** — a summary of the security posture at end of engagement vs. at start, with open items clearly noted
- [ ] Deliver the **Final Asset Register** and all other documentation packages (see Part 2)
- [ ] Deliver any outstanding compliance evidence or audit documentation the client needs for active certifications

### Financial Closeout

- [ ] Issue the final invoice — confirm billing period end date matches contract termination date
- [ ] Confirm any pro-rated credits or refunds owed per contract
- [ ] Resolve any outstanding disputed charges before offboarding is marked complete
- [ ] Archive client billing records per your finance retention policy

---

## Part 7 — Internal Close-Out

### Internal Record-Keeping

- [ ] Mark the client as offboarded in your PSA and CRM — do not leave them as active with a note; update the status field
- [ ] Archive all client documentation in a designated offboarded-client archive, accessible for the retention period
- [ ] Document the offboarding reason (churn, transition, acquisition, scope reduction) — this feeds retention analysis
- [ ] Document lessons learned: what went well, what gaps surfaced during the engagement, what would be done differently

### Team Offboarding

- [ ] Brief the team members who supported this client: engagement is closed, no further action unless contacted
- [ ] Confirm no analyst still has MFA tokens, saved credentials, or session tokens for this client in personal devices or password managers
- [ ] If a dedicated analyst or vCISO was assigned, ensure their notes and context are archived — not just in their head or personal notes app

---

## Common Pitfalls

**❌ Waiting until the last day to start this process.**
Access revocation, documentation packaging, and data transfer all take time. Start at notice, not at expiry. A 30-day notice period should result in a smooth offboarding; a 1-day scramble results in dangling access.

**❌ Revoking access before transferring documentation.**
Every time this happens, it becomes an emergency. Documentation first, access revocation second — always.

**❌ Skipping the incoming MSSP handoff because "that's their problem."**
A clean handoff to the incoming provider protects your reputation and reduces the risk that a gap in coverage results in an incident that gets attributed to your watch.

**❌ Assuming multi-tenant tooling automatically isolates offboarded clients.**
Verify it. Confirm the client cannot see other clients' data and that scans, alerts, and reports are fully stopped. Don't assume the platform handles it cleanly without checking.

**❌ Treating data deletion as obvious.**
"We deleted it" is not a compliance answer. Document what was deleted, when, how (secure deletion method), and who verified it. For HIPAA and GDPR clients, this documentation is required.

**❌ Not capturing lessons learned.**
Client churn is data. An offboarding with no documented reason and no lessons learned is a missed opportunity to improve retention and delivery.

---

## Offboarding Completion Sign-Off

| Item | Completed By | Date |
|------|-------------|------|
| Documentation transferred to client | | |
| All MSSP access revoked from client systems | | |
| All client access revoked from MSSP systems | | |
| Tooling deprovisioned | | |
| Data handling completed per contract/regulation | | |
| Final reports delivered | | |
| Final invoice issued | | |
| Internal records archived | | |
| **Offboarding complete** | | |
