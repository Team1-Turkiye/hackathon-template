# Participant guide

Every project at a Team1 Türkiye hackathon starts from this repository. This page explains how to use it and what the jury expects.

## The rules in short

1. **Fork this repo** and build your project in your fork. Use the **Fork** button, not "Use this template": the fork is how the jury links your project to the event. You can rename the fork to your project's name.
2. **Start from scratch at the event.** The challenge is announced at the start of the event. Commits from before the start time, or code you do not declare in section 4 of the README, can disqualify the project.
3. **Keep the repo public** until judging is over. The jury reads the code.
4. **Fill in the README completely.** The jury reads the README first, often before anything else. A great project with an empty README loses to a good project with a clear one.
5. **Submit the link to your fork** through the submission form the organizers share at the event.

A star on [the template repo](https://github.com/Team1-Turkiye/hackathon-template) is appreciated: it helps us keep running these events.

## Step by step

```bash
# 1. Fork on GitHub, then clone your fork
git clone https://github.com/<your-username>/hackathon-template my-project
cd my-project

# 2. Build. Commit early and often: the commit history is part of the evidence
#    that the project was built at the event.

# 3. Before you submit
./scripts/check-readme.sh
```

`check-readme.sh` fails while any `TODO` is left in the README, or while the live demo, demo video or pitch deck link is missing. If you enable GitHub Actions on your fork, the same check runs on every push.

## What the jury looks for in the README

| Section | Why it matters |
|---|---|
| At a glance | The first thing every judge reads. It must stand on its own. |
| Event partner technologies | When the event has a partner, using its products is part of the challenge. Say which feature relies on each product and how central it is. The jury checks this against the code. |
| Built at the event | Honesty about reused code and tools. Declaring is fine; hiding is not. |
| Architecture | Shows the jury you understand your own system. |
| What works, what does not | Mocked parts declared as mocked are fine. Mocked parts presented as real are not. |

## Links that must work

- **Live demo:** a deployed URL that stays up through judging. Not `localhost`, not a temporary tunnel (ngrok and similar), not a hosting dashboard.
- **Demo video:** 2 to 3 minutes, viewable without asking for access.
- **Pitch deck:** the deck you would present in the final, viewable without asking for access. Prepare it at submission time: if you reach the final there is no time to make one.

## Secrets

Never commit API keys, private keys or seed phrases. `.env` is already in `.gitignore`; put dummy values in `.env.example`. A key leaked in a public repo is compromised even if you delete the commit later: rotate it.

## Using AI coding agents

`AGENTS.md` in this repo tells AI coding agents (Claude Code, Codex, Cursor and others) to keep the README in this format as they build. Keep it in your fork.
