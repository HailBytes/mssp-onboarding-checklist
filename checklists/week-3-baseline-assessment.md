# Week 3 — Baseline Assessment Checklist

> **Goal:** Produce a defensible, prioritized baseline security posture report. This is the deliverable that establishes your credibility with the client and sets the remediation agenda for the next 90 days.

---

## ASM — First Scan Review

- [ ] Review first full ASM scan results end-to-end
- [ ] Filter findings by severity: Critical → High → Medium — don't start with Low
- [ ] Validate each Critical/High finding: confirm it's real, not a false positive, before putting it in a report
- [ ] Tag findings by asset criticality: same vulnerability on a customer-facing app vs. an internal dev tool are not the same risk
- [ ] Identify newly discovered assets that weren't in the original asset inventory (this is common — document the gap)
- [ ] Check for exposed sensitive services: RDP, VNC, Telnet, unencrypted management interfaces open to internet
- [ ] Check for exposed admin panels: cPanel, phpMyAdmin, router admin interfaces, cloud storage UIs
- [ ] Review certificate findings: expired certs, weak cipher suites, misconfigurations
- [ ] Run suppression pass: whitelist known-acceptable findings to reduce noise in future scans
- [ ] Export raw findings for baseline record — you need this to show delta in Month 2

---

## Phishing Simulation — Baseline Campaign

- [ ] Confirm baseline phishing campaign launched (should have been scheduled in Week 2)
- [ ] Monitor campaign delivery: confirm emails are landing in inboxes, not being caught by email gateway
- [ ] Track: delivered → opened → clicked → submitted credentials → reported
- [ ] Document baseline click rate (this is your Month 1 starting point — it will look bad, and that's fine)
- [ ] Identify highest-risk departments: Finance, HR, and Executive are consistently the worst performers
- [ ] Flag any users who submitted credentials: these need immediate targeted follow-up training
- [ ] Do NOT tell the client what percentage you're targeting — keep the baseline clean

---

## Patch Gap Analysis

- [ ] Pull current patch status from EDR or endpoint management tool
- [ ] Identify OS patch level across all endpoints: Windows Update status, macOS update status
- [ ] Identify critical software patch gaps: browsers, Office suite, PDF readers, Java, common business apps
- [ ] Identify server OS patch status (often worse than endpoints)
- [ ] Check for EOL software and OS versions (Windows Server 2012, Windows 7, end-of-support macOS)
- [ ] Prioritize patch gaps by: internet-facing systems first, then servers, then endpoints
- [ ] Estimate remediation timeline with client IT

---

## Firewall Rule Review

- [ ] Pull current firewall ruleset (export or screenshot — you need a record)
- [ ] Identify "allow all" or overly permissive rules — especially any inbound `0.0.0.0/0` rules
- [ ] Check for legacy rules with no documented owner or purpose
- [ ] Confirm egress filtering exists: unconstrained outbound traffic is a data exfil and C2 enabler
- [ ] Identify any direct internet access bypassing proxy/gateway for specific systems
- [ ] Document recommended changes — don't implement without client approval and a maintenance window

---

## Privileged Access Review

- [ ] Cross-reference Week 1 IAM audit with current state — has anything changed?
- [ ] Confirm Domain Admins count: more than 5 is a red flag for most SMB environments
- [ ] Confirm admin accounts use separate admin-only credentials (not the same account used for email)
- [ ] Check for any admin accounts without MFA
- [ ] Review service account passwords: were any set 3+ years ago and never rotated?
- [ ] Identify any accounts with local admin rights who don't need them (standard user principle of least privilege)

---

## DNS & Email Security Check

- [ ] Re-check SPF, DKIM, DMARC after any Week 2 changes — confirm nothing broke
- [ ] Check DMARC reporting: is the client receiving aggregate reports? Are there unauthorized senders?
- [ ] Check for DNS misconfigurations: wildcard records, dangling DNS (DNS pointing to abandoned cloud resources)
- [ ] Check for subdomain takeover risk (dangling CNAME records pointing to unclaimed cloud/SaaS resources)
- [ ] Verify DNSSEC if required by client's compliance framework

---

## External Exposure Summary

- [ ] Compile list of all internet-facing services and their current exposure status
- [ ] Flag any services that should not be internet-facing but are
- [ ] Document cloud storage exposure (S3 buckets, Blob storage, Google Drive public links)
- [ ] Check for exposed API keys or credentials in public repositories (GitHub, GitLab, Bitbucket)
- [ ] Review dark web monitoring results if ASM platform includes this capability

---

## Suggested Deliverables

- **Baseline Security Posture Report** — executive summary + technical findings, organized by severity, suitable for sharing with client leadership. Keep it to 8–12 pages max. Clients don't read 40-page reports.
- **Patch Priority Matrix** — spreadsheet of all patch gaps ranked by risk: CVE severity + asset criticality + internet exposure
- **Phishing Baseline Report** — internal-only document with click rate by department; share summary (% rate) with client, not raw user-level data

---

## Common Pitfalls

**❌ Over-scoping the first report.**
A 60-finding report with no clear prioritization is useless. Your job is to make the Critical and High findings so clear and actionable that the client can start remediation without a 3-hour debrief. Bury the Lows in an appendix.

**❌ Not filtering ASM findings by risk tier.**
Raw ASM output is overwhelming. A client who sees 200 findings loses confidence in the service and starts questioning whether you know what you're doing. Filter to the findings that matter, validate them, and present a prioritized set.

**❌ Presenting phishing data without context.**
A 42% click rate sounds alarming. "Your employees click phishing emails at a rate consistent with organizations at your maturity level — here's the 6-month improvement plan" is actionable. Always present baseline data with trajectory and remediation plan.

**❌ Sharing user-level phishing data with client leadership.**
Don't give the CEO a list of who failed the phishing test in the first report. That creates politics that derail the security program. Share aggregate and department-level data; reserve user-level data for the IT lead who's managing remediation.

**❌ Treating the firewall review as a compliance checkbox.**
Every MSSP has pulled a firewall ruleset and found a rule from 2016 that allows RDP from `0.0.0.0/0`. This happens constantly. Don't just note it — escalate it as a Critical finding and push for immediate remediation.

---

## Doing This With HailBytes? Here's the Shortcut →

HailBytes ASM risk-tiers findings automatically, so your baseline report starts from a prioritized, validated finding set rather than raw scan output. The delta report in Month 2 is generated automatically against the baseline scan — no manual comparison required.

[HailBytes ASM for MSSPs →](https://hailbytes.com/mssp)
