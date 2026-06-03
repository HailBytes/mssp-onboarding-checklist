# Client Offboarding Checklist

> **When to use this:** When an engagement ends — planned contract expiry, client churn, client acquisition, or scope reduction that removes MSSP-managed tooling. Run this checklist completely. Incomplete offboarding is a security liability for both you and the departing client.

> **Lead time:** Begin this process 30 days before the effective end date where possible. Emergency offboarding (e.g., client terminates immediately) compresses the timeline but does not remove any steps — reprioritize to access revocation first.

---

## Pre-Departure Planning (30 Days Out)

- [ ] Confirm the end date and scope in writing — get a signed termination notice or contract amendment, not just a verbal agreement
- [ ] Identify all MSSP-managed assets in the client environment: EDR agents, ASM configurations, SIEM ingestion rules, SAT platform enrollment, any scripts or agents deployed
- [ ] Identify all access credentials held by MSSP team: admin consoles, cloud IAM roles, AD accounts, VPN credentials, shared mailboxes
- [ ] Determine data handling obligations from the contract: what client data does the MSSP hold, what must be returned, what must be deleted, and by when
- [ ] Notify client of the offboarding checklist and timeline — get agreement on what they need from the MSSP before the end date (final reports, documentation packages, license transfers)
- [ ] Confirm whether any MSSP tooling licenses are transferable to the client or require deprovisioning
- [ ] Assign an internal offboarding owner — one person is responsible for completing and signing off on every item below

---

## Final Deliverables (Deliver Before End Date)

- [ ] **Final security posture report** — document the state of the environment at engagement close: open findings, remediation status, metrics since engagement start
- [ ] **Asset inventory handoff** — export current asset inventory from ASM and deliver to client in agreed format
- [ ] **Documentation package** — compile all client-specific documentation: network diagrams, runbooks, configuration notes, credentials stored by MSSP (in a secure transfer, not email)
- [ ] **Open findings register** — list all unresolved vulnerability findings, ranked by severity, with remediation guidance; client assumes ownership of these at offboarding
- [ ] **IR runbook handoff** — if the MSSP authored or maintained the IR runbook, deliver the final version and note that escalation paths referencing the MSSP must be updated
- [ ] **Incident history summary** — list all P1/P2 incidents during the engagement, resolution status, and any open follow-up items
- [ ] **Training completion records** (if SAT was in scope) — export phishing simulation history and training completion data for client HR/compliance records
- [ ] **Compliance evidence package** (if applicable) — deliver all evidence exports relevant to HIPAA, PCI, SOC 2, CMMC, or GDPR obligations that the client will need for ongoing audits

---

## Access Revocation (Complete on or Before End Date)

Access must be revoked in this order: highest-privilege first.

### MSSP-Held Credentials to Revoke

- [ ] Cloud consoles: remove MSSP IAM roles/accounts from AWS, Azure, GCP (do not just disable — delete or deprovision the role)
- [ ] Active Directory / Entra ID: remove all MSSP service accounts and user accounts; audit for any accounts created during the engagement
- [ ] EDR console: remove MSSP admin access; if MSSP managed the console on behalf of the client, transfer ownership before removing access
- [ ] SIEM / MDR platform: remove MSSP analyst accounts; confirm client has admin access before removing MSSP access
- [ ] ASM platform: offboard client from MSSP multi-tenant dashboard; confirm client has a standalone account or data export before deleting tenant
- [ ] SAT platform: transfer client tenant ownership or export all data before deprovisioning MSSP admin access
- [ ] Email security platforms (SEG, DMARC tooling): remove MSSP admin access; confirm client has independent access
- [ ] Firewall admin access: revoke VPN credentials and firewall admin accounts; confirm client IT has a working admin account before removing MSSP access
- [ ] PSA/ticketing system: close or archive client record; ensure no MSSP tickets reference credentials or sensitive data in plaintext
- [ ] Shared password manager / secrets vault: remove all client credentials stored in MSSP-controlled systems; transfer any credentials the client needs to their own vault

### Credential Cleanup Confirmation

- [ ] Have client IT confirm all MSSP accounts are no longer visible in their AD/IdP
- [ ] Confirm no MSSP accounts remain in any cloud IAM audit logs as active after the end date
- [ ] Rotate any shared credentials (e.g., shared admin accounts) that MSSP had access to — the client should rotate these as standard practice regardless

---

## Tool Decommissioning

- [ ] **EDR agents:** Determine who deprovisions agents — if MSSP managed this, confirm with client before removal; document which systems had agents deployed
- [ ] **ASM scanner:** Remove any persistent scan credentials or API keys granted to ASM platform; confirm client has removed ASM from their allowlists/firewall exceptions if applicable
- [ ] **SIEM forwarding rules:** Remove any log forwarders, syslog configurations, or agent collectors deployed during the engagement; confirm client IT knows what was installed and where
- [ ] **Monitoring integrations:** Remove any webhook, API, or integration connections between MSSP tools and client systems (PagerDuty, Teams/Slack alerting, email routing)
- [ ] **Network access:** Revoke any persistent VPN profiles, jump host access, or site-to-site tunnel configurations specific to MSSP access

---

## Data Handling and Retention

- [ ] Identify all client data stored in MSSP systems: logs, reports, exported telemetry, client credentials, contact lists
- [ ] Follow contract obligations for data deletion vs. retention — if no contract clause, default to 90-day deletion after offboarding and confirm with client in writing
- [ ] Confirm deletion of any client PII or regulated data (PHI, CHD, CUI) from MSSP systems per the applicable regulatory obligation — document the deletion
- [ ] If the client requests a data export before deletion, deliver via encrypted transfer (not email for sensitive data)
- [ ] Update MSSP's own DPA/BAA termination records: note the end date, confirm data deletion, file the termination record

---

## Internal MSSP Closeout

- [ ] Close all open tickets in PSA/ticketing system related to this client
- [ ] Archive client record — retain for the period required by your own compliance obligations, then schedule deletion
- [ ] Conduct internal post-engagement review: what worked, what didn't, what would you do differently
- [ ] Update team knowledge base: if the engagement surfaced a novel problem, document the solution before institutional knowledge walks out
- [ ] Recover any hardware (on-prem appliances, network taps, sensors) deployed during the engagement
- [ ] Confirm with finance: all invoicing is current; no outstanding credits or open billing disputes
- [ ] Release any reserved capacity (monitoring slots, analyst time) back to the team's queue

---

## Client Relationship Close

- [ ] Send formal offboarding confirmation to client: a short email summarizing what was done, what was delivered, and what was revoked — with a timestamp
- [ ] Request feedback: even clients who churn are a source of honest improvement data; a short retrospective call or survey is worth the ask
- [ ] Ask for a reference or case study permission (see [case-studies/README.md](../case-studies/README.md)) — departing clients often agree if the engagement went well and you ask promptly
- [ ] Confirm the client has a security operations plan post-MSSP: if they're leaving without a replacement, note the gap in the offboarding confirmation — this protects you from being blamed for a post-departure incident

---

## Common Pitfalls

**❌ Leaving MSSP accounts active "in case the client comes back."**
An active admin account in a former client's environment is a liability — for them and for you. If the client re-engages, reprovisioning takes less time than managing the risk of an orphaned account.

**❌ Deleting client tenant before delivering the data export.**
Clients routinely need historical data for audits 12–18 months after offboarding. Get written confirmation that they have everything they need before you delete anything.

**❌ Assuming the client's IT team knows where everything was deployed.**
They may not. The asset map from Week 1 and the decommissioning checklist above are the source of truth — don't assume the client knows what you installed. Walk them through it.

**❌ Skipping the offboarding confirmation email.**
This is your documentation that you completed your obligations. If there's a security incident at the client 30 days after offboarding and they blame residual MSSP access, a timestamped email confirming access revocation is your defense.

**❌ Treating data deletion as optional.**
GDPR, HIPAA, and most enterprise contracts have explicit data deletion obligations. "We probably deleted it" is not a legal defense. Document the deletion and when it occurred.
