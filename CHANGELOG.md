# Changelog

All notable changes to this project are documented here.
Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

---

## [Unreleased]

---

## [1.2.0] — 2026-06-26

### Added

- Markdownlint CI job (`markdown-quality.yml`) — enforces consistent Markdown
  style on every PR; custom rules documented in `.markdownlint-cli2.jsonc`
- Editorial-leftover detection job — blocks PRs that contain merge conflict
  markers or unresolved `TODO`/`FIXME` tokens
- Supply chain attack IR playbook (section 4.6) in `incident-response-runbook.md`
- Insider threat IR playbook (section 4.7) in `incident-response-runbook.md`

### Changed

- Cross-linked IR runbook from all phase checklists where escalation is
  referenced
- Normalized heading levels and list styles across all docs to pass lint

---

## [1.1.0] — 2026-06-25

### Added

- `templates/breach-notification-letters.md` — ready-to-fill notification
  letters for HIPAA, GDPR, US state law, and PCI incidents
- `templates/client-communication-emails.md` — ready-to-send email templates
  for each onboarding phase (kickoff through Month 1 reporting)
- `templates/baseline-security-posture-report.md` — Week 3 deliverable with
  ASM findings, IAM risks, phishing baseline, patch gaps, and 90-day roadmap
- NIS2 section in `checklists/compliance-onboarding-addendum.md`
- Regulatory breach notification quick-reference appendix in
  `templates/incident-response-runbook.md`
- `.github/workflows/markdown-link-check.yml` — CI job to catch broken
  internal links before they merge; external-link scan runs weekly on a cron
- BEC/wire fraud IR playbook (section 4.5) in `incident-response-runbook.md`
- Staffing caveat for response-time SLAs in the IR runbook
- `checklists/client-offboarding.md` — access revocation, data return,
  agreement closure, and handoff steps

---

## [1.0.1] — 2026-05-31

### Added

- `checklists/compliance-onboarding-addendum.md` — HIPAA, PCI-DSS, SOC 2,
  CMMC, and GDPR steps for regulated-client engagements

### Fixed

- Broken and stale links across all checklists and tooling guides (quality
  review pass)
- Stale `/mssp` link in `tooling-decisions/asm-tool-selection.md` Related
  Resources section
- Brand inconsistencies and outdated product references

---

## [1.0.0] — 2026-05-16

### Added

- `checklists/day-1-kickoff.md` — stakeholders, access, and scope sign-off
- `checklists/week-1-discovery.md` — asset inventory, IAM audit, cloud
  exposure
- `checklists/week-2-tooling-deployment.md` — EDR, ASM, SAT, and SIEM
  deployment
- `checklists/week-3-baseline-assessment.md` — first ASM scan, phishing
  baseline, posture report
- `checklists/week-4-reporting-cadence.md` — reporting setup, SLAs, and
  client handoff
- `checklists/ongoing-monthly-cadence.md` — monthly operations and QBR prep
- `templates/client-kickoff-agenda.md` — 60-minute kickoff call agenda with
  facilitator notes
- `templates/discovery-questionnaire.md` — ~35-question client discovery form
- `templates/monthly-status-report.md` — monthly client-facing report template
- `templates/quarterly-business-review.md` — QBR document for CISO/VP-level
  audiences
- `templates/incident-response-runbook.md` — IR runbook with escalation paths,
  comms templates, and playbooks for ransomware, data breach, phishing, and
  account compromise
- `tooling-decisions/asm-tool-selection.md` — MSSP-grade ASM criteria,
  evaluation matrix, and recommendation
- `tooling-decisions/sat-platform-selection.md` — SAT platform criteria,
  evaluation matrix, and recommendation
- `tooling-decisions/siem-vs-managed-detection.md` — DIY SIEM vs. MDR honest
  cost comparison
- `case-studies/README.md` — anonymized real-world engagement examples
  (additional case studies in progress)
- `CONTRIBUTING.md` — editorial standards, contribution guidelines, and
  case-study submission process
- MIT License

[Unreleased]: https://github.com/HailBytes/mssp-onboarding-checklist/compare/v1.2.0...HEAD
[1.2.0]: https://github.com/HailBytes/mssp-onboarding-checklist/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/HailBytes/mssp-onboarding-checklist/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/HailBytes/mssp-onboarding-checklist/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/HailBytes/mssp-onboarding-checklist/releases/tag/v1.0.0
