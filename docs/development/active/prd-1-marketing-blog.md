# PRD-1: Marketing Blog Feature

**Status:** Active
**Created:** 2025-11-02
**Owner:** Jazz Practice Pro Team
**Related Documents:** [Blog Feature Plan](../../blog-feature-plan.md)

---

## Overview

Add a static marketing blog to the Jazz Practice Pro website to attract organic traffic, showcase advanced features, build authority in the jazz education space, and improve user conversion through pre-signup education.

### Problem Statement

The current website highlights only 4 basic features while the Jazz Practice Pro app has 8+ major capabilities (voice import, transcription management, encrypted backup, spaced repetition, etc.). This creates a discovery gap where:

1. **Prospective users don't see the full value** before signup
2. **No organic search traffic** - website has zero content targeting key search queries like "how to organize jazz practice" or "spaced repetition for learning jazz standards"
3. **No social proof or community presence** - no user stories, testimonials, or educational content
4. **No demonstration of product momentum** - active development not visible to prospective users
5. **Missing trust-building content** - concerns about AI capabilities and privacy not addressed

### Value Proposition

A blog will:
- **Attract:** Organic traffic from jazz musicians researching practice methods
- **Educate:** Showcase features through deep-dive posts before users sign up
- **Build trust:** Establish thought leadership through educational content
- **Demonstrate momentum:** Show active development through product updates
- **Improve conversion:** Pre-qualify interested users with better onboarding content

---

## Goals

1. **Launch blog infrastructure** within 1-2 weeks (functional listing page, post template, metadata system)
2. **Publish initial content** - 3 high-quality blog posts within 3-4 weeks of launch
3. **Achieve organic reach** - 500+ monthly blog visitors within 3 months
4. **Drive app signups** - 10-20% click-through rate from blog to app
5. **Establish publishing cadence** - 2 posts per month sustainable workflow

---

## Functional Requirements

### Core Infrastructure

**FR-1:** Create `/blog/` directory structure with:
- `index.html` - Blog listing page
- `posts/` - Individual blog post HTML files
- `assets/` - Blog-specific images and media
- `posts.json` - Centralized metadata for all posts
- `template.html` - Reference template for creating new posts

**FR-2:** Blog listing page (`/blog/index.html`) must:
- Display published posts in reverse chronological order (newest first)
- Show post metadata: title, excerpt, publish date, author, tags, read time
- Render posts dynamically from `posts.json` using client-side JavaScript
- Include responsive card-based layout (Tailwind CSS)
- Reuse existing website header and footer components
- Include link to RSS feed

**FR-3:** Blog post template must include:
- Semantic HTML5 structure (`<article>`, `<header>`, `<section>`)
- Post metadata section (author, date, reading time estimate)
- Tag display with visual styling
- Hero image with alt text
- Article content area with proper typography
- Call-to-action (CTA) section linking to Jazz Practice Pro app
- Social share buttons (Twitter/X, LinkedIn, Facebook, Copy Link)
- Related posts section (manual curation)
- Open Graph meta tags for social sharing
- Schema.org Article structured data for SEO
- Breadcrumb navigation
- Reused website header and footer

**FR-4:** Metadata system (`posts.json`) must track:
- Post ID (unique identifier)
- Title
- Slug (URL-friendly identifier)
- Excerpt (150-160 characters for meta descriptions)
- Author name
- Publish date (YYYY-MM-DD format)
- Publish timestamp (ISO 8601 format)
- Update date (nullable, for revised posts)
- Tags (array of strings)
- Category (content pillar classification)
- Read time estimate
- Hero image path
- Featured flag (boolean, for homepage display)
- Status (draft/published)

**FR-5:** Blog listing JavaScript must:
- Fetch `posts.json` via async request
- Filter posts by status (show only "published")
- Sort posts by date (newest first)
- Render post cards dynamically with proper escaping
- Handle fetch errors gracefully
- Support tag filtering (filter posts by selected tag)
- Support client-side search using Fuse.js (fuzzy search on title, excerpt, tags)

### Navigation & Discovery

**FR-6:** Update main website navigation to include "Blog" link:
- Add between "Features" and "Demo" in header
- Link to `/blog/`
- Maintain consistent styling with existing nav items

**FR-7:** Add "Latest Posts" section to homepage footer:
- Display 3 most recent published posts
- Fetch from `posts.json` dynamically
- Include post title and date
- Link to individual posts
- Include "View All Posts →" link to blog listing

**FR-8:** Create RSS feed (`/blog/feed.xml`):
- Standard RSS 2.0 format
- Include 10 most recent published posts
- Each item includes: title, link, description (excerpt), pubDate, author
- Update manually when new posts are published

### SEO & Social Sharing

**FR-9:** Each blog post must include SEO metadata:
- Title tag with target keyword (under 60 characters)
- Meta description (150-160 characters, from excerpt)
- Single H1 tag with primary keyword
- Descriptive H2/H3 subheadings
- Alt text for all images
- Internal links to related posts and homepage
- Clean URL structure: `/blog/posts/YYYY-MM-DD-slug.html`

**FR-10:** Each blog post must include Open Graph tags:
- `og:title` - Post title
- `og:description` - Post excerpt
- `og:image` - Hero image URL (absolute path)
- `og:type` - "article"
- `og:url` - Canonical URL
- `article:published_time` - Publish timestamp
- `article:author` - Author name

**FR-11:** Each blog post must include Schema.org Article markup:
- JSON-LD format in `<script type="application/ld+json">`
- Include: headline, image, datePublished, dateModified, author, publisher

### Content Publishing Workflow

**FR-12:** Blog posting workflow must support:
1. Write content in Markdown or HTML
2. Convert Markdown to HTML (manual or via simple script)
3. Create post HTML file in `/blog/posts/` with naming convention: `YYYY-MM-DD-slug.html`
4. Add post metadata to `posts.json`
5. Add hero image to `/blog/assets/`
6. Commit and deploy via existing Netlify deployment process

**FR-13:** Optional Markdown-to-HTML conversion script:
- Node.js script using `marked` library
- Read Markdown file input
- Convert to HTML
- Inject into blog post template
- Output to `/blog/posts/`
- Script location: `/scripts/markdown-to-blog.js`

### Responsive Design

**FR-14:** Blog must be fully responsive:
- Mobile (320px - 767px): Single column, stacked layout
- Tablet (768px - 1023px): 2-column post grid
- Desktop (1024px+): 3-column post grid
- All images must be responsive with max-width: 100%
- Typography must scale appropriately
- Navigation must collapse to hamburger on mobile (reuse existing pattern)

### Performance

**FR-15:** Blog pages must meet performance requirements:
- Static HTML (no build process)
- Minimal JavaScript (under 50KB total)
- Images optimized (WebP format preferred, under 200KB per image)
- Lazy loading for images below the fold
- Fast page loads (target: under 2 seconds on 3G)

---

## Non-Goals

The following are explicitly **out of scope** for this PRD:

- **Comments system** - No Disqus, Commento, or other comment platforms in initial launch
- **Email newsletter integration** - No email signup or newsletter distribution (may add later)
- **Build process or Static Site Generator** - Maintaining simple static site approach, no Eleventy/Hugo/Jekyll
- **Headless CMS** - No external CMS like Contentful, Sanity, or NetlifyCMS
- **User-generated content** - Blog is author-controlled only
- **Advanced search** - Client-side fuzzy search is sufficient (no Algolia/Elasticsearch)
- **Pagination** - Not needed until 20+ posts published
- **Analytics integration in this PRD** - Google Analytics setup is separate task
- **Automatic sitemap generation** - Manual sitemap update is acceptable
- **Content migration from other platforms** - Starting fresh with new content

---

## Success Criteria

### Infrastructure Validation

**SC-1:** Blog listing page loads successfully and displays empty state when `posts.json` is empty

**SC-2:** Blog listing page correctly renders posts when `posts.json` contains sample data

**SC-3:** Tag filtering works: clicking a tag filters posts to show only posts with that tag

**SC-4:** Search functionality works: typing in search box filters posts by title/excerpt/tags

**SC-5:** Blog navigation link appears in website header and correctly links to `/blog/`

**SC-6:** "Latest Posts" section appears in homepage footer and displays 3 most recent posts

**SC-7:** Blog post template renders correctly with all sections (metadata, content, CTA, related posts)

**SC-8:** Social share buttons generate correct URLs for each platform

**SC-9:** RSS feed validates using W3C Feed Validation Service

### Content Validation

**SC-10:** First 3 blog posts published with complete metadata in `posts.json`

**SC-11:** Each post includes hero image, proper headings, and 1,000+ words of content

**SC-12:** Each post includes working CTA link to Jazz Practice Pro app

**SC-13:** Each post includes relevant tags and category classification

### SEO Validation

**SC-14:** Each blog post has unique title tag and meta description

**SC-15:** Open Graph tags render correctly in social media preview tools (Twitter Card Validator, Facebook Debugger)

**SC-16:** Schema.org Article markup validates using Google Rich Results Test

**SC-17:** All images include descriptive alt text

### Responsive Design Validation

**SC-18:** Blog listing page renders correctly on mobile (320px), tablet (768px), and desktop (1024px+)

**SC-19:** Individual blog posts render correctly on all screen sizes

**SC-20:** Images scale appropriately and don't overflow containers

### Performance Validation

**SC-21:** Blog listing page loads in under 2 seconds on 3G connection (Chrome DevTools throttling)

**SC-22:** Individual blog posts load in under 2 seconds on 3G connection

**SC-23:** Total JavaScript payload under 50KB (uncompressed)

**SC-24:** All images under 200KB each

---

## User Stories

### US-1: Prospective User Discovers Blog via Search

**As a** jazz musician searching for practice advice
**I want to** find educational content about jazz practice methods
**So that** I can learn effective practice techniques and discover Jazz Practice Pro

**Acceptance Criteria:**
- Google search for "how to organize jazz practice" returns Jazz Practice Pro blog post in results (within 3 months)
- Blog post provides valuable content independent of app promotion
- CTA to try app is present but not intrusive
- User can navigate to app from blog post

### US-2: User Browses Blog Posts

**As a** website visitor
**I want to** browse available blog posts by topic
**So that** I can find content relevant to my interests

**Acceptance Criteria:**
- Blog listing page shows all published posts
- Posts include clear titles, excerpts, and metadata
- User can filter posts by tag
- User can search posts by keyword
- Clicking a post navigates to full article

### US-3: User Reads Blog Post

**As a** reader
**I want to** read a well-formatted blog post with clear structure
**So that** I can learn about the topic and decide if I want to try Jazz Practice Pro

**Acceptance Criteria:**
- Post content is readable with clear typography
- Hero image illustrates the topic
- Sections are clearly delineated with headings
- Related posts suggest additional reading
- CTA makes it easy to try the app

### US-4: User Shares Blog Post

**As a** reader who found value in a blog post
**I want to** share it with my jazz musician friends
**So that** they can benefit from the content

**Acceptance Criteria:**
- Social share buttons are visible and accessible
- Clicking Twitter/X button opens Twitter with pre-populated text and link
- Clicking LinkedIn button opens LinkedIn sharing dialog
- Clicking Facebook button opens Facebook sharing dialog
- Copy Link button copies URL to clipboard with confirmation message
- Shared links display correct preview image and description

### US-5: Returning Visitor Finds Latest Content

**As a** returning website visitor
**I want to** see the latest blog posts on the homepage
**So that** I can stay updated without navigating to the blog section

**Acceptance Criteria:**
- Homepage footer shows 3 most recent posts
- Posts update automatically when new content is published
- "View All Posts" link navigates to full blog listing

---

## Technical Considerations

### Technology Stack Alignment

**Decision:** Use static HTML + Tailwind CSS + vanilla JavaScript to match existing website architecture.

**Rationale:**
- **Consistency:** Website currently uses no build process; blog should match
- **Simplicity:** Easier to maintain without introducing new tooling
- **Performance:** Static HTML loads faster than JavaScript-rendered content
- **Portability:** Can deploy to any static host (Netlify, Vercel, GitHub Pages)

**Alternative Considered:** Static Site Generator (Eleventy, Hugo)
- **Pros:** Automated index generation, templating, RSS feed
- **Cons:** Adds build step, learning curve, deployment complexity
- **Decision:** Not needed for initial launch; can migrate later if manual workflow becomes burdensome

### File Structure

```
jazzpracticepro-website/
├── index.html
├── privacy.html
├── blog/
│   ├── index.html              # Blog listing page
│   ├── template.html           # Reference template
│   ├── posts/
│   │   ├── 2025-11-01-seven-pillars-jazz-practice.html
│   │   ├── 2025-11-05-voice-import-feature.html
│   │   ├── 2025-11-10-spaced-repetition-jazz-standards.html
│   │   └── [future posts]
│   ├── assets/
│   │   ├── seven-pillars-hero.jpg
│   │   ├── voice-import-screenshot.png
│   │   ├── spaced-repetition-diagram.jpg
│   │   └── [post images]
│   ├── posts.json             # Centralized metadata
│   └── feed.xml               # RSS feed
├── help/
├── docs/
├── media/
└── [existing files]
```

### Integration Points

**Website Header/Footer:**
- Blog pages reuse existing header from `index.html` (lines 20-45)
- Blog pages reuse existing footer from `index.html` (lines 180-220)
- Update header navigation to include Blog link (insert after Features, before Demo)

**Homepage Footer:**
- Add new "Latest Posts" section before existing footer (around line 175)
- Use similar JavaScript pattern to existing mobile menu toggle
- Fetch from `/blog/posts.json` on page load

**Deployment:**
- Blog files deploy via existing Netlify setup (no configuration changes needed)
- `deploy.sh` script works as-is (deploys all files in repo)
- No build step required

### JavaScript Libraries

**Fuse.js for Search:**
- CDN: `https://cdn.jsdelivr.net/npm/fuse.js@6.6.2`
- Already used in main app; familiar pattern
- Lightweight (~12KB minified)
- Configuration: Search title, excerpt, tags with fuzzy matching

**No React/Vue/Framework:**
- Vanilla JavaScript sufficient for blog listing and filtering
- Keeps bundle size minimal
- Easier for future maintainers unfamiliar with frameworks

### SEO Implementation Notes

**Structured Data Example:**
```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "The 7 Pillars of Jazz Practice: A Modern Framework",
  "image": "https://jazzpracticepro.com/blog/assets/seven-pillars-hero.jpg",
  "datePublished": "2025-11-01T10:00:00Z",
  "dateModified": "2025-11-01T10:00:00Z",
  "author": {
    "@type": "Organization",
    "name": "Jazz Practice Pro Team"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Jazz Practice Pro",
    "logo": {
      "@type": "ImageObject",
      "url": "https://jazzpracticepro.com/JazzPracticePro_logo_large.png"
    }
  }
}
```

**Sitemap Update:**
- Manually add blog posts to `sitemap.xml` when published
- Location: `/sitemap.xml` (create if doesn't exist)
- Include blog listing page + all published posts
- Submit to Google Search Console after updates

### Image Optimization Workflow

**Before Adding Images:**
1. Resize to max 1200px width (hero images)
2. Convert to WebP format (with JPEG fallback for older browsers)
3. Compress using TinyPNG or Squoosh
4. Target: Under 200KB per image
5. Save to `/blog/assets/`
6. Use descriptive filenames (e.g., `seven-pillars-framework-diagram.jpg`)

### Content Markdown Example

For reference, blog posts can be written in Markdown and converted:

```markdown
# The 7 Pillars of Jazz Practice: A Modern Framework

Jazz practice can feel overwhelming. With so many areas to work on—scales, tunes, transcription, rhythm, sound—how do you structure your time effectively?

## What Are the 7 Pillars?

The 7 Pillars framework organizes jazz practice into seven focus areas:

1. **Sound** - Tone, phrasing, expression
2. **Technique** - Scales, arpeggios, physical fluency
...
```

**Conversion:** Use online tool (Dillinger, StackEdit) or Node.js script with `marked` library

---

## Content Strategy

### Content Pillars (Post Categories)

**1. Educational Content (40% of posts)**
- Goal: Attract organic traffic, build authority
- Topics: Jazz practice methodology, spaced repetition science, goal setting, practice journaling
- Target keywords: "how to organize jazz practice", "jazz practice routine", "practice journal for musicians"

**2. Feature Deep-Dives (30% of posts)**
- Goal: Showcase app capabilities, improve feature discovery
- Topics: Voice import, spaced repetition system, AI feedback, transcription tracking, encrypted backup, 7 pillars
- Target keywords: "voice practice logging", "AI for jazz musicians", "spaced repetition music"

**3. Product Updates (15% of posts)**
- Goal: Show momentum, keep users engaged
- Topics: Feature releases, monthly updates, development roadmap, behind-the-scenes stories
- Target keywords: "jazz practice pro updates", "new features"

**4. User Stories & Community (15% of posts)**
- Goal: Build social proof, create connection
- Topics: Beta tester interviews, success stories, guest posts from educators
- Target keywords: "jazz practice success stories", "jazz educator reviews"

### First 3 Blog Posts (Launch Content)

**Post 1: "The 7 Pillars of Jazz Practice: A Modern Framework"**
- **Type:** Educational + Feature Deep-Dive
- **Word Count:** 1,500-2,000 words
- **Keywords:** jazz practice routine, practice framework, jazz practice pillars
- **Content:** Explain each pillar, pedagogical foundation, how to apply, how app supports it
- **CTA:** "Try the 7 Pillars in Jazz Practice Pro"
- **Estimated Time:** 6 hours (research, write, images, formatting)

**Post 2: "Voice Import: Log Your Practice in Seconds with AI"**
- **Type:** Feature Spotlight
- **Word Count:** 1,200-1,500 words
- **Keywords:** voice practice logging, AI practice journal, voice notes for musicians
- **Content:** Problem (slow manual logging), solution (voice import), how it works, demo walkthrough
- **CTA:** "Try voice import today"
- **Estimated Time:** 5 hours

**Post 3: "How Spaced Repetition Helps You Master 100 Jazz Standards"**
- **Type:** Educational + Feature Deep-Dive
- **Word Count:** 1,800-2,200 words
- **Keywords:** spaced repetition music, learn jazz standards, repertoire building
- **Content:** What is spaced repetition, science behind it, how app implements it, case study/example
- **CTA:** "Start building your repertoire"
- **Estimated Time:** 7 hours

### Publishing Cadence

**Target:** 2 posts per month

**Rationale:**
- Sustainable for solo developer/small team
- Enough frequency to show activity
- Quality over quantity
- Time commitment: ~8-12 hours/month content creation

**Growth Plan:**
- Months 1-3: 2 posts/month (build foundation)
- Months 4-6: 3 posts/month (ramp up)
- Months 7+: 4 posts/month (steady state)

---

## Implementation Plan

### Phase 1: Infrastructure Setup (Week 1)

**Goal:** Build blog foundation without content

**Tasks:**
1. Create `/blog/` directory structure
2. Build blog listing page (`blog/index.html`)
   - Header/footer from website
   - Post card grid layout
   - Tag filter UI
   - Search bar UI
   - JavaScript for fetching and rendering posts
3. Create blog post template (`blog/template.html`)
   - Article HTML structure
   - Open Graph tags
   - Schema.org markup
   - Social share buttons
   - Related posts section
4. Create `posts.json` metadata file (empty posts array)
5. Update website header navigation (add Blog link)
6. Add "Latest Posts" section to homepage footer
7. Create RSS feed template (`blog/feed.xml`)
8. Test responsive design (mobile, tablet, desktop)

**Deliverables:**
- Functional blog listing page (empty state)
- Reusable post template
- Blog navigation in site header
- Latest posts in homepage footer

**Time Estimate:** 10-12 hours

---

### Phase 2: Content Creation (Weeks 2-3)

**Goal:** Write and publish first 3 blog posts

**Tasks:**
1. **Post 1: "The 7 Pillars of Jazz Practice"**
   - Research: Review `help/helpPillarsTheory.md` from app
   - Outline: Introduction, each pillar explained, how to use, CTA
   - Write: 1,500-2,000 words
   - Images: Screenshot of pillars in app, framework diagram
   - Metadata: Add to `posts.json`

2. **Post 2: "Voice Import Feature"**
   - Research: Test voice import in app, document workflow
   - Outline: Problem, solution, how it works, demo
   - Write: 1,200-1,500 words
   - Images: Screenshot of voice import UI, demo GIF
   - Metadata: Add to `posts.json`

3. **Post 3: "Spaced Repetition for Jazz Standards"**
   - Research: Review `help/helpRepertoireTracking.md`, spaced repetition science
   - Outline: What is SR, why it works, how app uses it, case study
   - Write: 1,800-2,200 words
   - Images: SR curve chart, app screenshots
   - Metadata: Add to `posts.json`

**Deliverables:**
- 3 published blog posts
- Updated `posts.json` with all 3 posts
- Blog images in `/blog/assets/`

**Time Estimate:** 18 hours (6 + 5 + 7)

---

### Phase 3: Launch & Promotion (Week 4)

**Goal:** Make blog discoverable and start driving traffic

**Tasks:**
1. Create/update sitemap.xml including blog posts
2. Submit sitemap to Google Search Console
3. Set up Google Analytics for blog pages (separate task/PRD)
4. Validate Open Graph tags using Twitter Card Validator
5. Validate Schema.org markup using Google Rich Results Test
6. Write social media posts for each blog post
7. Share in jazz communities (Reddit: r/Jazz, r/jazztheory)
8. Email beta testers about new blog (if mailing list exists)
9. Monitor analytics for first week

**Deliverables:**
- Blog indexed by Google
- Social media posts published
- Analytics tracking active
- Initial traffic data collected

**Time Estimate:** 4-6 hours

---

### Phase 4: Ongoing Content (Month 2+)

**Goal:** Maintain 2 posts/month cadence

**Monthly Tasks:**
- Week 1: Publish post #1 (plan, write, publish)
- Week 2: Promote post #1, plan post #2
- Week 3: Publish post #2
- Week 4: Promote post #2, plan next month's topics

**Time Commitment:** 10-16 hours/month
- Post creation: 4-6 hours per post × 2 = 8-12 hours
- Promotion: 1-2 hours per post × 2 = 2-4 hours

---

## Open Questions

**Q1: Author attribution - should posts use "Jazz Practice Pro Team" or personal name?**
- **Decision:** [To be determined - awaiting user input]
- **Impact:** Affects author metadata in posts.json and post template
- **Recommendation:** "Jazz Practice Pro Team" for consistency and future scalability

**Q2: Should we enable comments on blog posts (Disqus, etc.)?**
- **Decision:** [To be determined - awaiting user input]
- **Impact:** If yes, adds integration work and moderation overhead
- **Recommendation:** Start without comments; add later if community demand emerges
- **Noted in Non-Goals:** Comments explicitly out of scope for initial launch

**Q3: Should we add email newsletter signup for blog updates?**
- **Decision:** [To be determined - awaiting user input]
- **Impact:** Requires email service integration (Mailchimp, ConvertKit, etc.)
- **Recommendation:** Defer to future iteration; focus on content quality first
- **Noted in Non-Goals:** Email newsletter out of scope for initial launch

**Q4: Visual style - should blog match website exactly or have its own branding?**
- **Decision:** [To be determined - awaiting user input]
- **Impact:** Affects CSS styling and design time
- **Recommendation:** Match website exactly for consistency; can evolve later

**Q5: Should we create a Markdown-to-HTML conversion script or use online tools?**
- **Decision:** [To be determined - awaiting user input]
- **Impact:** Efficiency of content creation workflow
- **Recommendation:** Start with online tools (Dillinger); create script if manual conversion becomes burdensome

---

## Design Decisions

### Decision 1: Static Blog vs. Static Site Generator

**Options Considered:**
1. **Static HTML blog** (no build process)
2. Static Site Generator (Eleventy, Hugo)
3. Headless CMS (NetlifyCMS, Contentful)
4. React-based blog (Next.js, Gatsby)

**Decision:** Static HTML blog (Option 1)

**Rationale:**
- **Aligns with current tech stack:** Website uses HTML + Tailwind + vanilla JS; no build process
- **Simplicity:** Easier to maintain, no framework lock-in
- **Performance:** Static HTML loads fastest
- **Low barrier to contribution:** Anyone can edit HTML files
- **No deployment complexity:** Works with existing Netlify setup

**Trade-offs:**
- ✅ **Pros:** Simple, fast, maintainable, consistent with existing site
- ❌ **Cons:** Manual file creation, no automated index generation, no templating engine

**Future Migration Path:** Can migrate to SSG later if manual workflow becomes burdensome (50+ posts)

---

### Decision 2: Client-Side Rendering vs. Server-Side Rendering

**Options Considered:**
1. **Client-side JavaScript rendering** from posts.json
2. Server-side rendering with templating
3. Pre-rendered HTML (SSG)

**Decision:** Client-side JavaScript rendering (Option 1)

**Rationale:**
- **Consistent with static approach:** No server, no build step
- **Dynamic filtering/search:** JavaScript enables interactive features (tags, search)
- **Easy updates:** Edit posts.json, deploy, done
- **Minimal performance impact:** Small JSON payload (~5-10KB for 20 posts)

**Trade-offs:**
- ✅ **Pros:** Interactive features, simple workflow, no server required
- ❌ **Cons:** JavaScript required for blog listing (but not individual posts)

---

### Decision 3: Markdown + Conversion vs. Direct HTML

**Options Considered:**
1. **Write in Markdown, convert to HTML** (manual or scripted)
2. Write directly in HTML
3. Use rich text editor (CKEditor, TinyMCE)

**Decision:** Write in Markdown, convert to HTML (Option 1)

**Rationale:**
- **Writer-friendly:** Markdown is easier and faster to write than HTML
- **Portable:** Markdown content can be migrated to any platform
- **Version control friendly:** Plain text diffs in Git
- **Flexibility:** Can use online tools initially, add script later if needed

**Trade-offs:**
- ✅ **Pros:** Fast writing, portable, readable in version control
- ❌ **Cons:** Extra conversion step (mitigated by online tools or simple script)

---

## References

**Related App Files:**
- `/jazzpracticepro/src/help/helpPillarsTheory.md` - 7 Pillars documentation
- `/jazzpracticepro/src/help/helpRepertoireTracking.md` - Spaced repetition documentation
- `/jazzpracticepro/src/help/helpAiFeedback.md` - AI feedback documentation
- `/jazzpracticepro/src/help/backup.md` - Encrypted backup documentation

**Website Files:**
- `index.html` (lines 20-45) - Header navigation to reuse
- `index.html` (lines 180-220) - Footer to reuse
- `privacy.html` - Example of static page structure

**External Resources:**
- [Fuse.js Documentation](https://fusejs.io/) - Fuzzy search library
- [Marked.js](https://marked.js.org/) - Markdown to HTML conversion
- [Schema.org Article](https://schema.org/Article) - Structured data reference
- [Open Graph Protocol](https://ogp.me/) - Social sharing metadata
- [RSS 2.0 Specification](https://www.rssboard.org/rss-specification)

---

## Success Metrics (3-Month Targets)

**Traffic:**
- 500-1,000 monthly blog page views
- 300-600 unique visitors
- 100-200 organic search visitors
- 2-3 minutes average time on page

**Engagement:**
- <60% bounce rate
- 1.5-2.5 pages per session
- 5-10 social shares per post

**Conversion:**
- 10-20% click-through rate (blog → app)
- 2-5% signup conversion from blog traffic

**SEO:**
- 3+ target keywords ranking in top 30
- All blog posts indexed by Google
- 5,000-10,000 monthly search impressions

**Content:**
- 6-10 blog posts published
- 2 posts/month cadence maintained
- Positive user feedback on content quality

---

## Next Steps

1. ✅ **Review and approve this PRD**
2. Create blog infrastructure (Phase 1)
3. Write first 3 blog posts (Phase 2)
4. Launch and promote (Phase 3)
5. Establish ongoing publishing workflow (Phase 4)

---

**End of PRD-1**
