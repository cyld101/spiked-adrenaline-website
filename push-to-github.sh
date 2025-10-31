#!/bin/bash

# Run this script AFTER creating the repository on GitHub
# This will push your complete Spiked Adrenaline website to GitHub

echo "🚀 Pushing Spiked Adrenaline website to GitHub..."
echo "Repository: https://github.com/cyld101/spiked-adrenaline-website"
echo ""

# Push to GitHub
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ SUCCESS! Your website has been pushed to GitHub!"
    echo ""
    echo "🌐 Your repository is now available at:"
    echo "https://github.com/cyld101/spiked-adrenaline-website"
    echo ""
    echo "📝 What was uploaded:"
    echo "- Complete responsive website (27 files)"
    echo "- 3 high-converting adventure stories"
    echo "- Professional gear review system"
    echo "- Web3Forms contact integration"
    echo "- All your real photos"
    echo "- Setup documentation"
    echo ""
    echo "🎯 Next steps:"
    echo "1. Deploy to web hosting (Netlify, Vercel, etc.)"
    echo "2. Set up your custom domain (spikedadrenaline.com)"
    echo "3. Test the contact form"
    echo "4. Start driving traffic to your affiliate links!"
else
    echo ""
    echo "❌ Error: Make sure you've created the repository on GitHub first:"
    echo "https://github.com/new"
    echo "Repository name: spiked-adrenaline-website"
fi