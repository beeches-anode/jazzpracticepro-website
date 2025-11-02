# Task List Execution Guide - v2 (Website)

**Version:** 2.0-website
**Date:** 2025-11-02
**Changes from v2.0:** Adapted for website development; replaced app-specific quality gates with web testing; focused on responsive design, accessibility, and deployment validation.

---

## Goal

Guide AI in executing website task lists efficiently while maintaining web quality standards, giving the user visibility into progress, and creating logical review points.

---

## Execution Principles

### Work in Logical Phases

**Organize work into coherent phases:**
- Group related sub-tasks that build toward a testable milestone
- A phase might be: a single sub-task, a parent task, or multiple parent tasks
- Use judgment based on the natural structure of the work

**Examples of logical phases:**
- Creating a new page with its content, layout, and styling
- Making related changes across multiple pages (e.g., updating navigation everywhere)
- Completing content updates before SEO optimization
- Finishing all work needed for a specific visitor-facing section

**Propose review points:**
- After completing a significant phase, indicate that you're at a natural review point
- Example: "I've completed the new blog page layout and responsive design (tasks 2.1-2.4). This is a good point to review the design before adding SEO meta tags. Should I continue?"

### Mark Progress as You Work

**Update the task list:**
- Mark tasks `[x]` as you complete them
- Keep the task list current - it's a living document, not a static plan

**Add newly discovered work:**
- If you discover additional tasks during implementation, add them to the list
- Example: "Adding task 2.4: Refactor helper function for reusability (discovered during implementation)"

**Update or remove obsolete tasks:**
- If you learn something during implementation that makes a task unnecessary or wrong, update it
- Example: "Removing task 3.2: discovered this is already handled by existing utility"

---

## Quality Gates

### Before Any Commit

**Run validation:**
- Local testing (`python3 -m http.server 8000` or `npx serve .`)
- Visual review of changes in browser
- Responsive testing (mobile, tablet, desktop breakpoints)
- Link validation (ensure no broken internal/external links)
- All quality checks must pass before committing

**Clean up:**
- Remove temporary comments, test content, or placeholder text
- Ensure HTML follows semantic markup conventions
- Verify consistent Tailwind CSS class usage
- Check for any HTML validation errors

**Use conventional commit format:**
- `feat:` for new features
- `fix:` for bug fixes
- `refactor:` for code improvements
- `test:` for test additions/changes
- `docs:` for documentation updates

### Commit Strategy

**Commit when it makes logical sense:**
- Could be after a single sub-task (if it's a coherent unit)
- Could be after a parent task (if sub-tasks are tightly coupled)
- Could span multiple tasks (if they form one logical change)
- Use judgment to create commits that:
  - Are atomic (one logical change)
  - Are revertible (can be undone cleanly)
  - Have clear, descriptive messages

**Commit message quality:**
- Summarize what was accomplished
- Reference task numbers if helpful (e.g., "Related to task 2.1-2.3")
- Include context that future developers would want to know

---

## Task List Maintenance

### Keep "Notes" Section Current

If the task list has a "Notes" section:
- Add new insights or context discovered during implementation
- Update validation commands if you find additional checks needed
- Note any deviations from the original plan and why

### Optional: Track Relevant Files

If it's helpful, you can maintain a list of files modified during implementation:
- Not required (git status shows this), but can aid context
- Update as you create or modify files
- Include one-line descriptions of what changed

Example:
```markdown
## Modified Files
- `index.html` - Added blog section to homepage
- `blog.html` - Created new blog landing page
- `blog/first-post.html` - Created first blog post
- `help/features.html` - Updated navigation links
```

---

## Review & Feedback Workflow

### Propose Review Points

After completing a logical phase of work:
1. Summarize what was accomplished
2. Note what's coming next
3. Ask if the user wants to review before continuing

Example:
> "I've completed the blog landing page with responsive layout and card grid (tasks 2.1-2.4). I've tested it at mobile, tablet, and desktop breakpoints. Next up is adding SEO meta tags and Open Graph data (task 3.0). This is a good stopping point if you'd like to review the design and layout before I proceed. Should I continue with task 3.0?"

### Respond to Feedback

If the user requests changes after review:
- Update the task list to reflect new understanding
- Add new tasks if the scope has expanded
- Mark tasks as obsolete if requirements changed
- Re-run quality gates after making changes

---

## Execution Guidelines for AI

### Sequential Focus
- Work through tasks in order (unless a different sequence makes more sense due to dependencies)
- Don't jump around randomly - maintain logical flow

### Contextual Awareness
- Re-read relevant PRD sections before starting a new phase
- Check existing design patterns and Tailwind classes before implementing new sections
- Verify your changes integrate cleanly with existing navigation and layout
- Ensure consistent typography, color scheme, and spacing

### Proactive Problem-Solving
- If you encounter blockers, document them and propose solutions
- If requirements are ambiguous, ask clarifying questions before implementing
- If you discover better approaches during implementation, discuss trade-offs with the user

### Progress Communication
- Keep the user informed of progress at logical milestones
- Surface any risks, challenges, or decisions early
- Propose review points rather than forcing them at rigid intervals

---

## What This Template Doesn't Dictate

**Flexibility you have:**
- How many tasks to complete before proposing a review
- Whether to commit after each sub-task, parent task, or in larger batches
- How to organize work within a phase (as long as quality gates are met)
- Git workflow details (branching, commit squashing, etc.) - use project conventions

**Core responsibilities you must uphold:**
- Quality gates (responsive testing, link validation, visual review)
- Task list stays current (mark complete, add discoveries)
- User has visibility (clear progress updates, proposed review points)
- Web quality (semantic HTML, accessible, SEO-optimized, responsive)

---

## Success Metrics for Task Execution

Effective task execution should result in:
1. **All PRD requirements implemented** - nothing missed
2. **High web quality** - responsive design works, accessibility standards met, links validated
3. **Clear commit history** - logical units of work with good messages
4. **Current documentation** - task list reflects reality, notes capture learnings
5. **User confidence** - regular progress updates and appropriate review points

---

## Website-Specific Quality Checklist

Before marking work complete, verify:
- [ ] **Responsive Design:** Tested at 375px (mobile), 768px (tablet), 1024px+ (desktop)
- [ ] **Cross-Browser:** Works in Chrome, Firefox, Safari, Edge
- [ ] **Accessibility:** Semantic HTML, proper heading hierarchy, alt text on images, ARIA labels where needed
- [ ] **SEO:** Meta tags present, Open Graph data, descriptive titles, proper heading hierarchy
- [ ] **Links:** All internal and external links work correctly
- [ ] **Performance:** Images optimized, no console errors, fast load times
- [ ] **Visual Consistency:** Colors, typography, and spacing match existing design
- [ ] **Content:** No lorem ipsum, typos checked, CTAs clear

---

## Version History

- **v2.0-website (Nov 2025):** Adapted for website development; web-specific quality gates and testing focus
- **v2.0 (Nov 2025):** Principle-based quality gates; flexible review points; removed prescriptive commit choreography
- **v1.0:** Step-by-step completion protocol; mandatory commit-after-parent-task; rigid "ask permission after every sub-task" pattern
