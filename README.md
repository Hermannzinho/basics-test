# Flutter Practical Test — User Directory

Welcome! This is a short practical exercise to see how you approach building a small Flutter app. We're more interested in **how** you work (code quality, structure, decisions) than in pixel-perfect UI.

**Estimated time:** 2–3 hours. Please don't spend much more than that — an unfinished but well-built app is better than a rushed complete one.

## The task

Build a small **User Directory** app using the free [JSONPlaceholder API](https://jsonplaceholder.typicode.com):

- Endpoint: `GET https://jsonplaceholder.typicode.com/users`

### Core requirements

1. **User list screen**
   - Fetch the users from the API and display them in a scrollable list.
   - Each list item should show at least the user's **name**, **email**, and **company name**.
   - Show a **loading indicator** while fetching.
   - Show a **friendly error state with a retry button** if the request fails (try it in airplane mode!).

2. **User detail screen**
   - Tapping a user navigates to a detail screen.
   - Show the user's full information: name, username, email, phone, website, and address.

3. **Search**
   - Add a search field on the list screen that filters users by name (local filtering is fine).

### Bonus (optional — only if you have time left)

- Pull-to-refresh on the list.
- One or more unit/widget tests.
- Anything else you think shows off good Flutter practice (dark mode, nicer UI, etc.) — mention it in your PR description.

## What's provided

- A fresh Flutter project with the `http` package already added.
- Skeleton files to save you some typing: `lib/models/user.dart` and `lib/services/api_service.dart`.
- You are **free to restructure everything** — folders, files, naming, architecture. Use whatever state management approach you're comfortable with (`setState`, Provider, Riverpod, Bloc, …). If you add packages, that's fine; be ready to explain why.

## Getting started

```bash
git clone <this repo>
cd basics-test
flutter pub get
flutter run
```

## How to submit

1. **Branch off `main`** using your name, e.g.:

   ```bash
   git checkout main
   git pull
   git checkout -b test/firstname-lastname
   ```

2. Commit as you go — **we look at your commit history**, so meaningful, incremental commits are appreciated.

3. Push your branch and **open a Pull Request into `main`**.
   - Do **not** merge the PR — just open it and leave it for review.

4. In the PR description, briefly cover:
   - What you built and any bonus items.
   - Key decisions you made (state management, structure) and why.
   - Anything you'd do differently with more time.

## Rules

- Please work **individually** — you may use documentation and search, but the code should be your own and you should be able to explain every line of it.
- Don't look at the other candidate's branch or PR.
- If anything is unclear, make a reasonable assumption and note it in your PR description.

Good luck — have fun with it! 🚀
