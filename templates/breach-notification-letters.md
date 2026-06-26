# Breach Notification Letter Templates

> **When to use this:** During or immediately after a confirmed data breach, when regulatory notification is required. These templates cover the four most common notification obligations for MSSP-managed clients: HIPAA (HHS and affected individuals), GDPR (supervisory authority and data subjects), state breach notification laws, and PCI card brand notification.
>
> **Before sending anything:** Run the notification decision through your client's legal counsel or compliance officer. These templates cover the structure and required elements — your legal team may require modifications for specific circumstances.
>
> **Search for `[` before using any template.** Every placeholder must be filled in. Sending a notification with `[CLIENT NAME]` in it to a regulator or affected individual is a professional and legal problem.

---

## Notification Decision Checklist

Before drafting letters, confirm:

- [ ] Breach is confirmed — not just suspected. Don't start regulatory notification clocks on an unconfirmed event.
- [ ] Legal counsel has been notified and has approved initiating notifications
- [ ] Cyber insurance carrier has been notified (carriers often have specific notification requirements and preferred notification vendors)
- [ ] Affected data types have been identified: PHI? Personal data of EU residents? Payment card data? State-regulated PII?
- [ ] Affected individual count has been estimated (even rough — HIPAA thresholds differ at 500+)
- [ ] Start time of the breach has been documented (notification windows run from discovery date, not breach date)

---

## Template 1 — HIPAA: HHS OCR Breach Notification

> **Deadline:** 60 days from discovery for breaches affecting 500+ individuals. For breaches affecting fewer than 500 individuals, log and report annually to HHS. States may have stricter timelines — check applicable state law.
>
> **How to submit:** HHS OCR Breach Reporting Portal at breach.hhs.gov. This template prepares the key narrative content; the portal uses a web form for structured fields.
>
> **Who completes this:** Client's HIPAA Covered Entity (the healthcare organization, not the MSSP directly). MSSP supports evidence gathering and drafting; client Compliance Officer or Legal submits.

### HHS OCR Narrative (for portal submission)

```
HIPAA Breach Notification — [CLIENT LEGAL ENTITY NAME]

Covered Entity: [CLIENT LEGAL ENTITY NAME]
Covered Entity Type: [Healthcare Provider / Health Plan / Healthcare Clearinghouse]
Address: [CLIENT ADDRESS]
Contact: [COMPLIANCE OFFICER NAME, TITLE, PHONE, EMAIL]

Date Breach Discovered: [DATE]
Date Breach Occurred (if known): [DATE or "Under investigation"]
Approximate Number of Individuals Affected: [NUMBER — estimate if final count pending]

Type of PHI Involved:
[List the PHI elements involved, e.g.:]
- [ ] Names
- [ ] Dates (birth, admission, discharge, etc.)
- [ ] Social Security numbers
- [ ] Medical record numbers
- [ ] Account numbers
- [ ] Health insurance beneficiary numbers
- [ ] Diagnosis codes / treatment information
- [ ] Other: [SPECIFY]

Description of the Breach:
[Plain-language narrative — 2–4 paragraphs. Include:]
[1. How the breach occurred (initial access vector)]
[2. What systems or data stores were affected]
[3. The timeline: when did it start, when was it discovered, when was it contained]
[4. What safeguards were in place at the time]

Immediate Actions Taken:
[List containment and remediation steps taken after discovery]

Remediation Actions Planned or Completed:
[List systemic fixes to prevent recurrence]

Law Enforcement Involvement:
[Yes / No — if yes, name the agency and case number if available]

Was notification to individuals delayed at law enforcement request?
[Yes / No — if yes, include law enforcement written statement]
```

### HIPAA Affected Individual Notification Letter

> **Deadline:** Same 60-day window as HHS notification. Individuals must be notified by first-class mail (or email if they've consented to electronic notice). If contact information is unavailable for 10+ individuals, substitute notice via website posting or major print/broadcast media is required.

```
[DATE]

[INDIVIDUAL NAME]
[ADDRESS LINE 1]
[ADDRESS LINE 2]
[CITY, STATE, ZIP]

Subject: Important Notice About Your Health Information

Dear [INDIVIDUAL NAME or "Patient"],

We are writing to inform you of an incident that may have affected some of your protected health information.

What Happened:
[2–3 sentences. Plain language. When did it occur, when was it discovered, what type of incident was it — e.g., "unauthorized access to our electronic health records system," "a laptop containing patient records was stolen."]

What Information Was Involved:
Your information that may have been affected includes:
[List the PHI types involved — e.g., name, date of birth, medical record number, diagnosis information, etc. Do not include any data the individual wouldn't recognize as theirs.]

What We Are Doing:
[Describe remediation actions taken. Concrete, not vague. "We have:"]
- [Action 1]
- [Action 2]
- [If applicable: Notified law enforcement]

What You Can Do:
We recommend you take the following steps to protect yourself:

1. Review your Explanation of Benefits and medical bills carefully for services you did not receive.
2. Contact your health insurer if you notice any unauthorized claims.
[If SSN was involved:]
3. Consider placing a fraud alert or credit freeze with the three major credit bureaus:
   - Equifax: 1-800-685-1111
   - Experian: 1-888-397-3742
   - TransUnion: 1-800-888-4213
4. You are entitled to a free credit report from each bureau annually at annualcreditreport.com.
[If SSN was involved and high-risk breach:]
5. We are offering [NUMBER] months of free credit monitoring through [VENDOR]. To enroll, visit [URL] or call [PHONE] and use activation code [CODE] by [DATE].

For More Information:
If you have questions about this notice or about your protected health information, please contact our Privacy Officer:

[PRIVACY OFFICER NAME]
[TITLE]
[PHONE — direct line]
[EMAIL]
[BUSINESS HOURS]

You also have the right to file a complaint with the U.S. Department of Health and Human Services at hhs.gov/ocr.

We sincerely apologize for this incident and the concern it may cause you. Protecting your health information is our responsibility, and we are committed to doing better.

Sincerely,

[AUTHORIZED SIGNATORY NAME]
[TITLE]
[CLIENT ORGANIZATION NAME]
```

---

## Template 2 — GDPR: Article 33 Notification to Supervisory Authority

> **Deadline:** 72 hours from awareness of the breach. If notification cannot be completed in 72 hours, a partial notification must be sent with a reason for delay, followed by a complete notification.
>
> **Where to submit:** The lead supervisory authority for the controller's main EU establishment. In the UK post-Brexit, notify the ICO separately. Find EU supervisory authorities at edpb.europa.eu.
>
> **Who notifies:** The Data Controller (your client). If the MSSP is a Data Processor, you notify the Controller (your client) without undue delay — the Controller then notifies the supervisory authority.

```
GDPR Article 33 — Personal Data Breach Notification

To: [NAME OF SUPERVISORY AUTHORITY]
[Authority Address]

From: [CLIENT LEGAL ENTITY NAME — Data Controller]
[Address]
[VAT/Registration Number if applicable]

Contact (Data Protection Officer or designated contact):
[DPO NAME / DESIGNATED CONTACT NAME]
[TITLE]
[EMAIL]
[PHONE]

Date of This Notification: [DATE AND TIME — GDPR counts hours]
Date/Time Breach Was Discovered: [DATE AND TIME]
Date/Time Breach Occurred (if known): [DATE AND TIME, or "unknown — under investigation"]

Is this notification complete or an initial partial notification?
[ ] Complete notification
[ ] Partial notification — complete notification to follow by [DATE] because: [REASON FOR DELAY]

---

ARTICLE 33(3) REQUIRED ELEMENTS:

(a) Nature of the personal data breach:

Type of breach:
[ ] Confidentiality breach (unauthorized disclosure or access)
[ ] Integrity breach (unauthorized alteration)
[ ] Availability breach (accidental or unauthorized loss/destruction)
[ ] Multiple types: [SPECIFY]

Description of the breach:
[What happened, in plain language. 2–3 paragraphs. How did it occur? What systems/data stores were affected? How was it discovered?]

(b) Categories and approximate number of data subjects concerned:

Categories of data subjects: [e.g., customers, employees, patients, website users]
Approximate number of individuals affected: [NUMBER — estimate if unknown]
Special categories of personal data involved (Article 9):
[ ] Health data
[ ] Biometric data
[ ] Racial or ethnic origin
[ ] Political opinions
[ ] Religious/philosophical beliefs
[ ] Trade union membership
[ ] Genetic data
[ ] Sexual orientation
[ ] Criminal convictions
[ ] None

(c) Categories and approximate number of personal data records concerned:

Data types affected: [e.g., names, email addresses, phone numbers, addresses, financial data, passwords, IP addresses]
Approximate number of records: [NUMBER]

(d) Likely consequences of the breach:

[Describe the risks to individuals — identity theft, financial loss, reputational damage, discrimination, loss of confidentiality. Be honest about the risk level. The authority needs to assess severity.]

(e) Measures taken or proposed to address the breach:

Immediate containment actions:
[List actions taken — e.g., isolated affected systems, reset credentials, disabled accounts]

Remediation actions to prevent recurrence:
[List systemic fixes planned or underway]

Notification to affected individuals:
[ ] Individuals have been notified (date: [DATE])
[ ] Individual notification is planned (target date: [DATE])
[ ] Individual notification is not required because: [REASON — e.g., data was encrypted, risk to individuals is low]
[ ] Individual notification not yet assessed

---

We are available to provide any additional information required.

[AUTHORIZED SIGNATORY NAME]
[TITLE]
[CLIENT ORGANIZATION NAME]
[DATE]
```

### GDPR Article 34 — Notification to Affected Individuals

> **When required:** When the breach is "likely to result in a high risk to the rights and freedoms" of individuals. Not every breach triggers individual notification — this is a higher bar than the Article 33 supervisory authority notification. Discuss with legal counsel whether Article 34 applies.
>
> **Exemptions to individual notification (Article 34(3)):** (a) appropriate technical/organizational measures were implemented (e.g., encryption); (b) measures taken after the breach make high risk unlikely; (c) notification would require disproportionate effort (mass breach with unavailable contacts — use public communication instead).

```
[DATE]

Subject: Important notice regarding your personal data — [ORGANIZATION NAME]

Dear [NAME / "Valued Customer" / other appropriate salutation],

We are writing to inform you about an incident involving your personal data.

What happened:
[2–3 sentences. Plain language. When it occurred, when discovered, what type of incident. Avoid technical jargon.]

Your data that was affected:
[List specific data types clearly — e.g., "Your name, email address, and [OTHER DATA TYPES]." Be specific and accurate. Do not list more than was actually affected.]

What this means for you:
[Honest assessment of the risk — what could someone do with this data? Identity fraud? Targeted phishing? Reputational harm? Be honest; underplaying risk erodes trust and may not comply with the spirit of Article 34.]

What we have done:
[Concrete actions taken to contain the breach and prevent recurrence. Not vague assurances — actual steps.]

What we recommend you do:
[Specific, actionable guidance. Examples:]
- Change your password for our service immediately at [URL]
- Be alert to phishing emails that may use your name or reference [ORGANIZATION NAME]
- If you use the same password elsewhere, change it on those services too
[If financial data involved:]
- Monitor your bank and credit card statements for unauthorized transactions
- Contact your bank or card issuer if you notice anything suspicious
[If identity documents involved:]
- Consider placing a fraud alert with credit reference agencies

Your rights:
Under the General Data Protection Regulation (GDPR), you have the right to:
- Access the personal data we hold about you (Article 15)
- Request correction of inaccurate data (Article 16)
- Request erasure of your data in certain circumstances (Article 17)
- Lodge a complaint with your national data protection authority

To exercise your rights or ask questions about this incident, contact our Data Protection Officer:
[DPO NAME or designated contact]
[EMAIL]
[PHONE]

You may also contact your national supervisory authority:
[NAME OF LEAD SUPERVISORY AUTHORITY AND CONTACT URL]

We take full responsibility for this incident and sincerely apologize for any concern or inconvenience caused.

[AUTHORIZED SIGNATORY NAME]
[TITLE]
[ORGANIZATION NAME]
```

---

## Template 3 — State Breach Notification (US — Adaptable)

> **Important:** All 50 US states, DC, Puerto Rico, and several territories have breach notification laws with different triggers, timelines, and required content. This template covers the most common elements; check your state's specific requirements before sending.
>
> **Key variations to check for your state:** (1) timeline — ranges from "expedient/unreasonable delay" to 30, 45, 60, or 90 days; (2) whether a copy must be sent to the State AG or regulator; (3) threshold — some states require notification only above a minimum number of affected residents; (4) risk-of-harm qualifier — many states only require notification if the breach creates a risk of harm; (5) substitute notice rules for large-scale breaches.

### Notification to Affected Individuals

```
[DATE]

[INDIVIDUAL NAME]
[ADDRESS]

Subject: Notice of Data Security Incident

Dear [NAME or "Valued Customer"],

[ORGANIZATION NAME] is writing to inform you of a data security incident that may have involved your personal information.

What Happened:
On or about [DATE], we discovered that [BRIEF DESCRIPTION — e.g., "an unauthorized party gained access to our systems," "a laptop containing customer information was stolen," "a vendor inadvertently exposed customer records"]. We immediately took steps to [BRIEF CONTAINMENT ACTIONS].

What Information Was Involved:
The following types of personal information may have been affected:
[List only the specific data elements involved. Common elements under state law:]
- [ ] Full name
- [ ] Social Security number
- [ ] Driver's license or state ID number
- [ ] Financial account numbers (with security code, access code, or password)
- [ ] Payment card numbers
- [ ] Medical/health information
- [ ] Health insurance information
- [ ] Username/email address and password or security questions/answers
- [ ] Biometric data
- [ ] Other: [SPECIFY]

What We Are Doing:
[Describe remediation actions. Specific and concrete.]
- We have [CONTAINMENT ACTION]
- We have engaged [forensic firm / law enforcement / other]
- We are implementing [systemic fix]
[If credit monitoring offered:]
We are offering you [NUMBER] months of complimentary credit monitoring through [VENDOR]. To enroll, visit [URL] or call [PHONE] by [ENROLLMENT DEADLINE]. Your enrollment code is: [CODE].

What You Can Do:
We encourage you to:

1. Review your financial statements and account activity for any unauthorized transactions.
2. Consider placing a fraud alert on your credit file. Contact one of the three major credit bureaus — they are required to notify the others:
   - Equifax: equifax.com/personal/credit-report-services | 1-800-685-1111
   - Experian: experian.com/help | 1-888-397-3742
   - TransUnion: transunion.com | 1-800-888-4213
3. Consider placing a security freeze on your credit file. Unlike a fraud alert, a freeze restricts access to your credit report. It's free at all three bureaus.
4. Obtain your free annual credit report at annualcreditreport.com.
[If SSN involved:]
5. Monitor your Social Security earnings record at ssa.gov/myaccount.

For More Information:
If you have questions, contact us:

[ORGANIZATION NAME]
[DEDICATED BREACH RESPONSE LINE OR CONTACT]
[HOURS OF AVAILABILITY]
[EMAIL or URL for breach-specific inquiries]

You may also contact your state attorney general's office for information about steps you can take to protect yourself from identity theft:
[STATE AG NAME AND WEBSITE — look up at naag.org]

We sincerely apologize for this incident and any inconvenience it causes.

[AUTHORIZED SIGNATORY NAME]
[TITLE]
[ORGANIZATION NAME]
```

### Notification to State Attorney General (if required by state law)

> Not all states require AG notification. Check whether your state requires it and at what threshold. States that require AG notification: CA (500+), NY (500+), IL, TX, CO, WA, and others. Some states (NY, CO) have specific form requirements.

```
[DATE]

[STATE ATTORNEY GENERAL NAME]
Office of the Attorney General
[ADDRESS]

Re: Data Breach Notification — [ORGANIZATION NAME]

Dear Attorney General [NAME]:

Pursuant to [STATE] [STATUTE CITATION], [ORGANIZATION NAME] hereby notifies the Office of the Attorney General of a data security incident.

Organization:
[LEGAL ENTITY NAME]
[ADDRESS]
[CONTACT: NAME, TITLE, PHONE, EMAIL]

Summary of the Incident:
Date of Breach: [DATE OR RANGE]
Date Discovered: [DATE]
Total [STATE] Residents Affected: [NUMBER — estimate if exact count pending]

Brief Description:
[3–5 sentences covering: nature of the breach, data types affected, and immediate response actions taken]

Notification to Affected Individuals:
Method: [First-class mail / Email (with consent on file) / Substitute notice]
Date Sent (or expected): [DATE]

Enclosed (if required by state):
[ ] Copy of the individual notification letter
[ ] List of affected [STATE] residents (confirm if state requires this — CA does not; some others do)

Questions regarding this notification may be directed to:
[CONTACT NAME, TITLE, PHONE, EMAIL]

Respectfully,

[AUTHORIZED SIGNATORY NAME]
[TITLE]
[ORGANIZATION NAME]
```

---

## Template 4 — PCI-DSS: Card Brand Notification (via Acquiring Bank)

> **How PCI notification works:** PCI breach notification is not sent directly to Visa/Mastercard/Amex. It is initiated by contacting the client's **acquiring bank** (the bank that processes the client's card transactions). The acquirer then escalates to the card brands per the Payment Card Industry Forensic Investigation (PFI) process.
>
> **Timeline:** Immediate — PCI incident notification is contractual and the acquiring bank's timeframes are tight. Call first; follow up in writing.
>
> **Do not delay this call.** The acquirer may need to initiate fraud monitoring across affected card numbers. Every hour of delay is exposure.

### Initial Call Script (Acquiring Bank Fraud/Security Line)

```
Call Script — Initial Notification to Acquiring Bank

"This is [NAME] from [CLIENT ORGANIZATION NAME], a merchant customer of [ACQUIRING BANK NAME]. Our Merchant ID is [MERCHANT ID].

We have identified a potential compromise of payment card data and are calling to initiate notification per our PCI-DSS breach reporting obligations.

Summary:
- We discovered the potential compromise on [DATE]
- The compromise may have occurred between [DATE RANGE]
- The affected systems are [BRIEF DESCRIPTION — POS system, e-commerce platform, etc.]
- The estimated number of potentially affected card records is [NUMBER — estimate is OK]
- We have [CONTAINED / NOT YET CONTAINED] the environment

We need to understand your escalation process from here and what you need from us immediately.

Who should we be in contact with, and what is the next step?"
```

### Written Follow-Up to Acquiring Bank (send same day as call)

```
[DATE — same day as initial call]

[ACQUIRING BANK CONTACT NAME]
[ACQUIRING BANK FRAUD/SECURITY TEAM]
[ADDRESS / EMAIL]

Re: PCI Data Breach Incident Notification — Merchant ID [MERCHANT ID]

Dear [CONTACT NAME],

This confirms our telephone notification to [ACQUIRING BANK NAME] on [DATE] at [TIME] regarding a potential payment card data compromise.

Merchant Information:
Legal Name: [CLIENT LEGAL ENTITY NAME]
DBA Name (if different): [DBA NAME]
Merchant ID: [MERCHANT ID]
MCC Code: [MERCHANT CATEGORY CODE]
Contact: [CLIENT SECURITY/COMPLIANCE CONTACT, TITLE, PHONE, EMAIL]

Incident Summary:
Discovery Date: [DATE AND TIME]
Estimated Breach Window: [DATE RANGE — or "Under investigation"]
Affected Environment: [E.g., "Point-of-sale terminals at [LOCATION(S)]," "E-commerce platform," "Back-office payment processing system"]
Estimated Cards at Risk: [NUMBER or "Under investigation"]
Card-Not-Present or Card-Present: [CNP / CP / Both]

Containment Status: [Contained / In progress — estimated completion: DATE]

Actions Taken:
[List concrete containment steps — e.g., isolated affected systems, removed malware, disabled compromised credentials, notified law enforcement]

Next Steps:
We understand the next step is [WHAT THE BANK TOLD YOU ON THE CALL — e.g., engagement of a PCI Forensic Investigator (PFI), card monitoring across affected BINs, etc.].

We are prepared to cooperate fully with any forensic investigation. Our MSSP technical contact for the investigation is:
[MSSP TECHNICAL LEAD NAME]
[PHONE]
[EMAIL]

Available 24/7 during the investigation period.

Respectfully,

[AUTHORIZED SIGNATORY NAME]
[TITLE]
[ORGANIZATION NAME]
```

---

## Quick Reference — Regulatory Notification Timelines

| Framework | Notify Whom | Deadline | Triggered By |
|-----------|------------|----------|-------------|
| HIPAA | HHS OCR (breach.hhs.gov) | 60 days from discovery | Any PHI breach affecting 500+ individuals; annual log for <500 |
| HIPAA | Affected individuals | 60 days from discovery | Same trigger as HHS |
| GDPR Art. 33 | Lead supervisory authority | 72 hours from awareness | Any breach likely to result in risk to individuals |
| GDPR Art. 34 | Affected individuals | Without undue delay | Breach likely to result in **high** risk to individuals |
| PCI-DSS | Acquiring bank → card brands | Immediately (call first) | Confirmed or suspected cardholder data compromise |
| US State laws | Varies by state (AG + individuals) | 30–90 days (check state) | Breach of defined PII categories; some require risk-of-harm finding |
| CMMC / DoD | DIBNet portal | 72 hours from discovery | Any breach involving CUI |

> **State law lookups:** NCSL maintains a state breach notification law summary at ncsl.org. Check before sending; laws change frequently.

---

_These templates were last reviewed: [DATE — update when reviewing]. Regulatory requirements change. Before using in a live incident, confirm current requirements with legal counsel._
