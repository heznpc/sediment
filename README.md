# sediment

Research Program: 4 (AI-Mediated Accumulation)
Status: Concept note
Relationship to other work: Companion to [tidal](../tidal) (Program 4 anchor); bridges to Program 5 (synthetic content) via the AI-as-streak-tool argument.

> This is a concept note, not a finished paper.

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

**Sediment: How Streak Mechanics Drive Compelled Production of Low-Quality Digital Content**

Streak mechanics — daily-consecutive-activity counters such as GitHub's contribution graph, Duolingo's streak flame, and Snapchat's Snapstreaks — compel users to produce filler content on days when they have nothing meaningful to contribute, simply to avoid losing an accumulated record. The paper introduces *sediment* as a category of human-generated, platform-compelled, demand-independent low-quality content, distinct from spam (illegitimate) and AI slop (supply-side). It models the lifecycle as Deposition → Compaction → Fossilization, develops three competing psychological mechanisms (loss aversion / identity consistency / escalating commitment), and proposes four studies anchored by the 2016 GitHub streak-counter removal as a natural experiment.

## Currently implemented

- [paper/main.tex](paper/main.tex) — 821-line draft covering introduction, theoretical framework, three competing hypotheses, four-study methodology, design implications, and 66-day boundary-condition prediction (Lally 2010).
- [literature/literature_review.md](literature/literature_review.md) — compiled reading notes positioning the paper against existing supply-side slop work and gamification literature.
- [planning/drafts/outline.md](planning/drafts/outline.md) — outline v3 (multi-agent validated; superseded by `main.tex`).
- [planning/TODO.md](planning/TODO.md), [planning/review.md](planning/review.md), [planning/decisions.md](planning/decisions.md) — argument-completion task list, internal review notes, decision log.
- [experiments/](experiments/) — DDD-style skeleton (`src/`, `data/raw/`, `data/processed/`, `results/`, `archive/`). No runnable code yet.
- [.zenodo.json](.zenodo.json) — metadata stub for DOI minting on first release.

## Planned

- Study 1c — Difference-in-differences analysis of GitHub Archive data around the October 2016 removal of the streak counter from contribution graphs (highest evidence value per [planning/TODO.md](planning/TODO.md)).
- Study 1a — Developer self-labeling survey (N=100) to ground-truth filler-content metrics before scaling.
- Study 1b — GitHub Archive collection script + pilot analysis.
- Study 2 — Custom streak-app prototype for a controlled 2×2 streak-UI experiment.
- Study 3 — Streak Behavior Scale pilot (N=300).
- Study 4 — Fossilization vignette study (do streak-pattern contribution graphs bias developer evaluation?).
- `submissions/cscw2027/` venue adaptation once `main.tex` is review-ready.

## Design intent

- **Demand-side framing.** Existing slop research focuses on supply-side mechanisms (AI makes production cheap). The paper's contribution is the demand-side complement: platform UIs that manufacture artificial production quotas, with AI tools functioning as the *streak-maintenance technology* that collapses the effort cost of compliance.
- **Property-based definition, not cause-based.** *Sediment* is defined by informational properties (below a platform-contextual quality threshold), not by who or what produced it — so human filler and AI filler fall under the same lens.
- **Geological lifecycle, not a single-shot effect.** Deposition → Compaction → Fossilization captures that the harm is cumulative and that filler eventually acquires unwarranted legitimacy (e.g., recruiters reading green squares as work signal).
- **Natural experiment over RCT-only.** GitHub's 2016 streak-counter removal is the load-bearing identification strategy — a real-world policy change on a platform where commit metadata is fully observable. DiD on this event is the single piece of evidence most likely to change minds.
- **"Streaks work" framed as the question, not the rebuttal.** The paper does not argue that streaks are bad. It locates the failure mode at the boundary of the ~66-day habit-formation window (Lally 2010): inside the window, scaffolding; outside it, compelled filler.
- **Bridge into Program 4.** Streak-driven filler is a micro-mechanism that feeds the macro-accumulation processes studied by [tidal](../tidal) (AI-to-AI content loops) and the synthetic-content economics studied in Program 5.

## Non-goals

- Not a critique of gamification as such, and not an argument for removing streaks. The paper acknowledges Duolingo's retention data and proposes *quality-preserving* alternatives (rolling windows, quality-gated streaks, post-habit-window transitions), not abolition.
- Not an empirical paper yet. No data has been collected; the four studies are proposed designs. Claims should be read as theoretical predictions awaiting test.
- Not a moral argument about user behavior. Users producing whitespace commits are acting rationally within the incentive structure the UI imposes; the paper locates responsibility in the design, not the user.
- Not a survey of all gamification mechanics. Scope is restricted to *temporal-continuity* counters (streaks, contribution graphs). Points, badges, and leaderboards are out of scope.
- Not a venue-locked draft. `paper/main.tex` is the single source of truth; CSCW 2027 / CHI 2027 / *Computers in Human Behavior* are candidates, not commitments. Venue adaptations will live in `submissions/<venue>/`.

## Redacted

This concept note discusses platform behaviors at the design level; it does not identify individual users, account handles, or repositories. Any future empirical work using GitHub Archive will use aggregate metrics or pseudonymized commit hashes — never reproduce specific users' contribution graphs or repository names without consent.

## Citing

Please cite using the metadata in [`.zenodo.json`](.zenodo.json) once a DOI is minted. License: CC-BY 4.0.
