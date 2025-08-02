#!/bin/bash

# JazzPracticePro Website - Asset Sync Script
# This script helps sync assets from the main app repository to the website

echo "🎵 JazzPracticePro Website - Asset Sync"
echo "======================================="

# Check if we're in the website directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: Please run this script from the jazzpracticepro-website directory"
    exit 1
fi

# Define the app repository path (update this to your actual path)
APP_REPO="../jazzpracticepro"

echo "📁 Syncing assets from app repository..."
echo ""

# Check if app repository exists
if [ ! -d "$APP_REPO" ]; then
    echo "⚠️  App repository not found at: $APP_REPO"
    echo "Please update the APP_REPO path in this script to point to your app repository"
    exit 1
fi

# Sync logo and icons
echo "🖼️  Syncing logos and icons..."
cp "$APP_REPO/public/JazzPracticePro_logo_large.png" . 2>/dev/null || echo "  ⚠️  Logo not found"
cp "$APP_REPO/public/icon-192.png" . 2>/dev/null || echo "  ⚠️  Icon 192 not found"
cp "$APP_REPO/public/icon-512.png" . 2>/dev/null || echo "  ⚠️  Icon 512 not found"

# Sync demo video
echo "🎬 Syncing demo video..."
if [ -d "$APP_REPO/public/media" ]; then
    mkdir -p media
    cp "$APP_REPO/public/media/demo.gif" media/ 2>/dev/null || echo "  ⚠️  Demo GIF not found"
else
    echo "  ⚠️  Media directory not found"
fi

# Sync help documentation
echo "📚 Syncing help documentation..."
if [ -d "$APP_REPO/public/help" ]; then
    cp -r "$APP_REPO/public/help" . 2>/dev/null || echo "  ⚠️  Help directory not found"
else
    echo "  ⚠️  Help directory not found"
fi

echo ""
echo "✅ Asset sync complete!"
echo ""
echo "📝 Next steps:"
echo "1. Review the synced assets"
echo "2. Commit changes to git"
echo "3. Deploy the updated website"
echo ""
echo "💡 Tip: Run this script whenever you update assets in the main app repository" 