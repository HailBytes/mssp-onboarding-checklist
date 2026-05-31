# Week 1 — Discovery Checklist

> **Goal:** Build an accurate, documented picture of the client's environment — what they have, where it lives, who can access it, and what's already broken.

---

## Asset Inventory

- [ ] Run initial external asset discovery — domains, subdomains, IPs, certificates
- [ ] Cross-reference discovered assets against client-provided asset list (expect gaps)
- [ ] Enumerate cloud footprint: AWS accounts, Azure subscriptions, GCP projects, SaaS apps
- [ ] Identify shadow IT: assets and services not in official inventory (focus on public-facing first)
- [ ] Document all known IP ranges (owned, leased, cloud egress)
- [ ] Identify expired or near-expiring SSL certificates
- [ ] Map all public-facing web properties: company websites, customer portals, APIs, dev/staging environments
- [ ] Confirm domain registrar and DNS hosting (are they managed by the client or a 3rd party?)

---

## Network Topology Mapping

- [ ] Obtain or reconstruct network diagram (even a rough one)
- [ ] Identify network segmentation: are there VLANs? DMZ? Flat network?
- [ ] Document internet egress points — how many, where, who manages them?
- [ ] Identify remote access infrastructure: VPN, RDP, Citrix, jump hosts
- [ ] Document wireless network presence and management
- [ ] Note any OT/IoT devices on network (manufacturing, physical access systems, building management)

---

## Identity & Access Management Audit

- [ ] Request AD/Azure AD user export (last login, group memberships, admin accounts)
- [ ] Identify service accounts and their privilege levels
- [ ] Count privileged accounts: Domain Admins, Global Admins, local admins
- [ ] Check for accounts with no last login in 90+ days (stale accounts)
- [ ] Confirm MFA status for: admin accounts, remote access accounts, email accounts
- [ ] Identify shared accounts (shared credentials are an incident waiting to happen — document them now)
- [ ] Review privileged access management: is there a PAM solution? Password vault?
- [ ] Check for local admin accounts on endpoints — are they standardized or bespoke per machine?

---

## Existing Security Stack Review

- [ ] Document every security tool in use: EDR, antivirus, email gateway, WAF, IDS/IPS, DLP, CASB
- [ ] For each tool: version, last updated, who manages it, how alerts are reviewed
- [ ] Check EDR coverage: what % of endpoints have an agent? Are any excluded?
- [ ] Review email security: SPF, DKIM, DMARC status (check all sending domains)
- [ ] Check for existing vulnerability scanner — when did it last run? Are results reviewed?
- [ ] Identify any existing SIEM or log aggregation — what's being ingested? Who reviews it?
- [ ] Document any active subscriptions: threat intel feeds, breach monitoring services

---

## Cloud & SaaS Footprint

- [ ] Enumerate sanctioned SaaS: M365/Google Workspace, Salesforce, Slack, Zoom, etc.
- [ ] Check for unsanctioned cloud storage: personal Dropbox, Google Drive shares, etc.
- [ ] Review cloud storage permissions: are any S3 buckets, Blob containers, or Drive folders public?
- [ ] Check OAuth app grants in M365/Google Workspace — what 3rd party apps have access to email/files?
- [ ] Review cloud IAM: who has what level of access? Are there orphaned accounts from former employees?
- [ ] Document cloud billing contacts — misconfigurations can rack up costs quickly

---

## 3rd Party & Vendor Access Review

- [ ] Request list of all vendors with system access (MSP tools, software vendors, contractors)
- [ ] For each: what access do they have? Is it MFA-protected? Is it time-limited?
- [ ] Identify vendors with VPN access to the client network
- [ ] Check for vendor RDP or remote support tool accounts (TeamViewer, AnyDesk, etc.)
- [ ] Flag any vendors with access to sensitive data (PII, PCI, PHI) for compliance review

---

## Policy & Compliance Review

- [ ] Collect existing security policies: AUP, IR plan, password policy, BYOD policy
- [ ] Identify applicable compliance frameworks: SOC 2, HIPAA, PCI, CMMC, state privacy laws — if any apply, run the [compliance onboarding addendum](compliance-onboarding-addendum.md) alongside Week 2–4 checklists
- [ ] Check for any active audits, assessments, or certification timelines
- [ ] Note any past incidents or near-misses in the last 24 months
- [ ] Identify security awareness training history: was it done? When? What platform?

---

## Suggested Deliverables

- **Asset Register v1** — spreadsheet or platform record of all identified assets, including discovered-but-not-in-inventory items flagged separately
- **IAM Gap Analysis** — document listing stale accounts, over-privileged users, MFA gaps, and shared credentials
- **Cloud Exposure Summary** — one-page summary of public-facing cloud assets, open storage, and OAuth grants
- **Security Stack Inventory** — table of all tools: name, version, coverage, last reviewed

---

## Common Pitfalls

**❌ Clients dramatically underestimate shadow IT.**
"We only use what IT approved" is almost never true. The marketing team has a Webflow site. Finance uses a personal Dropbox for client docs. Dev has an AWS account they stood up 3 years ago. Assume shadow IT exists and look for it, don't ask about it.

**❌ Assuming Active Directory is accurate.**
Most AD environments have 30–40% stale accounts. Don't trust the list — pull last login dates and treat anything over 90 days as suspect.

**❌ Forgetting cloud storage buckets.**
Public S3 buckets and GCS buckets are a perennial source of data exposure. Run a cloud storage scan on Day 1 of discovery, not as an afterthought.

**❌ Skipping the 3rd party access review.**
Supply chain compromise starts with vendor VPN access that nobody's reviewed in 18 months. This is unglamorous work but high-value.

**❌ Treating policy review as a box-checking exercise.**
Policies that exist but aren't followed are a compliance liability. Note the gap between documented policy and observed practice.

---

## Doing This With HailBytes? Here's the Shortcut →

HailBytes ASM starts external asset discovery automatically once you add a client domain — subdomains, IPs, certificates, exposed services, and cloud assets surface within hours without manual enumeration. The Asset Register v1 is essentially auto-generated.

[See how HailBytes ASM handles discovery for MSSPs →](https://hailbytes.com/mssp)
