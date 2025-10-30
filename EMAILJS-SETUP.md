# EmailJS Setup Guide for Spiked Adrenaline Contact Form

## 🚀 Complete Setup Instructions

### Step 1: Create EmailJS Account
1. Go to [EmailJS.com](https://www.emailjs.com/)
2. Sign up for a free account (200 emails/month free)
3. Verify your email address

### Step 2: Add Email Service
1. In your EmailJS dashboard, go to **"Email Services"**
2. Click **"Add New Service"**
3. Choose your email provider:
   - **Gmail** (recommended for personal)
   - **Outlook/Hotmail**
   - **Yahoo**
   - Or any other SMTP provider
4. Follow the connection instructions
5. Note down your **SERVICE ID** (e.g., `service_abc123`)

### Step 3: Create Email Template
1. Go to **"Email Templates"** in your dashboard
2. Click **"Create New Template"**
3. Use this template content:

**Subject:** New Contact from Spiked Adrenaline - {{subject}}

**Body:**
```
You have a new message from your Spiked Adrenaline website!

From: {{from_name}}
Email: {{from_email}}
Subject: {{subject}}

Message:
{{message}}

---
Sent from your website contact form
Time: {{sent_at}}
```

4. Save the template and note the **TEMPLATE ID** (e.g., `template_xyz789`)

### Step 4: Get Your Public Key
1. Go to **"Account"** → **"General"**
2. Find your **Public Key** (starts with letters/numbers)
3. Copy this key

### Step 5: Update Your Website Code
Replace these placeholders in your `index.html`:

```html
<!-- In the <head> section: -->
<script type="text/javascript">
    (function(){
        emailjs.init("YOUR_PUBLIC_KEY"); // Replace with your actual public key
    })();
</script>
```

And in your `js/main.js`, update this line:
```javascript
emailjs.sendForm('YOUR_SERVICE_ID', 'YOUR_TEMPLATE_ID', this)
```

**Final Example:**
```javascript
emailjs.sendForm('service_abc123', 'template_xyz789', this)
```

### Step 6: Test Your Form
1. Upload your updated files to your website
2. Submit a test message through your contact form
3. Check your email for the form submission
4. Verify the thank you page redirect works

## 📧 Email Template Variables

Your form sends these variables to EmailJS:
- `{{from_name}}` - Visitor's name
- `{{from_email}}` - Visitor's email
- `{{subject}}` - Selected subject (sponsorship, collaboration, etc.)
- `{{message}}` - Their message

## 🛡️ Spam Protection

EmailJS includes basic spam protection, but you can also:
1. Enable reCAPTCHA in EmailJS dashboard
2. Set daily sending limits
3. Use the honeypot field (already included in your form)

## 💰 Pricing

- **Free:** 200 emails/month
- **Personal:** $15/month for 1,000 emails
- **Business:** $35/month for 3,000 emails

## 🔧 Troubleshooting

**Form not sending?**
1. Check browser console for errors
2. Verify your SERVICE_ID and TEMPLATE_ID are correct
3. Make sure your email service is properly connected
4. Test with a simple template first

**Not receiving emails?**
1. Check spam folder
2. Verify your email address in EmailJS
3. Test the template preview in EmailJS dashboard

**JavaScript errors?**
1. Make sure EmailJS script loads before your main.js
2. Check that `emailjs` is defined in browser console
3. Verify public key is correct

## ✅ Benefits of EmailJS

- ✅ No backend server required
- ✅ Works with static websites
- ✅ Spam protection included
- ✅ Multiple email services supported
- ✅ Template customization
- ✅ Analytics and monitoring
- ✅ Free tier available

Your contact form will now send emails directly to your inbox without needing any server-side code!