#!/bin/bash
# ─────────────────────────────────────────────────────────────
# TV Productions — GitHub Setup Script
# Run this once from inside the repo folder on your computer
# ─────────────────────────────────────────────────────────────

set -e

# 1. Install Git LFS (required for videos & large images)
echo "→ Setting up Git LFS..."
git lfs install

# 2. Initialize git repo
echo "→ Initializing git repo..."
git init
git add .gitattributes   # add LFS config FIRST
git lfs track "uploads/*.mp4" "uploads/*.jpg" "uploads/*.JPG" "uploads/*.jpeg" "uploads/*.JPEG" "uploads/*.png" "uploads/*.PNG"
git add .
git commit -m "Initial commit: TV Productions website from Claude Design"

# 3. Set main branch
git branch -M main

# ─────────────────────────────────────────────────────────────
# 4. Connect to your GitHub repo
#    Replace YOUR_USERNAME and YOUR_REPO_NAME below
# ─────────────────────────────────────────────────────────────
GITHUB_USERNAME=tannervonnahme2
REPO_NAME="tv-productions"

git remote add origin "https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

echo "→ Pushing to GitHub (this may take a while due to video files)..."
git push -u origin main

echo ""
echo "✅ Done! Now go to:"
echo "   https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/settings/pages"
echo "   Set source → main branch → / (root) → Save"
echo "   Then add your custom domain."
