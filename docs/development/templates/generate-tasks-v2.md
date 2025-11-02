# Task List Generation from PRD - v2 (Website)

**Version:** 2.0-website
**Date:** 2025-11-02
**Changes from v2.0:** Adapted for website development; removed app-specific testing; focused on web content, design, and deployment tasks.

---

## Goal

Guide AI in creating comprehensive, well-structured task lists from Product Requirements Documents for website updates and new page development.

---

## Process

### 1. Receive PRD Reference
The user points to a specific PRD file (e.g., `prd-93-custom-pillar-ai-prompt-refresh.md`)

### 2. Analyze PRD & Website Context
- Read and understand the PRD's requirements, goals, and technical considerations
- Review existing website to identify:
  - Relevant HTML files, pages, and sections
  - Design patterns, color schemes, and Tailwind CSS classes in use
  - Existing navigation structure and content organization
  - Potential layout or content conflicts

### 3. Generate Complete Task Hierarchy
Create parent tasks and sub-tasks in a single pass:

**Parent tasks** should represent:
- Logical implementation phases or modules
- Coherent units of work that can be tested/validated together
- Natural review points for user feedback

**Sub-tasks** should be:
- Specific and actionable (clear what to do)
- Appropriately sized (typically 15-60 minutes of focused work)
- Ordered by logical dependencies (foundational work before dependent work)
- Testable (clear completion criteria)

**Consider including tasks for:**
- Content updates (copy, images, videos)
- HTML structure and semantic markup
- CSS/styling updates (Tailwind classes, responsive design)
- SEO optimization (meta tags, alt text, structured data)
- Accessibility improvements (ARIA labels, semantic HTML)
- Cross-browser and responsive testing
- Link validation and deployment checks
- Documentation updates (README.md, help files, etc.)

### 4. Reference Files Inline
Instead of maintaining a separate "Relevant Files" list, reference files naturally within task descriptions where they're modified or created.

Example:
```markdown
- [ ] 2.1 Add new "Blog" section to homepage (modifies `index.html`)
- [ ] 2.2 Create blog page layout with responsive grid (`blog.html`)
- [ ] 2.3 Update navigation to include blog link (modifies `index.html` and all help pages)
```

### 5. Add Implementation Notes
Include a "Notes" section with:
- Manual testing checklist (responsive breakpoints, cross-browser, link validation)
- Deployment steps or considerations
- Design system guidance (Tailwind classes, color scheme, typography)
- SEO and accessibility requirements
- Any PRD-specific context that aids implementation

### 6. Save Task List
Save as `tasks-prd-<number>-<slug>.md` in `/docs/development/active/`
- Match the PRD number and slug (e.g., for `prd-93-custom-pillar-ai-prompt-refresh.md` → `tasks-prd-93-custom-pillar-ai-prompt-refresh.md`)

---

## Output Format

```markdown
## Notes

- Testing checklist: Mobile (375px), tablet (768px), desktop (1024px+)
- Cross-browser: Chrome, Firefox, Safari, Edge
- Accessibility: Check semantic HTML, ARIA labels, keyboard navigation
- SEO: Verify meta tags, alt text, heading hierarchy
- Deployment: Test locally before deploying to production
- Important context from PRD or website analysis

## Tasks

- [ ] 1.0 Content and Copy Updates
  - [ ] 1.1 Write and review new blog post content
  - [ ] 1.2 Optimize images and add alt text
  - [ ] 1.3 Prepare meta descriptions for SEO

- [ ] 2.0 HTML Structure and Layout
  - [ ] 2.1 Create blog post template page (creates `blog/post-template.html`)
  - [ ] 2.2 Add blog section to homepage (modifies `index.html:280`)
  - [ ] 2.3 Update navigation across all pages

- [ ] 3.0 Styling and Responsive Design
  - [ ] 3.1 Apply Tailwind classes for responsive layout
  - [ ] 3.2 Test mobile breakpoint (375px-767px)
  - [ ] 3.3 Test tablet breakpoint (768px-1023px)
  - [ ] 3.4 Test desktop breakpoint (1024px+)

- [ ] 4.0 SEO and Accessibility
  - [ ] 4.1 Add meta tags and Open Graph data
  - [ ] 4.2 Verify heading hierarchy (h1 → h2 → h3)
  - [ ] 4.3 Add ARIA labels where needed
  - [ ] 4.4 Test keyboard navigation

- [ ] 5.0 Testing and Deployment
  - [ ] 5.1 Validate all internal links
  - [ ] 5.2 Cross-browser testing (Chrome, Firefox, Safari, Edge)
  - [ ] 5.3 Test deployment locally (`python3 -m http.server`)
  - [ ] 5.4 Deploy to production via `./deploy.sh`

- [ ] 6.0 Documentation
  - [ ] 6.1 Update README.md with new pages/features
  - [ ] 6.2 Document any new design patterns or conventions
```

---

## Task Quality Principles

### Well-Formed Tasks
- **Actionable:** Clear verb (implement, update, add, refactor, test)
- **Specific:** Identifies what changes and where
- **Scoped:** One logical unit of work, not too broad or too granular
- **Testable:** Obvious when it's complete

### Logical Organization
- **Dependencies first:** Foundational work before features that depend on it
- **Related work together:** Group tasks by module, component, or implementation phase
- **Natural review points:** Parent tasks should represent sensible places to pause for feedback

### Website Awareness
- **Reference existing patterns:** "Following the card layout pattern from `index.html` features section..."
- **Call out navigation updates:** "Update nav links in `index.html`, all help pages, and footer"
- **Note testing requirements:** "Test responsive breakpoints at 375px, 768px, 1024px before deploying"

---

## Interaction Model

**Single-pass generation:** Generate the complete task hierarchy (parent tasks + sub-tasks) in one response.

**Why this change from v1:**
- Modern AI can plan comprehensively without artificial pauses
- Reduces back-and-forth friction
- User can still request refinements to any section after seeing the full plan

**If the user wants changes:**
- They can ask for specific sections to be expanded, reordered, or clarified
- You can iterate on the task structure without regenerating everything

---

## Target Audience

Assume the task list will be used by:
- Web developers familiar with the JazzPracticePro website
- AI agents processing tasks via `process-task-list-v2.md`
- Both should understand HTML/CSS, responsive design, and web best practices

---

## Success Metrics for Task Lists

A well-formed task list should:
1. **Cover all PRD requirements** - nothing important is missed
2. **Have clear dependencies** - tasks are ordered logically
3. **Be actionable** - any web developer could pick it up and start implementing
4. **Include quality gates** - responsive testing, accessibility checks, link validation are explicit tasks
5. **Reference the website** - shows awareness of existing pages, design patterns, and navigation

---

## Output

- **Format:** Markdown (`.md`)
- **Location:** `/docs/development/active/`
- **Filename:** `tasks-prd-<number>-<slug>.md`

---

## Version History

- **v2.0-website (Nov 2025):** Adapted for website development; web testing and deployment focus
- **v2.0 (Nov 2025):** Single-pass generation; inline file references; streamlined for modern AI
- **v1.0:** Two-phase process with pause/confirm; separate "Relevant Files" section
