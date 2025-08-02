# JazzPracticePro Website

The official marketing website for JazzPracticePro - a practice journal app for jazz musicians.

## 🎵 About

This is the landing page for JazzPracticePro, showcasing the app's features, demo, and information for potential users. The website is designed to be fast, responsive, and SEO-optimized.

## 🚀 Quick Start

### Local Development

```bash
# Clone the repository
git clone https://github.com/yourusername/jazzpracticepro-website.git
cd jazzpracticepro-website

# Start local server
python3 -m http.server 8000
# or
npx serve .
```

Visit `http://localhost:8000` to view the website.

### Deployment

```bash
# Use the deployment script
./deploy.sh
```

## 📁 Project Structure

```
jazzpracticepro-website/
├── index.html              # Main landing page
├── README.md               # This file
├── deploy.sh               # Deployment helper script
├── .gitignore              # Git ignore rules
├── JazzPracticePro_logo_large.png  # App logo
├── icon-192.png           # Favicon
├── icon-512.png           # App icon
├── media/
│   └── demo.gif           # App demo video
└── help/                  # Help documentation
```

## 🎨 Features

- **Responsive Design**: Works perfectly on all devices
- **SEO Optimized**: Meta tags, Open Graph, Twitter Cards
- **Fast Loading**: Uses Tailwind CSS CDN
- **Modern UI**: Clean, professional design
- **Accessibility**: Semantic HTML and proper ARIA labels

## 🛠️ Technology Stack

- **HTML5**: Semantic markup
- **Tailwind CSS**: Utility-first CSS framework
- **Vanilla JavaScript**: Lightweight interactions
- **No Build Process**: Simple static site

## 📱 Sections

1. **Navigation**: Logo and menu
2. **Hero**: Welcome message and call-to-action
3. **Features**: Key app features with descriptions
4. **Demo**: App demonstration video
5. **How It Works**: 3-step process explanation
6. **About**: Information about JazzPracticePro
7. **CTA**: Final call-to-action
8. **Footer**: Links and contact information

## 🚀 Deployment Options

### Netlify (Recommended)

1. Push to GitHub
2. Connect repository to Netlify
3. Set build command: `echo "Static site - no build needed"`
4. Set publish directory: `.`

### Vercel

1. Push to GitHub
2. Import repository to Vercel
3. Deploy automatically

### GitHub Pages

1. Push to GitHub
2. Go to Settings > Pages
3. Select "Deploy from a branch"
4. Choose `main` branch and `/` folder

## 🔧 Customization

### Content Updates

- Edit `index.html` to update text content
- Replace images in the root directory
- Update demo video in `media/demo.gif`

### Styling

- Modify Tailwind classes in `index.html`
- Update CSS variables in the `<style>` section
- Customize colors and fonts

### Links

- Update app store links when available
- Modify social media links in footer
- Update contact email addresses

## 📊 Analytics

To add Google Analytics, insert your tracking code in the `<head>` section of `index.html`:

```html
<!-- Google Analytics -->
<script
  async
  src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"
></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag() {
    dataLayer.push(arguments);
  }
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

## 🔄 Maintenance

### Regular Tasks

- Update trial banner dates
- Refresh demo video with new features
- Check all links are working
- Update social media links
- Monitor analytics

### Before Launch

- Update "Coming Soon" button with App Store link
- Add actual app screenshots
- Update contact information
- Test on multiple devices

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test locally
5. Submit a pull request

## 📞 Support

For questions about the website:

- Email: contact@jazzpracticepro.com
- Create an issue in this repository

## 📄 License

This project is part of JazzPracticePro. All rights reserved.

---

Built with 🎶 + ❤️ for jazz musicians everywhere.
