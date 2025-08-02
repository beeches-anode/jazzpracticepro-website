# Settings Page

The **Settings** screen helps you personalize JazzPracticePro and manage your local data. It is fully offline and stored securely on your device.

---

## 🎷 Instruments

You can select one or more instruments you play. These are used to:

- Auto-fill the instrument field when logging activities
- Inform AI feedback generation
- Display icons in the activity list

You must select at least one instrument.  
If you select multiple, choose one as your **default instrument** for new activities.

---

## 📌 Practice Pillars

You can customize which **practice pillars** are shown by default when logging an Individual activity.

- All 7 pillars are available
- Some are hidden by default (e.g. “Ensemble Tunes”)
- You can toggle any pillar on or off
- Pillars with saved data will always be shown

This affects the layout of the **ActivityEditPage** when logging Individual practice.

➡️ [Learn more about the theory behind these pillars.](/help/helpPillarsTheory)

---

## 📚 Spaced Repetition Intervals

You can customize the interval (in days) between reviews for each repertoire **learning status**.

- Default values are pre-filled for you
- You can adjust these numbers to suit your memory and practice habits

These intervals control how soon a tune becomes “due” for review on the Repertoire screen. This helps you prioritise your practice and avoid forgetting tunes. 

---

## 🔄 Export, Import, and Backup

JazzPracticePro lets you manage your data with simple one-click tools:

### 🎵 Activities & Repertoire

- Export your **practice activities** or **repertoire** to a `.json` file
- Import `.json` files using merge or replace mode
- Rebuild your repertoire stats from past activities at any time

### 📦 Full Backup

- Export your **entire JazzPracticePro database**, including activities, repertoire, settings, profile, and goals
- Restore from backup using **Merge** or **Replace** mode

Backups are stored locally in your browser using IndexedDB and downloaded as `.json` files.

---

## 🧽 Soft Reset (Start Fresh)

If you'd like to begin a new practice chapter, JazzPracticePro offers a **Soft Reset** tool.

- This will delete all your activities and repertoire entries
- Your instruments, settings, goals, AI usage, and plan status will be preserved

> 🧠 Tip: If you already have data in the app, it's a good idea to export your data first using the backup tools above.

---

## 🔒 Privacy

JazzPracticePro is a **local-first app**. Your data is:

- Stored securely in your browser using **IndexedDB**
- Never transmitted to a server without your action
- Only used for AI feedback if you explicitly enable it

If you use AI features, the data is securely sent to Google's Gemini API for processing.

---

## Feedback or questions?

Reach out any time: [contact@jazzpracticepro.com](mailto:contact@jazzpracticepro.com)
_Last updated: July 2025_
