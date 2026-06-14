# Client Offboarding Checklist

> **When to use this:** When a client contract ends — whether planned, early-terminated, or non-renewed. Run this alongside your PSA closeout process. Start no later than 2 weeks before the contract end date.
>
> **Goal:** Leave the client with a clean handoff, revoke all access completely, handle data per contractual and regulatory obligations, and close out the engagement in a way that doesn't create legal, security, or billing problems later.

---

## Pre-Offboarding Planning (2–4 Weeks Before End Date)

- [ ] Confirm contract end date and applicable notice period — document in PSA and set a task 2 weeks prior
- [ ] Identify all MSSP-held credentials and accounts provisioned for this client (use access log from Day 1 kickoff as the baseline)
- [ ] Identify all tooling deployed in the client environment: EDR agents, ASM sensors, SAT platform, log forwarders, monitoring agents
- [ ] Confirm what client data the MSSP holds: logs, findings reports, compliance documentation, credentials vault entries, questionnaire responses
- [ ] Review the contract: are there explicit data retention, data deletion, or data transfer requirements post-termination?
- [ ] Schedule final deliverables: last monthly status report, final security posture summary, compliance documentation transfer
- [ ] Flag all open remediation items — these must appear in the final handoff report regardless of ownership
- [ ] Notify internal team of offboarding timeline so no new deployments or integrations are started

---

## Final Reporting & Handoff

- [ ] Generate and deliver the final monthly status report covering the last active period
- [ ] Compile a final security posture summary: ASM finding trend (opened vs. closed over engagement), phishing click rate at start vs. end, list of critical open findings with current status
- [ ] Export all client-specific reports and findings history for client records — they should be able to hand these to their next MSSP or an auditor without calling you
- [ ] If the client has active compliance obligations (HIPAA, PCI-DSS, SOC 2, CMMC, GDPR): transfer all audit-relevant documentation — BAA/DPA copies, evidence exports, assessment records, IR timeline logs
- [ ] Document all open remediation items with status, severity, and who was assigned to own each one — do not leave the client with undocumented open risk
- [ ] Schedule a 30-minute final handoff call: walk through open findings, confirm receipt of all deliverables, answer transition questions

---

## Tool Deprovisioning

- [ ] Remove EDR/endpoint agents from all client endpoints — confirm removal via agent management console, not just license deactivation
- [ ] Delete or deactivate the client tenant/account in ASM platform
- [ ] Delete or deactivate the client account in SAT platform — export all campaign history first
- [ ] Remove SIEM/MDR data collection: log forwarders, API integrations, syslog destinations pointing to MSSP infrastructure
- [ ] Remove any network monitoring sensors or agents deployed in client infrastructure
- [ ] Deactivate any automation or scheduled tasks running against client systems (scheduled scans, automated reports, API polling)
- [ ] Confirm removal with client IT in writing — a short email or ticket confirmation that all MSSP tooling has been deprovisioned

---

## Access Revocation

Work through this list systematically. Missing one item is how MSSP credentials stay active in ex-client environments for months.

- [ ] Revoke Active Directory / Azure AD access
- [ ] Revoke firewall admin access (or remove MSSP admin account from firewall management platform)
- [ ] Revoke DNS admin access
- [ ] Revoke cloud console access: AWS IAM users/roles, Azure service principals, GCP service accounts
- [ ] Revoke Microsoft 365 or Google Workspace admin access
- [ ] Revoke VPN credentials
- [ ] Revoke any ticketing or PSA integration credentials the client side provided
- [ ] Close client portal access in MSSP dashboards
- [ ] For shared credentials or service accounts: change the passwords and hand the new credentials to client IT — do not just revoke your access while leaving a credential you once knew still active
- [ ] Verify revocation: have a team member attempt access to at least two revoked systems and confirm denial — document the verification

---

## Data Retention & Deletion

- [ ] Inventory all client data held by the MSSP: logs, ASM scan history, SAT campaign results, reports, credentials vault entries, notes, email threads
- [ ] Per contract terms: transfer, retain, or delete client data within the required timeframe
- [ ] If the contract has no explicit data term: transfer all reports and findings to the client, retain raw data for 90 days, then delete
- [ ] Delete client data from MSSP-side tooling: SIEM historical data, ASM scan records, SAT platform campaign history, documentation spaces
- [ ] Document the deletion date, method, and who performed it — this is your protection in any future dispute
- [ ] For compliance-regulated clients: verify that regulatory data retention requirements are met before deleting anything
  - HIPAA: covered entities must retain certain records for 6 years — confirm with client before deleting PHI-adjacent logs
  - PCI-DSS: 12-month log retention requirement; confirm logs are transferred or retained per the QSA's guidance
  - GDPR: DPA terms govern retention — delete per the agreement, document the deletion as required under Article 5(1)(e)
  - CMMC: CUI-adjacent incident records must be preserved 90 days post-reporting — do not delete prematurely

---

## Internal Closeout

- [ ] Close all open PSA tickets for this client and mark the account as offboarded
- [ ] Cancel or reassign any per-client tool licenses — check for licenses that auto-renew on the client's billing cycle
- [ ] Confirm billing: final invoice sent, all recurring charges cancelled, no charges will continue post-contract
- [ ] Archive client documentation to a designated offboarded client folder — do not delete, retain for dispute resolution (minimum 3 years recommended)
- [ ] Run a brief retrospective: what did onboarding miss? Which findings were never remediated? What was the root cause of client churn? Use this to improve the next engagement
- [ ] Update internal knowledge base or runbook with any client-environment-specific procedures learned during the engagement — strip client identifiers, keep the technique

---

## Suggested Deliverables

- **Final Security Posture Summary** — delivered to client before last day of contract
- **Open Findings Handoff Report** — all unresolved findings with severity and recommended next steps
- **Compliance Documentation Package** (if applicable) — BAA/DPA copies, evidence exports, IR records
- **Deprovisioning Confirmation** — written confirmation (email or ticket) that all MSSP tooling has been removed and all access has been revoked

---

## Common Pitfalls

**❌ Treating offboarding as lower priority than new client onboarding.**
Access that isn't revoked in the first week after contract end typically isn't revoked for months — until something goes wrong. Build offboarding into your PSA as a first-class process with a checklist and due dates, not a task that happens when someone remembers.

**❌ Missing service accounts and API integrations.**
Interactive admin accounts get revoked. Service accounts used for log forwarding, SIEM integrations, automated scanning, and API polling are consistently missed. These accounts often have broad permissions and no MFA. List them explicitly at engagement start and track them through to offboarding.

**❌ Not getting written confirmation of tool removal.**
If a client claims MSSP tooling caused an issue after contract end, your protection is documentation proving you confirmed removal. A one-line email or ticket close from client IT is sufficient — but get it.

**❌ Deleting client data without checking compliance obligations.**
A HIPAA client may have audit data you're contractually or legally obligated to retain even after the engagement ends. A GDPR client's DPA governs your data handling through deletion. Check the contract and the applicable framework before purging.

**❌ Skipping the final handoff call.**
Clients who leave with undocumented open findings will blame the MSSP if those findings turn into incidents. A 30-minute call with a written open items list protects both sides and is the professional close to the engagement.

**❌ Assuming the departing client wants to burn the relationship.**
Offboarding done well produces referrals, LinkedIn recommendations, and re-engagement when the client is acquired or changes leadership. Do it right regardless of why they're leaving.

---

## Compliance Addendum Reference

If the offboarding client had active compliance obligations, revisit the relevant section of [compliance-onboarding-addendum.md](compliance-onboarding-addendum.md) for framework-specific data handling and documentation transfer requirements. The same compliance frameworks that shaped onboarding shape how you close out.
