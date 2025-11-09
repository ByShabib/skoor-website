#!/bin/bash

# Script to push website files to GitHub Pages repository
# Run this after creating the skoor-website repository on GitHub

echo "🚀 Setting up GitHub Pages repository..."

# Navigate to website folder
cd "$(dirname "$0")"

# Initialize git (if not already)
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
fi

# Add all files
echo "➕ Adding files..."
git add .

# Commit
echo "💾 Committing files..."
git commit -m "Initial commit - Privacy Policy and Support pages"

# Add remote (if not already added)
if ! git remote | grep -q "origin"; then
    echo "🔗 Adding remote repository..."
    git remote add origin https://github.com/ByShabib/skoor-website.git
else
    echo "✅ Remote already configured"
fi

# Push to GitHub
echo "📤 Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Done! Now go to: https://github.com/ByShabib/skoor-website/settings/pages"
echo "   Enable GitHub Pages and select: Branch: main, Folder: / (root)"

