# Client Offboarding Checklist

> **Goal:** Close the engagement cleanly — revoke all access, remove all tooling, transfer all data the client owns, and leave no security loose ends on either side.

> **When to run this:** Any planned or unplanned end-of-engagement: contract non-renewal, client in-house transition, client acquisition, or termination for cause. The access and data steps apply regardless of the reason the engagement is ending.

---

## Pre-Offboarding Planning

- [ ] Confirm the effective end date in writing — get it in email or a signed amendment; verbal agreements cause disputes
- [ ] Review the contract for offboarding obligations: data return timelines, notice periods, post-termination data retention requirements
- [ ] Identify all MSSP-held systems, credentials, and tooling deployed for this client
- [ ] Build the offboarding task list from this checklist and assign owners for each section
- [ ] Notify the client of the offboarding timeline and what you'll need from them (e.g., someone to receive access revocations, confirm data transfer)
- [ ] Schedule an offboarding call: review what will be transferred, what will be deleted, and when
- [ ] Confirm whether client has a replacement MSSP or in-house team taking over — this affects what documentation you transfer and in what format
- [ ] Confirm any ongoing obligations that survive contract termination: incident disclosure windows, data retention for compliance, outstanding remediation items

---

## Access Revocation — MSSP Access to Client Systems

_Revoke all MSSP-held access to client systems. Do not leave credentials or access that could persist beyond the engagement end date._

- [ ] Revoke all MSSP accounts in client Active Directory / Azure AD / Okta
- [ ] Revoke cloud console access: AWS IAM users/roles, Azure service principals, GCP service accounts — confirm deletion, not just deactivation
- [ ] Revoke firewall admin access and remove any MSSP-provisioned VPN credentials
- [ ] Revoke DNS admin access
- [ ] Revoke Microsoft 365 or Google Workspace admin access
- [ ] Remove MSSP team members from any shared password vaults (1Password, Bitwarden, CyberArk) that contain client credentials
- [ ] Revoke access to client PSA / ticketing system if applicable
- [ ] Remove MSSP accounts from client EDR console (if MSSP had access to client-owned EDR, not MSSP-managed EDR)
- [ ] Remove MSSP from any shared Slack/Teams workspaces or communication channels
- [ ] Remove MSSP access from client documentation systems (Confluence, SharePoint, Notion)
- [ ] Audit access logs for completeness: confirm no MSSP account has had activity on client systems after the offboarding date

---

## Access Revocation — Client Access to MSSP Systems

_Remove client access from MSSP-operated platforms. A former client with active access to your multi-tenant ASM or SAT platform is a data and liability risk._

- [ ] Disable all client-facing portal accounts (ASM dashboard, SAT platform, SIEM portal)
- [ ] Revoke any API keys or tokens issued to the client
- [ ] Remove client from MSSP ticketing/PSA system — archive client record, do not delete (needed for records)
- [ ] Confirm no client-side accounts remain with access to other clients' data (in multi-tenant platforms, verify tenant isolation)

---

## Tooling Removal

_Remove all MSSP-deployed tooling from client endpoints and infrastructure. Leaving agents or sensors running after engagement end is a liability._

- [ ] Generate a full list of all endpoints with MSSP-deployed EDR agents
- [ ] Uninstall EDR agents from all client endpoints — confirm uninstall via console (ghost devices with active agents are a real scenario)
- [ ] Remove SAT training platform integration: revoke AD sync credentials, disable automated user provisioning, confirm no further email is scheduled to client users
- [ ] Stop all active ASM scans: remove client domains/IP ranges from scan scope, confirm scanning has ceased
- [ ] Remove MSSP SIEM log collectors, forwarders, and agents from client systems
- [ ] Remove any network monitoring sensors or span port configurations
- [ ] Remove remote access tooling (RMM agents, remote support tools) deployed by MSSP
- [ ] Confirm software licensing: if MSSP was managing the licenses (EDR, SAT), notify vendor of the change — unused licenses that stay active cost money
- [ ] Document all tooling removed and the date of removal — this is evidence if a dispute arises later

---

## Data Transfer and Handling

_The client owns the security data about their environment. Transfer what they're entitled to; delete what you're not obligated to retain._

### Transfer to Client

- [ ] Export and deliver the current asset register (ASM findings, IP ranges, discovered assets)
- [ ] Export all open findings and remediation tracker items — client needs to hand these to their next provider
- [ ] Deliver all historical monthly status reports and QBR documents from the engagement
- [ ] Provide incident records and post-incident review documents for all P1/P2 events during the engagement
- [ ] Export and deliver the IAM gap analysis, cloud exposure summary, and security stack inventory from the initial discovery
- [ ] Deliver the phishing campaign history: all campaigns, click rates, training completion rates per user (where permitted by data privacy agreements)
- [ ] Transfer any client-specific documentation stored in MSSP systems: network diagrams, policy documents, credentials the client provided
- [ ] Confirm delivery format and method with the client — encrypted archive, secure transfer, or direct platform export

### Deletion

- [ ] After transfer confirmation, delete client data from MSSP systems per the data retention schedule in the contract
- [ ] Delete client-specific credentials stored in MSSP vaults
- [ ] Remove client configuration from MSSP multi-tenant platforms (ASM tenant, SAT tenant, SIEM tenant)
- [ ] Confirm deletion of any client PII stored in MSSP ticketing, documentation, or communication systems, subject to retention requirements
- [ ] Document what was deleted, when, and by whom — required for GDPR Article 28 compliance and useful for any future disputes

---

## Compliance-Specific Offboarding

_Run the relevant section(s) if the client's engagement was subject to a compliance framework._

### HIPAA

- [ ] Confirm obligations under the Business Associate Agreement regarding PHI at termination: most BAAs require return or destruction of PHI within a specified timeframe
- [ ] Document the PHI destruction or return event — include date, method, and confirmation of completion
- [ ] Retain a copy of the signed BAA per your own records retention policy (typically 6 years minimum under HIPAA)

### PCI-DSS

- [ ] Confirm removal of MSSP tooling from the client's Cardholder Data Environment (CDE)
- [ ] Notify the client's QSA or compliance contact of the MSSP change — the MSSP is often listed as a service provider in the client's PCI documentation
- [ ] Transfer any PCI-relevant evidence you collected (scan reports, log exports) if these are needed for an ongoing audit period

### GDPR

- [ ] Terminate the Data Processing Agreement per its termination clause — this typically requires written notice
- [ ] Fulfill the DPA's data return and deletion obligations within the required timeframe
- [ ] Remove the MSSP from the client's processor register (you can notify them to do this, but they own it)
- [ ] Retain records of your own processing activities per GDPR Article 30 requirements

### SOC 2

- [ ] If the MSSP was a subservice organization in the client's SOC 2 scope: notify the client and their auditor of the transition before the audit period closes
- [ ] Provide a bridge letter or transition summary if the audit period spans the engagement end date
- [ ] Transfer evidence collected during the audit period — this may be needed for the client's annual audit even after you're no longer engaged

---

## Final Deliverables

- [ ] **End-of-Engagement Security Report** — a summary of the client's security posture at engagement close: open findings count, remediation completion rate, posture trend over the engagement period
- [ ] **Data Transfer Confirmation** — written acknowledgment from the client that they've received all transferred data
- [ ] **Access Revocation Confirmation** — internal documentation that all access has been revoked (with dates)
- [ ] **Tooling Removal Confirmation** — screenshot or console export confirming all agents and sensors are removed
- [ ] **Handover Notes for Successor Provider** (optional, at client's request) — summary of the environment, tool configurations, and open items to help the incoming MSSP get up to speed faster

---

## Internal Closeout

- [ ] Archive the engagement record in the MSSP documentation system — do not delete; this is your audit trail
- [ ] Close or archive all open tickets in PSA — note the reason for closure (engagement ended)
- [ ] Log the offboarding completion date and confirm all checklist items are done
- [ ] Conduct a brief internal retrospective: what went well in this engagement? What would you do differently?
- [ ] Update pipeline metrics: log the reason for engagement end (renewal missed, in-house transition, client acquisition, etc.)
- [ ] Follow up on outstanding invoices before the engagement officially closes — it's much harder after

---

## Suggested Deliverables

- **End-of-Engagement Report** — security posture at close, delivered to the client before engagement end date
- **Data Transfer Package** — all client-owned data transferred in agreed format, with delivery confirmation
- **Access and Tooling Removal Log** — internal record confirming all access and tooling removed, with dates
- **Compliance Termination Documents** — BAA, DPA, or subservice agreements formally terminated per their terms

---

## Common Pitfalls

**❌ Leaving EDR agents running after engagement end.**
A ghost agent on a client's endpoint — installed by you, no longer monitored — is a security and liability risk. You're collecting data from a system you no longer have authorization to monitor. Confirm agent removal in the console. Don't trust the uninstall script ran without verification.

**❌ Treating data deletion as optional.**
If your contract or a DPA specifies a data deletion timeline, it's not a suggestion. GDPR Article 28 requires data processors to delete or return personal data at the end of services. Non-compliance exposes both you and your client to regulatory risk.

**❌ Not getting written confirmation of data receipt before deleting.**
Transfer the data, get written confirmation the client received it, then delete. If you delete before they confirm, and they later claim they didn't receive it, you have no recourse.

**❌ Skipping the compliance-specific offboarding steps when they apply.**
A BAA or DPA doesn't automatically terminate cleanly just because the service contract ended. Both require specific termination steps. The HIPAA BAA's data destruction requirement and GDPR DPA's return/delete obligation both have timelines that run independently of your service end date.

**❌ Leaving credentials in shared vaults.**
The client provided VPN credentials, cloud console access, and service account passwords over the course of the engagement. These are stored somewhere in your systems. A thorough audit of vaults and documentation is the only way to confirm they're all revoked and purged — a quick mental review isn't sufficient.

**❌ Not doing a handover call.**
A former client who can't find their asset register, doesn't have their phishing history, and doesn't know what tooling you removed is going to call you. A 30-minute handover call where you walk through what you've transferred, what you've removed, and who to call if they have questions takes less time than fielding those calls over the next 90 days.

---

## Doing This With HailBytes? Here's the Shortcut →

When offboarding a client from HailBytes ASM and SAT, you can export the full asset register, finding history, and phishing campaign history directly from the multi-tenant dashboard. Tenant deletion removes all client data from the platform. Access revocation for client portal accounts is managed at the MSSP level — no back-and-forth with the client required.

[HailBytes MSSP offboarding guide →](https://hailbytes.com/mssp)
