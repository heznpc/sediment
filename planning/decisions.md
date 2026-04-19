# Research Decisions Log

Records non-obvious choices with rationale. Append-only; don't rewrite history.

Format: `## YYYY-MM-DD -- <short title>` with **Context**, **Decision**, **Why**.

---

## 2026-04-19 -- Repository restructure to DDD-style layout

**Context**: Root had TODO, outline, review, paper/, and a non-standard research/ directory with one literature_review.md file. paper/main.aux/log/out/pdf were tracked because .gitignore lacked LaTeX patterns.

**Decision**: Rename research/ to literature/ (standard portfolio bounded context). Replace .gitignore with the portfolio template; untrack build artifacts. Move TODO/review/outline to planning/.

**Why**: Uniform structure; the research/ directory was doing literature/'s job under a non-standard name.
