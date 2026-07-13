# Contributing to the MSSP Client Onboarding Checklist

Thanks for helping make this better. This repo is maintained by [HailBytes](https://hailbytes.com) and built for working MSSPs — contributions that come from real engagements are the most valuable.

---

## What We're Looking For

**Good contributions:**

- Checklist items you've found missing in practice
- Common pitfalls that aren't already documented
- Template improvements based on what actually works with clients
- Case studies from real engagements (see case study guidelines below)
- Corrections to outdated pricing, tooling info, or compliance references
- Tooling comparisons that remain vendor-neutral and honest about tradeoffs

**Not a fit:**

- Generic "best practices" content that isn't grounded in MSSP operations
- Vendor promotional content (including HailBytes — this repo earns trust by being useful, not by being a brochure)
- Content that contradicts the editorial bar below without a compelling reason

---

## Editorial Bar

Every contribution should meet these standards before submitting a PR:

**Practitioner-first.** If it reads like a vendor brochure or a compliance checklist written by a lawyer, it won't merge. Would a working MSSP actually use this?

**Honest about tradeoffs.** Don't recommend without acknowledging downsides. The tooling guides in this repo take positions — that's intentional — but they explain the reasoning.

**Opinionated but not dogmatic.** Take a position. Explain why. Acknowledge that other approaches work.

**Useful over comprehensive.** A tight 10-item checklist beats a 60-item one nobody finishes. When in doubt, cut.

**Accurate.** Pricing data, product features, and compliance requirements change. Cite sources where you can. Add a "Last reviewed" date to any content that will age.

---

## How to Contribute

### Before You Open Anything

Check open issues and PRs (`state:open`) for the file(s) you're about to touch. This repo has had the same one-line fix independently opened as five separate PRs because nobody checked first — don't add a sixth. If existing work already covers the gap, comment on or review it instead of opening a duplicate.

### Small Changes (typos, corrections, broken links)

Open a PR directly. No issue needed for small fixes.

### Checklist / Template Improvements

1. Open an issue first describing the gap or problem
2. Reference the specific file and section
3. If the change is substantial, describe what you'd add and why before writing it

### New Files or Significant Additions

Open an issue before the PR. Large structural changes need discussion first — otherwise you risk writing content that doesn't fit the repo's direction.

### Case Studies

Case studies are the highest-value contribution and the hardest to do right. Requirements:

- Must be a real engagement (no hypotheticals or composites)
- Must be anonymized to the point where the client is not identifiable
- Must use the [case study template](case-studies/README.md)
- Must include at least one quantified outcome (time saved, click rate improvement, findings reduced — something measurable)
- The MSSP must give explicit permission to publish
- Open an issue with the label `case-study` before writing the full draft

### Tooling Comparisons

Tooling guides need to:

- Include a "Last reviewed" date
- Acknowledge when data may be outdated
- Evaluate on criteria that matter for MSSP operations, not generic enterprise use cases
- Be willing to name HailBytes as an option but not position it as the only option

---

## Formatting

- Markdown only
- Match the header and section structure of existing files in the same directory
- Use `[ ]` checkboxes for checklist items, `|` tables for comparison matrices
- Use `<!-- NOTE: -->` comment blocks for facilitator notes or client-specific guidance
- Search for `[` before submitting any template — every placeholder needs to be filled in or clearly marked

---

## Reviewing PRs

We'll review PRs against the editorial bar above. Feedback will be direct — "this reads like a vendor brochure" is a complete review comment. Don't take it personally; it applies to HailBytes content too.

Typical review time: 3–7 business days.

---

## Questions

Open an issue. Don't email — the issue tracker keeps things visible to the community.
