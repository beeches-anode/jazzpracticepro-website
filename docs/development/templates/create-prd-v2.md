# Product Requirements Document (PRD) Generation Guide - v2 (Website)

**Version:** 2.0-website
**Date:** 2025-11-02
**Changes from v2.0:** Adapted for static website development; removed app-specific references; focused on web content, SEO, and design concerns.

---

## Goal

Guide AI in creating clear, actionable Product Requirements Documents for website updates, new pages, and content changes to the JazzPracticePro marketing website.

---

## Process

### 1. Receive Initial Feature Request
The user provides a description of the desired feature or change.

### 2. Gather Context Through Conversation
Before generating the PRD, engage in natural conversation to understand:

- **Problem & Impact:** What user problem does this solve? What's the value?
- **Functional Scope:** What should the feature do? What are the boundaries?
- **Technical Context:** What existing systems, files, or patterns are relevant?
- **Constraints & Dependencies:** Are there technical, UX, or business limitations?
- **Success Criteria:** How will we know this feature works correctly?
- **Edge Cases & Ambiguities:** What scenarios need clarification?

**Adapt your questions to the website domain:**
- For content changes: understand target audience, messaging goals, SEO keywords
- For design/layout updates: explore responsive behavior, accessibility requirements, visual hierarchy
- For new pages: understand navigation flow, content structure, call-to-action placement
- For technical changes: probe performance, cross-browser compatibility, deployment impact

**Leverage website knowledge:**
- Reference specific files when asking questions (e.g., "Should this be added to `index.html` or a new page?")
- Point out existing design patterns and styles
- Surface potential navigation or content conflicts

**Interaction style:**
- Provide options in lists when offering alternatives (easier for user to respond)
- Ask follow-up questions as they emerge naturally from the conversation
- Don't force a rigid question sequence

### 3. Generate the PRD
Once you have sufficient context, create a PRD that serves the feature's needs.

### 4. Save the PRD
Save as `prd-<number>-<slug>.md` in `/docs/development/active/`
- Use the next sequential number (check existing PRDs to find the highest number)
- Use a descriptive slug derived from the feature name

---

## PRD Structure Principles

**Core sections** (always include):
1. **Overview** - Concise feature description and problem statement
2. **Goals** - Specific, measurable objectives
3. **Functional Requirements** - What the feature must do (numbered for reference)
4. **Success Criteria** - How we validate the feature works correctly

**Contextual sections** (include as relevant):
- **User Stories** - When visitor workflows need illustration
- **Design Decisions** - When you've evaluated multiple layout/content approaches (show options considered and rationale)
- **Content Requirements** - Copy, images, videos, CTAs needed
- **SEO Considerations** - Meta tags, keywords, structured data, alt text
- **Responsive Design** - Mobile, tablet, desktop breakpoint requirements
- **Accessibility** - WCAG compliance, semantic HTML, ARIA labels
- **Technical Considerations** - File references, deployment impact, performance requirements
- **Non-Goals** - What's explicitly out of scope (critical for scope management)
- **Open Questions** - Unresolved decisions (capture these with "Decision:" entries once resolved)
- **Implementation Plan** - Suggested phasing or sequencing if helpful

**Flexibility:**
- Organize requirements by page, section, or content type if that improves clarity
- Combine or split sections based on update complexity
- Add domain-specific sections when they add value (e.g., "Analytics Tracking" for conversion-focused features)

---

## Writing Guidelines

### Target Audience
Write for web developers familiar with the JazzPracticePro website:
- Use appropriate web development terminology (HTML, CSS, responsive design, SEO)
- Include direct file references where relevant (e.g., `index.html:245`, `help/features.html`)
- Reference existing design patterns, color schemes, and layout structures
- Provide trade-off analysis for significant decisions (e.g., single-page vs. multi-page, inline styles vs. CSS files)

### Requirements Quality
Functional requirements should be:
- **Testable** - Clear enough to write test cases against
- **Specific** - Precise enough to guide implementation
- **Complete** - Cover happy paths, edge cases, error scenarios
- **Numbered** - For easy reference in tasks and discussions

### Technical References
When mentioning website files:
- Link to specific HTML files and line numbers where helpful
- Note existing design patterns, CSS classes (especially Tailwind utilities), and layout structures
- Call out navigation links, anchor targets, and cross-page dependencies
- Mention manual testing requirements (responsive breakpoints, cross-browser, link validation)

---

## Success Metrics for PRDs

A well-formed PRD should enable a developer to:
1. Understand *why* the feature exists (problem/goal)
2. Know *what* to build (functional requirements)
3. Recognize *when it's done* (success criteria)
4. Find *where to start* (technical context, file references)
5. Avoid *scope creep* (non-goals, boundaries)

---

## Output Format

- **Format:** Markdown (`.md`)
- **Location:** `/docs/development/active/`
- **Filename:** `prd-<number>-<slug>.md`

---

## Final Instructions

1. **Do NOT start implementing the PRD** - stop after saving the document
2. **Ask clarifying questions** - gather enough context to write a complete PRD
3. **Iterate on the PRD** - if the user provides additional context or corrections, update the PRD accordingly
4. **Reference existing PRDs** - check `/docs/development/active/` for examples of good structure

---

## Version History

- **v2.0-website (Nov 2025):** Adapted for static website development; web content and design focus
- **v2.0 (Nov 2025):** Modernized for current AI capabilities; outcome-focused principles instead of prescriptive process
- **v1.0:** Original template with step-by-step question list and rigid 10-section structure
