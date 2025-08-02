# 🔐 AI Privacy and Data Usage

JazzPracticePro includes optional AI-powered features to help you reflect, plan, and stay inspired. This page explains how your data is used when interacting with AI tools like practice reviews and daily suggestions.

---

## 🤖 What powers the AI?

JazzPracticePro uses **Google’s Gemini API** (via `@google/generative-ai`) to provide personalized practice feedback and suggestions. When you request AI help, your practice data is securely sent to Gemini to generate a response — **only from your device**.

---

## 📤 What data is sent?

Only the minimum information needed for your request is included:

- Practice activity summaries (dates, durations, notes)
- Repertoire info with learning statuses (tunes marked as “In Progress”, “Needs Review”, etc.)
- Short- and long-term goals
- Instrument info (for context)
- Focus area or time available (for daily suggestions)

> JazzPracticePro **never sends your full data unless you explicitly request AI feedback.** You can review what’s included by visiting your Goals and Activities pages.

---

## 🔐 How is it sent?

- All AI requests are sent **directly from your device** to Google’s Gemini API.
- No data is sent unless you click a “Generate AI Feedback” button.
- Your data is **never sent to a server or shared externally.**
- The Gemini API key is securely embedded at build time and **not exposed in the app code**.
- Key usage is limited by Google to only the Gemini API and monitored locally.

---

## 🚨 Does Google keep my data?

Possibly, for a short time.

According to Google's [Gemini API Terms of Service](https://cloud.google.com/terms/generative-ai), prompts and responses **may be temporarily stored** by Google for:

- Abuse prevention
- Improving their models (in anonymized form)

If you prefer not to share your data with Gemini, simply avoid using the AI features — JazzPracticePro works fully without them.

---

## ✅ Quick Summary

| Feature                   | Privacy Detail                                              |
|---------------------------|-------------------------------------------------------------|
| AI use                    | Optional                                                    |
| What’s sent               | Only summary info needed for feedback                       |
| Stored by JazzPracticePro | No — all data stays on your device                          |
| Sent to Gemini            | Only when you explicitly request AI feedback                |
| Kept by Google?           | Possibly (short-term, anonymized, for abuse/model tuning)   |
| API Key security          | Injected at build time, never exposed directly              |
| Rate limits               | Tracked locally, enforced by plan tier                      |

---

## ❓ Questions?

JazzPracticePro is a local-first tool with your privacy in mind.  
Reach out any time: [contact@jazzpracticepro.com](mailto:contact@jazzpracticepro.com)
