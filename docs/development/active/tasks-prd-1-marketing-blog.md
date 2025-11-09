# Tasks for PRD-1: Marketing Blog Feature

**PRD Reference:** [prd-1-marketing-blog.md](./prd-1-marketing-blog.md)
**Created:** 2025-11-02
**Status:** Ready for implementation

---

## Notes

### Design System Reference
- **Colors:** Primary `#7c3aed`, Secondary `#8b5cf6` (purple scheme)
- **Typography:** Default Tailwind font stack
- **Layout:** Max-width 6xl container (`max-w-6xl mx-auto`)
- **Cards:** Feature cards use `feature-card:hover` with translateY(-2px) animation
- **Spacing:** Consistent `px-4 sm:px-6 lg:px-8` padding pattern

### Testing Checklist
- **Responsive breakpoints:** Mobile (375px), Tablet (768px), Desktop (1024px+)
- **Cross-browser:** Chrome, Firefox, Safari, Edge
- **Accessibility:** Semantic HTML, ARIA labels, keyboard navigation, alt text
- **SEO:** Meta tags, Open Graph, Schema.org, heading hierarchy (h1 → h2 → h3)
- **Performance:** Images under 200KB, lazy loading, JS under 50KB total
- **Link validation:** All internal links work, no 404s

### Navigation Structure
Current nav items (lines 97-112 in `index.html`):
- Features → `/help/features.html`
- Demo → `#demo`
- Quickstart → `/help/quickstart.html`

**Blog link should be inserted between Features and Demo**

### Existing Patterns to Reuse
- Header/footer from `index.html` (lines 84-149 for header, footer at end of file)
- Mobile menu toggle pattern (lines 115-149)
- Feature card grid layout (search for "feature-card" in index.html)
- Tailwind config with custom purple colors (lines 52-62)

### RSS Feed Validation
- Test with W3C Feed Validation Service: https://validator.w3.org/feed/
- Ensure valid RSS 2.0 format

### Deployment Process
1. Test locally: `python3 -m http.server 8000` or `npm run serve`
2. Validate all links and responsive breakpoints
3. Deploy via `./deploy.sh` to Netlify
4. Verify production deployment
5. Submit updated sitemap to Google Search Console

---

## Tasks

### Phase 1: Infrastructure Setup (Week 1)

- [ ] 1.0 **Blog Directory Structure**
  - [ ] 1.1 Create `/blog/` directory in website root
  - [ ] 1.2 Create `/blog/posts/` subdirectory for blog post HTML files
  - [ ] 1.3 Create `/blog/assets/` subdirectory for blog images and media
  - [ ] 1.4 Create empty `posts.json` metadata file with structure: `{ "posts": [] }`
  - [ ] 1.5 Verify directory permissions and accessibility

- [ ] 2.0 **Blog Listing Page** (creates `/blog/index.html`)
  - [ ] 2.1 Copy header from `index.html` (lines 84-149) to blog listing page
  - [ ] 2.2 Add "Blog" navigation link to header (insert between Features and Demo)
  - [ ] 2.3 Create page title section: "JazzPracticePro Blog"
  - [ ] 2.4 Add hero section with subtitle explaining blog purpose
  - [ ] 2.5 Create search bar UI with input field (placeholder: "Search posts...")
  - [ ] 2.6 Create tag filter section (will populate dynamically from posts)
  - [ ] 2.7 Create blog post grid container with id="blog-posts"
  - [ ] 2.8 Add empty state message: "No blog posts yet. Check back soon!"
  - [ ] 2.9 Add RSS feed link in header: "Subscribe via RSS"
  - [ ] 2.10 Copy footer from `index.html` to blog listing page
  - [ ] 2.11 Update page meta tags: title, description for SEO

- [ ] 3.0 **Blog Post Template** (creates `/blog/template.html`)
  - [ ] 3.1 Copy header from `index.html` with Blog nav link added
  - [ ] 3.2 Add breadcrumb navigation: Home > Blog > [Post Title]
  - [ ] 3.3 Create article structure with semantic HTML5 `<article>` tag
  - [ ] 3.4 Add article header section with metadata placeholder:
    - Post title (h1)
    - Author, date, read time
    - Tags with visual styling (rounded pills)
  - [ ] 3.5 Add hero image section with `<img>` tag and alt text placeholder
  - [ ] 3.6 Create article content area with proper typography classes
  - [ ] 3.7 Add Call-to-Action (CTA) section:
    - Heading: "Ready to transform your practice?"
    - Button linking to https://jazzpracticepro.app
  - [ ] 3.8 Create "Related Posts" section (manual curation, 3 posts)
  - [ ] 3.9 Add social share buttons:
    - Twitter/X
    - LinkedIn
    - Facebook
    - Copy Link (with clipboard API)
  - [ ] 3.10 Add Open Graph meta tags in `<head>`:
    - og:title, og:description, og:image, og:type, og:url
    - article:published_time, article:author
  - [ ] 3.11 Add Schema.org Article JSON-LD script:
    - headline, image, datePublished, dateModified, author, publisher
  - [ ] 3.12 Copy footer from `index.html`
  - [ ] 3.13 Add template comments indicating placeholder sections

- [ ] 4.0 **Blog Listing JavaScript** (inline in `/blog/index.html`)
  - [ ] 4.1 Write `loadBlogPosts()` function to fetch `posts.json`
  - [ ] 4.2 Filter posts by status (show only "published")
  - [ ] 4.3 Sort posts by date (newest first)
  - [ ] 4.4 Render post cards dynamically with proper HTML escaping:
    - Hero image
    - Title (linked to post)
    - Excerpt
    - Metadata (date, read time)
    - Tags
  - [ ] 4.5 Handle fetch errors gracefully with user-friendly message
  - [ ] 4.6 Implement tag filtering: click tag to filter posts
  - [ ] 4.7 Add Fuse.js CDN script: `https://cdn.jsdelivr.net/npm/fuse.js@6.6.2`
  - [ ] 4.8 Implement client-side search with Fuse.js (search title, excerpt, tags)
  - [ ] 4.9 Update post grid when search/filter changes
  - [ ] 4.10 Call `loadBlogPosts()` on page load

- [ ] 5.0 **RSS Feed** (creates `/blog/feed.xml`)
  - [ ] 5.1 Create RSS 2.0 XML structure with channel metadata
  - [ ] 5.2 Add channel title: "JazzPracticePro Blog"
  - [ ] 5.3 Add channel description, link, language (en-us)
  - [ ] 5.4 Add placeholder for 10 most recent posts (will update manually)
  - [ ] 5.5 Define item structure: title, link, description, pubDate, author
  - [ ] 5.6 Validate RSS feed at https://validator.w3.org/feed/

- [ ] 6.0 **Update Website Navigation** (modifies `index.html`)
  - [ ] 6.1 Add "Blog" link to desktop nav (line ~98-112, between Features and Demo)
  - [ ] 6.2 Add "Blog" link to mobile menu (line ~137-149, between Features and Demo)
  - [ ] 6.3 Ensure consistent styling with existing nav items
  - [ ] 6.4 Set href to `/blog/`
  - [ ] 6.5 Test navigation from homepage to blog listing
  - [ ] 6.6 Test mobile menu toggle with new Blog link

- [ ] 7.0 **Homepage Footer "Latest Posts" Section** (modifies `index.html`)
  - [ ] 7.1 Identify footer insertion point (before existing footer, around line 175-180)
  - [ ] 7.2 Create "Latest Posts" heading section
  - [ ] 7.3 Add container with id="recent-posts" for dynamic post list
  - [ ] 7.4 Add "View All Posts →" link to `/blog/`
  - [ ] 7.5 Write JavaScript to fetch `/blog/posts.json` on page load
  - [ ] 7.6 Render 3 most recent published posts (title + date)
  - [ ] 7.7 Link each post to its URL: `/blog/posts/YYYY-MM-DD-slug.html`
  - [ ] 7.8 Style section to match existing footer design
  - [ ] 7.9 Test that section updates when `posts.json` changes

- [ ] 8.0 **Responsive Design - Blog Listing**
  - [ ] 8.1 Apply Tailwind responsive classes for post grid:
    - Mobile (default): Single column (`grid-cols-1`)
    - Tablet (`md:`): 2 columns (`md:grid-cols-2`)
    - Desktop (`lg:`): 3 columns (`lg:grid-cols-3`)
  - [ ] 8.2 Ensure images are responsive: `max-w-full h-auto`
  - [ ] 8.3 Test search bar responsiveness on mobile
  - [ ] 8.4 Test tag filter wrapping on narrow screens
  - [ ] 8.5 Test at 375px (mobile), 768px (tablet), 1024px+ (desktop)

- [ ] 9.0 **Responsive Design - Blog Post Template**
  - [ ] 9.1 Set max-width for article content: `max-w-3xl mx-auto`
  - [ ] 9.2 Apply responsive padding: `px-4 sm:px-6 lg:px-8`
  - [ ] 9.3 Ensure hero image scales properly on all screen sizes
  - [ ] 9.4 Test typography readability on mobile (font sizes, line height)
  - [ ] 9.5 Test social share buttons on mobile (ensure clickable)
  - [ ] 9.6 Test Related Posts section layout on mobile (stack vertically)
  - [ ] 9.7 Test at 375px, 768px, 1024px+

- [ ] 10.0 **Performance Optimization**
  - [ ] 10.1 Add lazy loading to blog post images: `loading="lazy"`
  - [ ] 10.2 Verify total JavaScript payload under 50KB (Fuse.js ~12KB + custom ~5KB)
  - [ ] 10.3 Test page load time under 2 seconds on 3G (Chrome DevTools throttling)
  - [ ] 10.4 Minify inline JavaScript if exceeding 50KB
  - [ ] 10.5 Verify no render-blocking resources

---

### Phase 2: Content Creation (Weeks 2-3)

- [ ] 11.0 **Blog Post 1: "The 7 Pillars of Jazz Practice"**
  - [ ] 11.1 Research: Review `/jazzpracticepro/src/help/helpPillarsTheory.md`
  - [ ] 11.2 Create outline: Intro, each pillar explained, how to apply, CTA
  - [ ] 11.3 Write 1,500-2,000 words in Markdown
  - [ ] 11.4 Convert Markdown to HTML (use Dillinger or StackEdit)
  - [ ] 11.5 Create hero image: 7 Pillars framework diagram (1200px wide, under 200KB)
  - [ ] 11.6 Optimize image: compress with TinyPNG, convert to WebP if possible
  - [ ] 11.7 Save image to `/blog/assets/seven-pillars-hero.jpg` (or .webp)
  - [ ] 11.8 Add screenshots of pillars in app (optimize to under 200KB each)
  - [ ] 11.9 Create post HTML file: `/blog/posts/2025-11-01-seven-pillars-jazz-practice.html`
  - [ ] 11.10 Copy content from template, fill in:
    - Title, meta tags, Open Graph tags
    - Author: "Jazz Practice Pro Team"
    - Date: 2025-11-01
    - Read time: "5 min read"
    - Tags: ["practice-framework", "education", "pillars"]
    - Category: "educational"
  - [ ] 11.11 Paste converted HTML into article content area
  - [ ] 11.12 Add alt text to all images
  - [ ] 11.13 Add internal links to related posts (when available)
  - [ ] 11.14 Add CTA: "Try the 7 Pillars in Jazz Practice Pro"
  - [ ] 11.15 Add to `posts.json`:
    ```json
    {
      "id": "seven-pillars-jazz-practice",
      "title": "The 7 Pillars of Jazz Practice: A Modern Framework",
      "slug": "seven-pillars-jazz-practice",
      "excerpt": "Learn how to organize your jazz practice using the 7 Pillars framework. A structured approach to mastering sound, technique, vocabulary, rhythm, repertoire, transcription, and ensemble playing.",
      "author": "Jazz Practice Pro Team",
      "date": "2025-11-01",
      "publishDate": "2025-11-01T10:00:00Z",
      "updateDate": null,
      "tags": ["practice-framework", "education", "pillars"],
      "category": "educational",
      "readTime": "5 min read",
      "heroImage": "/blog/assets/seven-pillars-hero.jpg",
      "featured": true,
      "status": "published"
    }
    ```
  - [ ] 11.16 Test post renders correctly in browser
  - [ ] 11.17 Validate Open Graph tags with Twitter Card Validator
  - [ ] 11.18 Validate Schema.org markup with Google Rich Results Test

- [ ] 12.0 **Blog Post 2: "Voice Import: Log Your Practice in Seconds with AI"**
  - [ ] 12.1 Research: Test voice import feature in app, document workflow
  - [ ] 12.2 Create outline: Problem (slow logging), solution (voice), how it works, demo
  - [ ] 12.3 Write 1,200-1,500 words in Markdown
  - [ ] 12.4 Convert Markdown to HTML
  - [ ] 12.5 Create hero image: Screenshot of voice import UI (1200px, under 200KB)
  - [ ] 12.6 Create demo GIF or screenshots showing voice import workflow
  - [ ] 12.7 Optimize all images (compress, WebP format)
  - [ ] 12.8 Save images to `/blog/assets/` (voice-import-screenshot.png, etc.)
  - [ ] 12.9 Create post HTML: `/blog/posts/2025-11-05-voice-import-feature.html`
  - [ ] 12.10 Fill in metadata:
    - Title, meta tags, Open Graph
    - Author, date: 2025-11-05
    - Read time: "4 min read"
    - Tags: ["features", "ai", "voice-import", "productivity"]
    - Category: "feature-deep-dive"
  - [ ] 12.11 Paste content, add alt text, internal links
  - [ ] 12.12 Add CTA: "Try voice import today"
  - [ ] 12.13 Add to `posts.json` (featured: false, status: "published")
  - [ ] 12.14 Test rendering and validation

- [ ] 13.0 **Blog Post 3: "How Spaced Repetition Helps You Master 100 Jazz Standards"**
  - [ ] 13.1 Research: Review `/jazzpracticepro/src/help/helpRepertoireTracking.md`
  - [ ] 13.2 Research spaced repetition science (external sources)
  - [ ] 13.3 Create outline: What is SR, why it works, how app uses it, case study
  - [ ] 13.4 Write 1,800-2,200 words in Markdown
  - [ ] 13.5 Convert Markdown to HTML
  - [ ] 13.6 Create hero image: Spaced repetition curve diagram (1200px, under 200KB)
  - [ ] 13.7 Create app screenshots showing repertoire tracking (under 200KB each)
  - [ ] 13.8 Optimize all images
  - [ ] 13.9 Save to `/blog/assets/` (spaced-repetition-diagram.jpg, etc.)
  - [ ] 13.10 Create post HTML: `/blog/posts/2025-11-10-spaced-repetition-jazz-standards.html`
  - [ ] 13.11 Fill in metadata:
    - Title, meta tags, Open Graph
    - Author, date: 2025-11-10
    - Read time: "7 min read"
    - Tags: ["repertoire", "spaced-repetition", "learning", "education"]
    - Category: "educational"
  - [ ] 13.12 Paste content, add alt text, internal links (link to Post 1 if relevant)
  - [ ] 13.13 Add CTA: "Start building your repertoire"
  - [ ] 13.14 Add to `posts.json` (featured: false, status: "published")
  - [ ] 13.15 Test rendering and validation

- [ ] 14.0 **Related Posts Cross-Linking**
  - [ ] 14.1 Update Post 1 "Related Posts" section to link to Posts 2 and 3
  - [ ] 14.2 Update Post 2 "Related Posts" section to link to Posts 1 and 3
  - [ ] 14.3 Update Post 3 "Related Posts" section to link to Posts 1 and 2
  - [ ] 14.4 Verify all related post links work correctly

---

### Phase 3: Launch & Promotion (Week 4)

- [ ] 15.0 **SEO Setup**
  - [ ] 15.1 Create or update `/sitemap.xml` to include:
    - `/blog/` (blog listing page)
    - `/blog/posts/2025-11-01-seven-pillars-jazz-practice.html`
    - `/blog/posts/2025-11-05-voice-import-feature.html`
    - `/blog/posts/2025-11-10-spaced-repetition-jazz-standards.html`
  - [ ] 15.2 Verify sitemap XML syntax (well-formed)
  - [ ] 15.3 Add lastmod dates for each URL
  - [ ] 15.4 Add priority values (blog listing: 0.8, posts: 0.7)
  - [ ] 15.5 Submit sitemap to Google Search Console
  - [ ] 15.6 Request indexing for blog listing page
  - [ ] 15.7 Request indexing for all 3 blog posts

- [ ] 16.0 **Validation & Testing**
  - [ ] 16.1 Validate all blog post Open Graph tags:
    - Twitter Card Validator: https://cards-dev.twitter.com/validator
    - Facebook Debugger: https://developers.facebook.com/tools/debug/
  - [ ] 16.2 Validate Schema.org markup for all posts:
    - Google Rich Results Test: https://search.google.com/test/rich-results
  - [ ] 16.3 Validate RSS feed: https://validator.w3.org/feed/
  - [ ] 16.4 Check all heading hierarchies (h1 → h2 → h3, no skips)
  - [ ] 16.5 Verify all images have descriptive alt text
  - [ ] 16.6 Test keyboard navigation (tab through links, focus visible)
  - [ ] 16.7 Test screen reader compatibility (VoiceOver on Mac, NVDA on Windows)

- [ ] 17.0 **Cross-Browser & Responsive Testing**
  - [ ] 17.1 Test blog listing page on Chrome (desktop + mobile view)
  - [ ] 17.2 Test blog listing page on Firefox (desktop + mobile view)
  - [ ] 17.3 Test blog listing page on Safari (desktop + mobile view)
  - [ ] 17.4 Test blog listing page on Edge (desktop + mobile view)
  - [ ] 17.5 Test all 3 blog posts on Chrome (desktop + mobile view)
  - [ ] 17.6 Test all 3 blog posts on Firefox (desktop + mobile view)
  - [ ] 17.7 Test all 3 blog posts on Safari (desktop + mobile view)
  - [ ] 17.8 Test all 3 blog posts on Edge (desktop + mobile view)
  - [ ] 17.9 Test homepage "Latest Posts" section on all browsers
  - [ ] 17.10 Test responsive breakpoints (375px, 768px, 1024px) on all pages

- [ ] 18.0 **Link Validation**
  - [ ] 18.1 Verify homepage Blog nav link works
  - [ ] 18.2 Verify all blog post links from blog listing page work
  - [ ] 18.3 Verify "View All Posts" link from homepage footer works
  - [ ] 18.4 Verify all Related Posts links work
  - [ ] 18.5 Verify all CTA links to Jazz Practice Pro app work
  - [ ] 18.6 Verify all social share button URLs are correct
  - [ ] 18.7 Verify breadcrumb navigation works
  - [ ] 18.8 Test "Copy Link" button functionality (clipboard API)
  - [ ] 18.9 Run automated link checker (e.g., W3C Link Checker)

- [ ] 19.0 **Performance Testing**
  - [ ] 19.1 Test blog listing page load time on 3G (Chrome DevTools, target: <2s)
  - [ ] 19.2 Test Post 1 load time on 3G (target: <2s)
  - [ ] 19.3 Test Post 2 load time on 3G (target: <2s)
  - [ ] 19.4 Test Post 3 load time on 3G (target: <2s)
  - [ ] 19.5 Verify all images are under 200KB
  - [ ] 19.6 Verify total JavaScript payload under 50KB
  - [ ] 19.7 Check for render-blocking resources (defer/async scripts if needed)
  - [ ] 19.8 Run Lighthouse audit (target: 90+ performance score)

- [ ] 20.0 **Local Testing & Deployment**
  - [ ] 20.1 Test entire website locally: `python3 -m http.server 8000`
  - [ ] 20.2 Navigate through all blog pages and verify functionality
  - [ ] 20.3 Test search and tag filtering on blog listing
  - [ ] 20.4 Clear browser cache and test fresh load
  - [ ] 20.5 Deploy to production via `./deploy.sh`
  - [ ] 20.6 Verify deployment completed successfully (check Netlify dashboard)
  - [ ] 20.7 Test production site: https://jazzpracticepro.com/blog/
  - [ ] 20.8 Verify all blog posts accessible on production
  - [ ] 20.9 Test production RSS feed
  - [ ] 20.10 Verify Google Analytics tracking (if configured separately)

- [ ] 21.0 **Content Promotion**
  - [ ] 21.1 Write social media post for Post 1 (Twitter/X)
  - [ ] 21.2 Write social media post for Post 2 (Twitter/X)
  - [ ] 21.3 Write social media post for Post 3 (Twitter/X)
  - [ ] 21.4 Share Post 1 on LinkedIn
  - [ ] 21.5 Share Post 2 on LinkedIn
  - [ ] 21.6 Share Post 3 on LinkedIn
  - [ ] 21.7 Share Post 1 on Reddit: r/Jazz
  - [ ] 21.8 Share Post 1 on Reddit: r/jazztheory
  - [ ] 21.9 Share Post 3 on Reddit: r/Jazz (spaced repetition relevant)
  - [ ] 21.10 Email beta testers about new blog (if mailing list exists)
  - [ ] 21.11 Schedule follow-up social posts for following week

- [ ] 22.0 **Analytics & Monitoring**
  - [ ] 22.1 Verify Google Analytics tracking on blog pages (if configured)
  - [ ] 22.2 Set up Google Search Console monitoring for blog URLs
  - [ ] 22.3 Check Google Search Console for indexing status (after 48-72 hours)
  - [ ] 22.4 Monitor traffic for first week
  - [ ] 22.5 Check for 404 errors or broken links in analytics
  - [ ] 22.6 Track click-through rate from blog to app
  - [ ] 22.7 Track social shares and engagement

---

### Phase 4: Ongoing Content (Month 2+)

- [ ] 23.0 **Content Publishing Workflow Documentation**
  - [ ] 23.1 Document blog post creation workflow in README or separate doc:
    - Write in Markdown
    - Convert to HTML (online tool or script)
    - Create images (1200px wide, under 200KB)
    - Use template, fill metadata
    - Add to posts.json
    - Test locally
    - Deploy
  - [ ] 23.2 Document posts.json schema and required fields
  - [ ] 23.3 Document RSS feed update process (manual for now)
  - [ ] 23.4 Document sitemap update process
  - [ ] 23.5 Create content calendar template (Google Sheet or Markdown)

- [ ] 24.0 **Optional: Markdown-to-HTML Conversion Script** (if needed)
  - [ ] 24.1 Create `/scripts/` directory if it doesn't exist
  - [ ] 24.2 Install Node.js dependencies: `npm install marked`
  - [ ] 24.3 Write script: `/scripts/markdown-to-blog.js`:
    - Read Markdown file from input arg
    - Convert to HTML using `marked` library
    - Read blog template from `/blog/template.html`
    - Replace `{{CONTENT}}` placeholder with HTML
    - Output to `/blog/posts/` with proper filename
  - [ ] 24.4 Add usage instructions to README
  - [ ] 24.5 Test script with sample Markdown file
  - [ ] 24.6 Document in workflow documentation

---

## Completion Checklist

Before marking PRD-1 as complete, verify:

- [ ] ✅ All 15 Functional Requirements (FR-1 through FR-15) implemented
- [ ] ✅ All 24 Success Criteria (SC-1 through SC-24) validated
- [ ] ✅ All 5 User Stories (US-1 through US-5) acceptance criteria met
- [ ] ✅ Blog listing page functional with search and tag filtering
- [ ] ✅ 3 blog posts published with complete metadata
- [ ] ✅ Homepage navigation includes Blog link
- [ ] ✅ Homepage footer displays latest 3 posts
- [ ] ✅ RSS feed validates
- [ ] ✅ All SEO metadata (Open Graph, Schema.org) validates
- [ ] ✅ Responsive design tested on all breakpoints
- [ ] ✅ Cross-browser testing complete
- [ ] ✅ Performance targets met (<2s load, <50KB JS, <200KB images)
- [ ] ✅ Accessibility validated (keyboard nav, screen reader, alt text)
- [ ] ✅ Deployed to production and verified
- [ ] ✅ Sitemap submitted to Google Search Console
- [ ] ✅ Social media promotion completed
- [ ] ✅ Workflow documentation created

---

**End of Tasks for PRD-1**
