# Go by Bus HK Support Page Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Publish a dedicated bilingual GitHub Pages support page for the App Store Support URL.

**Architecture:** Keep the site static. Add `support.html` beside the homepage and privacy policy, then link the three pages. A dependency-free shell check protects the essential support contact and links.

**Tech Stack:** Static HTML, CSS, Bash, GitHub Pages.

---

### Task 1: Add a failing support-page contract check

**Files:**

- Create: `scripts/verify-support-page.sh`

1. Write a Bash check that requires `support.html` plus the heading, email,
   `mailto:` link, privacy-policy link, and homepage link.
2. Run `bash scripts/verify-support-page.sh`; expect failure because the support
   page does not exist yet.

### Task 2: Add the page and navigation

**Files:**

- Create: `support.html`
- Modify: `index.html`
- Modify: `privacy.html`
- Modify: `README.md`
- Modify: `scripts/verify-support-page.sh`

1. Create `support.html` using the same light/dark system-font styling as
   `index.html`. Include the app name, the support description, the mail link,
   Privacy Policy link, and homepage link.
2. Add a `./support.html` link to both existing pages and record the support
   URL in the README.
3. Run `bash scripts/verify-support-page.sh`; expect success.
4. Inspect `http://127.0.0.1:8000/support.html` using a local static server.
5. Commit all page, test, and plan files with `feat: add public support page`.

### Task 3: Publish and verify

**Files:** none

1. Push `main`.
2. Fetch `https://takiihor.github.io/go-by-bus-hk-privacy/support.html` and
   require HTTP success plus the support heading and email.
3. Confirm the worktree is clean and local `HEAD` equals `origin/main`.
