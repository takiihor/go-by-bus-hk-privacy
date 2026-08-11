# Go by Bus HK Support Page Design

**Status:** Approved 2026-08-11

## Goal

Provide a stable, public Support URL for the Go by Bus HK App Store listing,
separate from the privacy policy.

## Chosen approach

Add a standalone `support.html` to the existing GitHub Pages site and link it
from both the homepage and the privacy policy. The page uses the site's existing
light/dark, system-font visual language so it reads as part of the public
publisher site.

## Content and behaviour

- Identify **轉個彎就到 · Go by Bus HK** and title the page **技術支援 · Support**.
- State that users may report routes, ETA, location, and other app issues.
- Expose the support mailbox as a labelled `mailto:` link: `takii.hor@gmail.com`.
- Link to `privacy.html` and back to the homepage.
- Use static HTML only: no scripts, tracking, accounts, or form service.

## Verification

Add a small shell check for the support page, exact support email, mail link,
privacy-policy link, homepage link, and reciprocal navigation. Verify the
deployed HTTPS URL after publishing.

## Public URL

`https://takiihor.github.io/go-by-bus-hk-privacy/support.html`
