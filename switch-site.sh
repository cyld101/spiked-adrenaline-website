#!/bin/bash

echo "🔄 Spiked Adrenaline Site Switcher"
echo ""

if [ ! -f "main-site.html" ]; then
    echo "❌ Error: main-site.html not found"
    echo "Make sure you have both files in the directory"
    exit 1
fi

if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found"
    echo "Make sure you have both files in the directory"
    exit 1
fi

# Check current state
if grep -q "Something Epic is Coming" index.html; then
    CURRENT_STATE="coming-soon"
else
    CURRENT_STATE="main-site"
fi

echo "Current state: $CURRENT_STATE"
echo ""
echo "Choose an option:"
echo "1) Switch to Coming Soon page"
echo "2) Switch to Main Site"
echo "3) Cancel"
echo ""
read -p "Enter your choice (1-3): " choice

case $choice in
    1)
        if [ "$CURRENT_STATE" = "coming-soon" ]; then
            echo "✅ Already showing Coming Soon page"
        else
            echo "🔄 Switching to Coming Soon page..."
            mv index.html temp-main.html
            mv main-site.html temp-coming.html
            mv temp-main.html main-site.html
            mv temp-coming.html index.html
            echo "✅ Now showing: Coming Soon page"
            echo "📝 Your main site is saved as: main-site.html"
        fi
        ;;
    2)
        if [ "$CURRENT_STATE" = "main-site" ]; then
            echo "✅ Already showing Main Site"
        else
            echo "🔄 Switching to Main Site..."
            mv index.html temp-coming.html
            mv main-site.html temp-main.html
            mv temp-coming.html main-site.html
            mv temp-main.html index.html
            echo "✅ Now showing: Main Site"
            echo "📝 Your coming soon page is saved as: main-site.html"
        fi
        ;;
    3)
        echo "❌ Cancelled"
        exit 0
        ;;
    *)
        echo "❌ Invalid choice"
        exit 1
        ;;
esac

echo ""
echo "🚀 Ready to commit and push changes? (y/n)"
read -p "> " commit_choice

if [ "$commit_choice" = "y" ] || [ "$commit_choice" = "Y" ]; then
    git add -A
    if [ "$CURRENT_STATE" = "coming-soon" ]; then
        git commit -m "Switch to main site - ready for launch"
    else
        git commit -m "Switch to coming soon page - building anticipation"
    fi
    git push origin main
    echo "✅ Changes pushed to GitHub!"
else
    echo "📝 Changes saved locally. Run 'git add -A && git commit -m \"your message\" && git push origin main' to upload"
fi