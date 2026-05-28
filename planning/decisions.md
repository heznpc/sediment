# Research Decisions Log

Records non-obvious choices with rationale. Append-only; don't rewrite history.

Format: `## YYYY-MM-DD -- <short title>` with **Context**, **Decision**, **Why**.

---

## 2026-04-19 -- Repository restructure to DDD-style layout

**Context**: Root had TODO, outline, review, paper/, and a non-standard research/ directory with one literature_review.md file. paper/main.aux/log/out/pdf were tracked because .gitignore lacked LaTeX patterns.

**Decision**: Rename research/ to literature/ (standard portfolio bounded context). Replace .gitignore with the portfolio template; untrack build artifacts. Move TODO/review/outline to planning/.

**Why**: Uniform structure; the research/ directory was doing literature/'s job under a non-standard name.

---

## 2026-05-21 -- Externalize bibliography to refs.bib; accept plainnat rendering as new baseline

**Context**: paper/main.tex carried 37 inline `\bibitem` entries inside a `\begin{thebibliography}` block. Venue migration (CSCW/CHI/CHB each ship their own .bst) would have required rewriting all 37 entries per venue.

**Decision**: Extract entries to paper/refs.bib and call `\bibliographystyle{plainnat}` + `\bibliography{refs}` from main.tex. Build via CI (xu-cheng/latex-action, SHA-pinned) or `make pdf` locally. The previously rendered PDF differs from the new one in author separator (`and` vs `\&`), et-al threshold (triggered by literal `and others`), and minor punctuation. We accept the plainnat output as the new baseline rather than reproducing the hand-formatted layout.

**Why**: The hand-formatted version was brittle, blocked venue submission flow, and was the actual cause of the 821-line main.tex. The cosmetic delta against the prior PDF is the price of correctness; it will be invisible to anyone reading the paper for the first time.

---

## 2026-05-21 -- v0.1.2 release cut for new governance metadata

**Context**: LICENSE, CITATION.cff, paper/refs.bib, and the build workflow were added in commit e84c59a on 2026-05-21, ~5 weeks after the v0.1.1 tag (2026-04-14, commit 65b00df). The v0.1.1 release tarball therefore does not contain any of them, so any Zenodo deposit minted at v0.1.1 misses the new metadata.

**Decision**: Cut v0.1.2 immediately after this PR merges. CITATION.cff and .zenodo.json both declare `version: 0.1.2` to match. Future metadata-only changes get their own patch version rather than retconning an earlier tag.

**Why**: CITATION.cff date-released must match the artifact's actual release date for citation tools (Zotero, Scholar) to be honest about publication timing; the only consistent way to fix this without lying in the metadata is a new tag.
