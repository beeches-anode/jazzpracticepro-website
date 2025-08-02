# Website Repository Separation Guide

## Overview

The JazzPracticePro website has been separated from the main app repository to create a cleaner, more maintainable structure.

## Repository Structure

```
jazzpracticepro/                    # Main app repository
├── src/                           # React app source code
├── public/                        # App assets
├── ios/                          # iOS app files
└── ...                           # Other app files

jazzpracticepro-website/           # Website repository (NEW)
├── index.html                     # Main landing page
├── README.md                      # Website documentation
├── deploy.sh                      # Deployment script
├── sync-assets.sh                 # Asset sync script
├── package.json                   # Website dependencies
├── .gitignore                     # Git ignore rules
├── JazzPracticePro_logo_large.png # App logo
├── icon-192.png                  # Favicon
├── icon-512.png                  # App icon
├── media/
│   └── demo.gif                  # App demo video
└── help/                         # Help documentation
```

## Benefits of Separation

### ✅ **Clean Organization**

- App code and website code are separate
- Each repository has a single purpose
- Easier to manage different teams/contributors

### ✅ **Independent Deployment**

- Website can be deployed to different services
- App can be deployed independently
- Different deployment pipelines

### ✅ **Better Maintenance**

- Website changes don't affect app development
- App updates don't require website changes
- Easier to track issues and features

### ✅ **SEO and Domain Management**

- Website can have its own domain
- Better for search engine optimization
- Independent analytics and monitoring

## Asset Synchronization

### Manual Sync

Use the `sync-assets.sh` script to copy assets from the app repository:

```bash
cd jazzpracticepro-website
./sync-assets.sh
```

### Assets to Sync

- Logo and icons (`JazzPracticePro_logo_large.png`, `icon-*.png`)
- Demo video (`media/demo.gif`)
- Help documentation (`help/` directory)

### When to Sync

- After updating the app logo
- After creating a new demo video
- After updating help documentation
- Before major website deployments

## Deployment Workflow

### Website Deployment

1. Make changes to website files
2. Test locally: `python3 -m http.server 8000`
3. Commit and push to website repository
4. Deploy using `./deploy.sh` or your preferred platform

### App Deployment

1. Make changes to app code
2. Test the app
3. Update assets if needed
4. Sync assets to website repository
5. Deploy app and website separately

## Repository Management

### Website Repository

- **Purpose**: Marketing and information
- **Content**: Landing page, features, demo, about
- **Deployment**: Static hosting (Netlify, Vercel, etc.)
- **Updates**: Content changes, design updates

### App Repository

- **Purpose**: Application development
- **Content**: React app, iOS app, business logic
- **Deployment**: App stores, web app hosting
- **Updates**: Features, bug fixes, improvements

## Best Practices

### ✅ **Do**

- Keep website content up to date
- Sync assets when app assets change
- Test website locally before deploying
- Use semantic versioning for releases
- Document changes in both repositories

### ❌ **Don't**

- Mix app code with website code
- Deploy website changes without testing
- Forget to sync assets after app updates
- Use the same deployment pipeline for both

## Migration Checklist

- [x] Create separate website repository
- [x] Copy all website files
- [x] Create proper documentation
- [x] Set up deployment scripts
- [x] Create asset sync script
- [x] Test website locally
- [ ] Create GitHub repository for website
- [ ] Set up deployment pipeline
- [ ] Update domain settings
- [ ] Test deployment
- [ ] Remove website files from app repository

## Support

For questions about the separation:

- Website issues: Create issue in website repository
- App issues: Create issue in app repository
- General questions: contact@jazzpracticepro.com

---

This separation creates a more professional and maintainable structure for JazzPracticePro's development and marketing efforts.
