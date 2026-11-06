# AGENTS.md

Instructions for AI coding agents (Claude Code, Codex, Cursor, Copilot and others) working in this repository.

This repo is a hackathon project built from the Team1 Türkiye hackathon template. The jury evaluates it mainly by reading `README.md`, so keeping the README accurate is part of the work, not an afterthought.

## Rules

1. **Keep `README.md` in the template's structure.** Do not remove, rename or renumber its sections. Fill them in as the project takes shape, and update them when the code changes.
2. **Write only what is true.** Never claim a feature works if it is mocked, never invent links, addresses, metrics or test results. If something is mocked or partial, say so in section 13.
3. **Section 2 (partner technologies):** whenever you add code that uses an event partner's SDK, API or chain, add or update its row: the product, the feature that relies on it and how central it is.
4. **Section 4 (built at the event):** if you bring in a starter kit, a template or copied code, add it there.
5. **Sections 8 and 9:** keep the Mermaid diagram, the components table and the tech stack table in sync with the actual code.
6. **Section 11:** every new environment variable goes into `.env.example` (dummy value) and into the README's environment variables table.
7. **Never commit secrets**: API keys, private keys, seed phrases, `.env` files.
8. Before declaring the project ready, run `./scripts/check-readme.sh` and fix everything it reports.

A filled-in example of the README is in `docs/EXAMPLE_README.md`.
