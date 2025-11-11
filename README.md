# Scores Hub Website

Public website files for App Store submission (Privacy Policy and Support pages).

## Purpose

This folder contains HTML files that will be hosted separately via GitHub Pages. This keeps your main repository private while providing the required URLs for App Store Connect.

## Files

- `privacy-policy.html` - Privacy Policy page
- `support.html` - Support/Contact page

## Setup Instructions

### Step 1: Create Separate Public Repository

1. Go to: https://github.com/new
2. Repository name: `skoor-website` (or any name you prefer)
3. **Make it Public** ✅ (required for GitHub Pages)
4. **DO NOT** initialize with README, .gitignore, or license
5. Click "Create repository"

### Step 2: Push These Files to New Repository

```bash
# Navigate to website folder
cd website

# Initialize git
git init

# Add files
git add .

# Commit
git commit -m "Initial commit - Privacy Policy and Support pages"

# Add remote (replace skoor-website if different name)
git remote add origin https://github.com/ByShabib/skoor-website.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to: https://github.com/ByShabib/skoor-website/settings/pages
2. Under **Source**:
   - Select "Deploy from a branch"
   - Branch: `main`
   - Folder: `/ (root)`
   - Click **Save**
3. Wait 1-2 minutes for deployment

### Step 4: Your URLs Will Be

- Privacy Policy: `https://byshabib.github.io/skoor-website/privacy-policy.html`
- Support: `https://byshabib.github.io/skoor-website/support.html`

## Updating Files

When you need to update the website files:

1. Edit files in this `website/` folder
2. Copy to the separate repository
3. Commit and push to update the live site

## Notes

- This folder is part of your main (private) repository
- Files here are copied to a separate public repository for hosting
- Keeps your main codebase private while providing public URLs

