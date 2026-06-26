# Baseline Security Posture Report

> **When to use:** Deliver at the end of Week 3. This is the first major client-facing deliverable of the engagement and should reflect findings from Weeks 1–3. Keep it to 8–12 pages — clients don't read 40-page reports.
>
> **Audience:** Client IT lead (technical detail), business sponsor (executive summary only).
>
> **Before sending:** Validate every Critical and High finding — don't put a finding in front of a client until you've confirmed it's real.

---

| Field | Value |
|-------|-------|
| **Client:** | [CLIENT NAME] |
| **Report Period:** | Day 1 – Day 21 (Weeks 1–3 of Onboarding) |
| **Prepared By:** | [MSSP NAME], [ANALYST NAME] |
| **Report Date:** | [DATE] |
| **Classification:** | Confidential — For [CLIENT NAME] Internal Use Only |
| **Next Report:** | Monthly Status Report — [TARGET DATE] |

---

## Executive Summary

> _Write this last. 3–5 sentences maximum. Plain language — no jargon. Assume the reader is a business executive, not a security engineer. Answer: What's the overall posture? What's the most urgent risk? What happens next?_

[CLIENT NAME]'s security posture assessment identified **[X] Critical** and **[X] High** risk findings across the environment. The most significant risks are [top 1–2 findings in plain language — e.g., "exposed remote access services reachable from the internet" and "a significant number of employee accounts without multi-factor authentication"]. Left unaddressed, these represent the highest-probability paths to a security incident.

Remediation of Critical findings has been prioritized in the 90-day plan below. [MSSP NAME] will drive remediation in partnership with [CLIENT NAME]'s IT team, beginning immediately.

---

## Findings Summary

### Risk Distribution

| Severity | Count | Remediation Target |
|----------|-------|--------------------|
| 🔴 Critical | [X] | Immediate (within 14 days) |
| 🟠 High | [X] | Within 30 days |
| 🟡 Medium | [X] | Within 90 days |
| 🔵 Low | [X] | Backlog / informational |
| **Total** | **[X]** | |

> **Note to MSSP analyst:** Delete the "Low" row if you're not including Lows in the client-facing report. Bury Lows in the appendix. A client who sees 200 findings without clear prioritization loses confidence — not gains it.

---

## Critical & High Findings

_List only Critical and High findings here. Each finding gets a brief plain-language explanation of the risk and a concrete remediation step. Medium and Low findings go in the Appendix._

### Critical Findings

---

**[FINDING TITLE]**

| Field | Detail |
|-------|--------|
| **Severity** | Critical |
| **Asset(s) Affected** | [hostname / IP / service] |
| **Source** | [ASM scan / IAM audit / firewall review / manual review] |
| **Validated** | Yes — [brief validation note, e.g., "confirmed reachable from external IP scan"] |

**What this means:** [1–2 sentences, plain English. Not "CVE-XXXX-XXXX was detected." Say: "Your RDP service is open to the internet with no IP restriction. An attacker can attempt to brute-force or exploit it from anywhere in the world."]

**Remediation:** [Specific action — not "remediate the vulnerability." Say: "Restrict RDP access to [VPN IP range] at the firewall level. If RDP must remain accessible externally, enforce Network Level Authentication and require MFA via RD Gateway."]

**Owner:** [MSSP / Client IT / Joint]
**Target Date:** [DATE]

---

_[Repeat block for each Critical finding]_

---

### High Findings

---

**[FINDING TITLE]**

| Field | Detail |
|-------|--------|
| **Severity** | High |
| **Asset(s) Affected** | [hostname / IP / service] |
| **Source** | [source] |
| **Validated** | Yes |

**What this means:** [Plain-language description]

**Remediation:** [Specific action]

**Owner:** [MSSP / Client IT / Joint]
**Target Date:** [DATE]

---

_[Repeat block for each High finding]_

---

## Attack Surface Exposure (ASM)

_Summary of internet-facing exposure discovered during Week 1–3. This section is derived from ASM scan results._

### Discovered Asset Count

| Asset Type | Client-Reported | Discovered by ASM | Delta (shadow/unknown) |
|------------|-----------------|-------------------|------------------------|
| Domains | [X] | [X] | [X] |
| Subdomains | [X] | [X] | [X] |
| Public IPs | [X] | [X] | [X] |
| SSL Certificates | [X] | [X] | [X] |
| Cloud assets | [X] | [X] | [X] |

> _The delta column is important — it shows assets the client didn't know about. Shadow IT and forgotten infrastructure are consistently where attackers find their initial foothold._

### Exposed Services Summary

| Service | Asset | Exposure | Finding Severity |
|---------|-------|----------|-----------------|
| [e.g., RDP / TCP 3389] | [host] | Reachable from internet | Critical |
| [e.g., phpMyAdmin] | [host] | Publicly accessible admin panel | High |
| [e.g., Expired SSL cert] | [domain] | Certificate expired [DATE] | Medium |

### SSL/TLS Status

- Certificates expiring within 30 days: **[X]**
- Certificates already expired: **[X]**
- Certificates with weak cipher suites: **[X]**

---

## Identity & Access Risk

_Summary of IAM audit findings from Week 1._

| Metric | Count | Benchmark / Flag Level |
|--------|-------|------------------------|
| Total user accounts (AD/IdP) | [X] | — |
| Accounts with no login in 90+ days (stale) | [X] | Flag if >10% of total |
| Privileged accounts (Domain Admin / Global Admin) | [X] | Flag if >5 for SMB |
| Admin accounts without MFA | [X] | Flag if >0 |
| Remote access accounts without MFA | [X] | Flag if >0 |
| Shared/generic accounts identified | [X] | Flag if >0 |
| Service accounts with no documented owner | [X] | — |

**Key risks identified:**

- [ ] [Specific finding — e.g., "12 accounts with Domain Admin rights; best practice for this environment is ≤3."]
- [ ] [Specific finding — e.g., "4 admin accounts authenticate without MFA — a confirmed admin compromise risk."]
- [ ] [Specific finding — e.g., "37 stale accounts remain active in AD; several belong to former employees."]

---

## Phishing Baseline Results

> _Share aggregate and department-level data with client leadership. Do not share user-level click data in this report — reserve that for the IT lead managing remediation._

**Campaign period:** [DATE] – [DATE]
**Target group:** All employees / [specific group — describe without naming individuals]
**Emails delivered:** [X]

| Metric | Result | Industry Avg (first campaign) |
|--------|--------|-------------------------------|
| Email open rate | [X]% | ~50–60% |
| Click rate | [X]% | 30–40% |
| Credential submission rate | [X]% | 10–20% |
| Users who reported the email | [X]% | 2–5% |

**Department breakdown:**

| Department | Click Rate | Action |
|------------|-----------|--------|
| Finance | [X]% | [Targeted training scheduled / No action needed] |
| Executive | [X]% | [Targeted training scheduled / No action needed] |
| Engineering | [X]% | [Targeted training scheduled / No action needed] |
| [Other] | [X]% | — |

**Takeaway:** [1–2 sentences contextualizing the results. E.g., "A [X]% click rate is consistent with organizations at an early security awareness maturity stage. The 6-month improvement target is below 10%. Targeted training for Finance and Executive users begins in Month 2."]

---

## Patch Gap Summary

| Category | Total Assets | Fully Patched | Critically Behind (>90 days) | EOL / Unsupported |
|----------|-------------|---------------|-----------------------------|--------------------|
| Windows endpoints | [X] | [X] | [X] | [X] |
| macOS endpoints | [X] | [X] | [X] | [X] |
| Windows servers | [X] | [X] | [X] | [X] |
| Linux servers | [X] | [X] | [X] | [X] |

**EOL/Unsupported assets identified:** [List OS/software versions, e.g., "Windows Server 2012 R2 — 2 servers; Windows 7 — 1 endpoint; Adobe Acrobat XI — multiple endpoints"]

**Priority patch targets:**

1. [Specific asset — highest risk patch gap]
2. [Specific asset]
3. [Specific asset]

---

## Cloud & SaaS Exposure

| Check | Status | Notes |
|-------|--------|-------|
| Public S3 / Blob storage buckets | [None found / X found] | [Details if found] |
| Public cloud storage shares (Drive, OneDrive) | [None found / X found] | [Details if found] |
| OAuth apps with excessive permissions | [None found / X found] | [App names if found] |
| Former employee accounts still active in cloud | [None found / X found] | [Details if found] |
| Unsanctioned cloud services identified | [None found / X found] | [Services if found] |
| API credentials/keys exposed in public repos | [None found / X found] | [Repo/credential type if found] |

---

## 90-Day Remediation Roadmap

> _This section sets the remediation agenda for the post-onboarding phase. Assign ownership and realistic dates — don't pad timelines to look conservative._

| # | Finding | Severity | Owner | Target Date | Status |
|---|---------|----------|-------|-------------|--------|
| 1 | [Critical finding] | Critical | [MSSP / Client IT] | [DATE] | Open |
| 2 | [Critical finding] | Critical | [MSSP / Client IT] | [DATE] | Open |
| 3 | [High finding] | High | [MSSP / Client IT] | [DATE] | Open |
| 4 | [High finding] | High | [MSSP / Client IT] | [DATE] | Open |
| 5 | [High finding] | High | [MSSP / Client IT] | [DATE] | Open |
| 6 | [Medium finding] | Medium | [MSSP / Client IT] | [DATE] | Open |

_Full remediation tracker (including all Medium and Low findings) is maintained in [PSA / shared document link]._

---

## What to Expect in Month 2

The monthly status report will track:

- **Finding delta:** New findings vs. findings remediated since this baseline
- **Patch compliance trend:** % of endpoints fully patched (target: improvement from baseline)
- **Phishing campaign results:** Second campaign results vs. this baseline click rate
- **Open remediation status:** Tracker of all items from the 90-day roadmap

The first Quarterly Business Review is scheduled for **[DATE — approximately Day 90]**.

---

## Appendix — All Findings Detail

_Optional: include full ASM scan export, full IAM user list, or full patch gap spreadsheet here, or reference the location in your shared documentation system._

| ID | Title | Severity | Asset | Source | Status |
|----|-------|----------|-------|--------|--------|
| F-001 | [Finding] | Critical | [Asset] | [Source] | Open |
| F-002 | [Finding] | High | [Asset] | [Source] | Open |
| F-003 | [Finding] | Medium | [Asset] | [Source] | Open |
| F-004 | [Finding] | Low | [Asset] | [Source] | Open |

---

_This report reflects assessment findings as of [DATE]. The security landscape changes continuously — findings may emerge, change, or be remediated between this report and the next monthly status report._

_[MSSP NAME] | [MSSP WEBSITE] | [SUPPORT CONTACT]_
