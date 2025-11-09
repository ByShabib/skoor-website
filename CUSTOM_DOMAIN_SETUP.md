# Custom Domain Setup for GitHub Pages

## Your URLs

- **Privacy Policy**: https://tryscoreshub.com/privacy-policy.html
- **Support**: https://tryscoreshub.com/support.html

---

## Setting Up Custom Domain (tryscoreshub.com)

### Step 1: Configure GitHub Pages

1. Go to: https://github.com/ByShabib/skoor-website/settings/pages
2. Under "Custom domain":
   - Enter: `tryscoreshub.com`
   - Click **Save**
3. Check "Enforce HTTPS" (wait a few minutes for SSL certificate)

### Step 2: Configure DNS Settings

Go to your domain registrar (where you bought tryscoreshub.com) and add these DNS records:

#### Option 1: Use CNAME (Recommended for www)

```
Type: CNAME
Host: www
Value: byshabib.github.io.
TTL: 3600 (or Auto)
```

#### Option 2: Use A Records (For root domain)

If you want `tryscoreshub.com` (without www), add these A records:

```
Type: A
Host: @
Value: 185.199.108.153
TTL: 3600

Type: A
Host: @
Value: 185.199.109.153
TTL: 3600

Type: A
Host: @
Value: 185.199.110.153
TTL: 3600

Type: A
Host: @
Value: 185.199.111.153
TTL: 3600
```

**AND** add a CNAME for www:

```
Type: CNAME
Host: www
Value: byshabib.github.io.
TTL: 3600
```

### Step 3: Wait for DNS Propagation

- DNS changes can take 10 minutes to 48 hours
- Usually works within 30 minutes
- Check status: https://dnschecker.org/#A/tryscoreshub.com

### Step 4: Verify HTTPS

After DNS propagates:
1. Visit https://tryscoreshub.com/privacy-policy.html
2. Ensure it loads with HTTPS (🔒)
3. GitHub automatically provides free SSL certificate

---

## Which Domain Registrar Are You Using?

Common registrars and where to find DNS settings:

- **GoDaddy**: Domain Settings → Manage DNS
- **Namecheap**: Domain List → Manage → Advanced DNS
- **Google Domains**: DNS → Custom records
- **Cloudflare**: DNS → Records
- **Name.com**: DNS Records

---

## Testing

After DNS setup, test these URLs:
1. https://tryscoreshub.com
2. https://tryscoreshub.com/privacy-policy.html
3. https://tryscoreshub.com/support.html
4. https://www.tryscoreshub.com (should redirect to non-www or vice versa)

---

## Current Status

- ✅ Website files updated to "Scores Hub"
- ✅ App URLs updated to tryscoreshub.com
- ⏳ DNS configuration needed
- ⏳ GitHub Pages custom domain setup needed

---

## Next Steps

1. Configure custom domain in GitHub Pages
2. Add DNS records at your registrar
3. Wait for DNS propagation
4. Verify HTTPS works
5. Push updated website files to GitHub
6. Update App Store Connect with new URLs

