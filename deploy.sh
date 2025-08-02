#!/bin/bash

# JazzPracticePro Website Deployment Script
# This script helps you deploy the website to various platforms

echo "🎵 JazzPracticePro Website Deployment"
echo "====================================="

# Check if we're in the website directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: Please run this script from the website directory"
    exit 1
fi

echo "✅ Website files found"
echo ""

# Show deployment options
echo "Choose your deployment method:"
echo "1) Netlify (Recommended)"
echo "2) Vercel"
echo "3) GitHub Pages"
echo "4) Local testing"
echo "5) Show deployment instructions"
echo ""

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        echo ""
        echo "🚀 Netlify Deployment Instructions:"
        echo "1. Push this website folder to a GitHub repository"
        echo "2. Go to https://netlify.com and sign up/login"
        echo "3. Click 'New site from Git'"
        echo "4. Connect your GitHub repository"
        echo "5. Set build command to: echo 'Static site - no build needed'"
        echo "6. Set publish directory to: ."
        echo "7. Click 'Deploy site'"
        echo ""
        echo "Your site will be live at: https://your-site-name.netlify.app"
        ;;
    2)
        echo ""
        echo "🚀 Vercel Deployment Instructions:"
        echo "1. Push this website folder to a GitHub repository"
        echo "2. Go to https://vercel.com and sign up/login"
        echo "3. Click 'New Project'"
        echo "4. Import your GitHub repository"
        echo "5. Vercel will auto-detect it's a static site"
        echo "6. Click 'Deploy'"
        echo ""
        echo "Your site will be live at: https://your-project-name.vercel.app"
        ;;
    3)
        echo ""
        echo "🚀 GitHub Pages Deployment Instructions:"
        echo "1. Push this website folder to a GitHub repository"
        echo "2. Go to your repository on GitHub"
        echo "3. Click Settings > Pages"
        echo "4. Under 'Source', select 'Deploy from a branch'"
        echo "5. Choose 'main' branch and '/' folder"
        echo "6. Click 'Save'"
        echo ""
        echo "Your site will be live at: https://your-username.github.io/your-repo-name"
        ;;
    4)
        echo ""
        echo "🌐 Starting local server..."
        echo "Your website will be available at: http://localhost:8000"
        echo "Press Ctrl+C to stop the server"
        echo ""
        python3 -m http.server 8000
        ;;
    5)
        echo ""
        echo "📖 Deployment Instructions:"
        echo ""
        echo "This is a static HTML website that can be deployed anywhere:"
        echo ""
        echo "Quick Deploy Options:"
        echo "- Netlify: Drag and drop the website folder to netlify.com"
        echo "- Vercel: Drag and drop the website folder to vercel.com"
        echo "- GitHub Pages: Push to GitHub and enable Pages in settings"
        echo ""
        echo "Traditional Hosting:"
        echo "- Upload all files to your web server"
        echo "- Ensure index.html is in the root directory"
        echo ""
        echo "File Structure:"
        echo "website/"
        echo "├── index.html (main page)"
        echo "├── JazzPracticePro_logo_large.png"
        echo "├── icon-192.png"
        echo "├── media/demo.gif"
        echo "└── help/ (documentation)"
        ;;
    *)
        echo "❌ Invalid choice. Please run the script again."
        exit 1
        ;;
esac

echo ""
echo "🎉 Deployment instructions complete!"
echo ""
echo "Remember to:"
echo "- Update the app URL links in index.html"
echo "- Update social media links in the footer"
echo "- Update contact email addresses"
echo "- Test the website after deployment" 