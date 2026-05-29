# TV Productions — Website

Official website for TV Productions video agency, built with Claude Design.

## Pages

| File | URL |
|---|---|
| `index.html` | Home (root `/`) |
| `About.html` | `/About.html` |
| `Services.html` | `/Services.html` |
| `Portfolio.html` | `/Portfolio.html` |
| `Contact.html` | `/Contact.html` |
| `Coming Soon.html` | `/Coming%20Soon.html` |

## File Structure

```
/
├── index.html            ← Home page (GitHub Pages entry point)
├── About.html
├── Services.html
├── Portfolio.html
├── Contact.html
├── Coming Soon.html
├── _page-base.css        ← Shared layout styles
├── colors_and_type.css   ← Design system: colors & typography
├── image-slot.js         ← Dynamic image component
├── fonts/                ← BebasNeue font
├── assets/               ← Logo files
├── screenshots/          ← Reference screenshots from Claude Design
└── uploads/              ← Media assets (images & videos) — tracked via Git LFS
```

## Deployment (GitHub Pages)

1. Push this repo to GitHub
2. Go to **Settings → Pages**
3. Set source to `main` branch, `/ (root)`
4. Add your custom domain under **Custom domain**

## Custom Domain DNS

**For `www.yourdomain.com`** — add a CNAME record:
```
www  →  yourusername.github.io
```

**For root domain `yourdomain.com`** — add these A records:
```
@  →  185.199.108.153
@  →  185.199.109.153
@  →  185.199.110.153
@  →  185.199.111.153
```

Then check **Enforce HTTPS** in GitHub Pages settings.

## Large Media Files

Videos and images are tracked with **Git LFS**. Before your first push, install Git LFS:

```bash
git lfs install
```

This is required for the `.mp4` and large image files in `/uploads`.
