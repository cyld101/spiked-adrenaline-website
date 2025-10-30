# Web3Forms Setup Guide - ProtonMail Compatible

## 🎯 **Why Web3Forms Over EmailJS for ProtonMail?**

- ✅ **Works with ANY email** (including ProtonMail)
- ✅ **No email service integration needed**
- ✅ **Simple API key setup**
- ✅ **Free tier: 250 submissions/month**
- ✅ **No complex authentication**
- ✅ **GDPR compliant**

## 🚀 **Setup Instructions**

### Step 1: Create Web3Forms Account
1. Go to [Web3Forms.com](https://web3forms.com/)
2. Click **"Get Started Free"**
3. Sign up with your email (can use ProtonMail!)
4. Verify your email address

### Step 2: Create Access Key
1. In your Web3Forms dashboard, click **"Create New Form"**
2. Enter form details:
   - **Form Name:** "Spiked Adrenaline Contact"
   - **Your Email:** your-protonmail@proton.me
   - **Website:** spikedadrenaline.com
3. Copy your **Access Key** (looks like: `abc123def-456g-789h-123i-456jklmnop`)

### Step 3: Update Your Website
Replace this line in your `index.html`:
```html
<input type="hidden" name="access_key" value="YOUR_WEB3FORMS_ACCESS_KEY">
```

**Example:**
```html
<input type="hidden" name="access_key" value="abc123def-456g-789h-123i-456jklmnop">
```

### Step 4: Update Redirect URL
Change this line to your actual domain:
```html
<input type="hidden" name="redirect" value="https://yourdomain.com/thank-you.html">
```

### Step 5: Test Your Form
1. Upload your files to your website
2. Submit a test message
3. Check your ProtonMail inbox!

## 📧 **Email Format You'll Receive**

```
Subject: New submission from Spiked Adrenaline Contact

From: visitor-email@example.com
Name: John Doe
Subject: Sponsorship Opportunity

Message:
Hi, I'm interested in sponsoring your outdoor adventures...

---
Form submitted from: spikedadrenaline.com
IP Address: 123.456.789.0
User Agent: Mozilla/5.0...
```

## 🛡️ **Spam Protection Features**

- ✅ **Honeypot field** (already included)
- ✅ **Rate limiting** (built-in)
- ✅ **IP filtering** (optional)
- ✅ **reCAPTCHA integration** (optional)
- ✅ **Webhook validation** (automatic)

## 💰 **Pricing**

- **Free:** 250 submissions/month
- **Pro:** $3/month for 1,000 submissions
- **Business:** $9/month for 10,000 submissions

## 🔧 **Optional Enhancements**

### Add reCAPTCHA (Recommended)
Add to your form:
```html
<div class="h-captcha" data-captcha="true"></div>
```

### Custom Email Template
In Web3Forms dashboard → Form Settings → Email Template

### Webhook Integration
For advanced integrations (Slack, Discord, etc.)

## ✅ **Advantages Over Other Solutions**

**vs EmailJS:**
- ✅ Works with ProtonMail
- ✅ Simpler setup
- ✅ More reliable delivery

**vs Formspree:**
- ✅ Better free tier (250 vs 50)
- ✅ More features included
- ✅ Better spam protection

**vs Netlify Forms:**
- ✅ Works on any hosting platform
- ✅ More customization options
- ✅ Better analytics

## 🎨 **Customization Options**

1. **Custom Thank You Page** (already set up)
2. **Email Templates** (HTML/text)
3. **Auto-responders** (send confirmation to visitor)
4. **File Uploads** (for media kit requests)
5. **Custom Fields** (tracking, UTM parameters)

## 🔍 **Testing Checklist**

- [ ] Form submits without errors
- [ ] Email arrives in ProtonMail inbox
- [ ] Thank you page displays correctly
- [ ] Spam protection works (try submitting twice quickly)
- [ ] Mobile form works properly
- [ ] All required fields validate

Your contact form is now 100% compatible with ProtonMail and any other email service! 🚀