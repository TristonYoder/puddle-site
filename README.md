# Puddle Jumper site

Marketing and legal site for Puddle Jumper, published by 7 & Co LLC. Plain Jekyll as built natively by GitHub Pages, with a hand-written layout and stylesheet. No Node build, no CDN, no web fonts, no trackers. Temporary domain: **puddle.7co.dev**.

## Editing content

Everything is Markdown with front matter in the repo root:

| Page | File |
| --- | --- |
| Landing | `index.md` (sections are Markdown; the grids render from `_data/*.yml`) |
| Privacy Policy | `privacy.md` |
| Terms of Use | `terms.md` |
| Support / FAQ | `support.md` |
| Licenses | `licenses.md` (text lives in `_includes/third-party-notices.txt`; re-copy it from `swift-ssh/Sources/Resources/THIRD-PARTY-NOTICES.txt` when dependencies change) |
| 404 | `404.md` |

Landing helpers (in `_includes/`): `hero.html`, `feature-grid.html`, `how-it-works.html`, `platforms.html`, `badges.html`, `morph.html`, `themed.html` (light/dark/reduced-motion image switcher).

## Site-wide values (one place)

- `_config.yml`: name, tagline, description, `url`, `domain`, publisher, contact email, copyright year, App Store links (`app_store.ios_url` / `mac_url`; blank shows "coming soon"), legal effective dates, Apple EULA link.
- `_data/nav.yml`: header and footer links.
- `_data/features.yml`, `steps.yml`, `platforms.yml`: landing page lists.

To change the domain: edit `url` and `domain` in `_config.yml`, the `CNAME` file, and the DNS section below. Links are relative, so nothing else moves. `assets/img/og.png` has no URL baked in.

## Theming and motion

Light/dark follows the OS; the header button cycles Auto / Light / Dark and saves to `localStorage` (works without JS: stays Auto). Light mode uses the `light-dark-blue` graphics, dark mode uses `dark-teal` (`assets/img/light`, `assets/img/dark`). Under `prefers-reduced-motion`, animated SVGs are swapped for static ones and the home-page intro is disabled. The intro plays once per browser session (`sessionStorage`). Regenerate the social image with `scripts/make-og.sh` (needs Chrome).

## Preview locally

Needs Ruby 3.x (macOS system Ruby 2.6 is too old). With Nix: 

```sh
nix shell nixpkgs#ruby_3_3 nixpkgs#libyaml
bundle config set --local path vendor/bundle
bundle install
bundle exec jekyll serve   # http://localhost:4000
```

Or any Ruby >= 3.0 (rbenv, Homebrew) with the same `bundle` commands.

## Deploying on GitHub Pages

1. Create the GitHub repo (not done yet) and push `main`.
2. Settings > Pages > Build and deployment: Source "Deploy from a branch", branch `main`, folder `/ (root)`.
3. Custom domain: `puddle.7co.dev` (matches the `CNAME` file). After DNS resolves, tick **Enforce HTTPS**.

### DNS for puddle.7co.dev

At the DNS host for `7co.dev`, add one record:

| Type | Name | Value |
| --- | --- | --- |
| CNAME | `puddle` | `<github-user-or-org>.github.io` |

Replace the placeholder with the GitHub user or org that owns the repo. No A records needed for a subdomain. Consider verifying the domain in GitHub account Settings > Pages to prevent takeover.

## TODO-legal (owner / counsel)

- Terms of Use is a short draft that leans on Apple's Standard EULA. Governing law, venue and liability wording were deliberately omitted; counsel should review.
- Privacy Policy is reused from the drafted policy and matches current app behavior; no postal address or EU/UK representative is listed. Confirm whether one is required and add contact details.
- Effective dates (October 3, 2026) in `_config.yml` should be updated whenever the policies change.
- Export compliance (ECCN / BIS report) is outside the site; see `swift-ssh/docs/app-store-submission.md`.
- Download buttons are text placeholders. Apple's official "Download on the App Store" badge artwork must be used (per Apple's marketing guidelines) once the app is live.
- Trademark notice in the footer is generic; confirm wording. "Puddle Jumper" is a working title: check name availability.
- Open-source notices are reproduced verbatim from the app bundle; keep them in sync with each release.

## Verified vs not

Built locally with the `github-pages` gem on Ruby 3.3. Not yet verified on GitHub's own builder, with real DNS/HTTPS, or in Safari.
