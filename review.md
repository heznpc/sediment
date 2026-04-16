# sediment — Review (2026-04-11)

## 1. 커밋 톤이 주장을 일관되게 지지하는가?

**판정: 짧지만 일관됨 (3 commits, 2026-03-28 → 04-07).**

```
1e7a745 chore: add .zenodo.json for DOI minting                      (2026-04-07)
49fa4f8 Revise outline v3: multi-agent validation, methodology redesign (2026-03-28)
a99e882 Initial commit: Sediment paper outline                       (2026-03-28)
```

진화 패턴:
- **t=0 (3/28)**: 첫 commit이 outline → 같은 날 v3 outline으로 revise (multi-agent validation, methodology redesign). README에 "Outline complete (v3). Multi-agent validation done."가 명시. 3월 28일 하루에 v1 → v2 → v3 진화.
- **paper/main.tex (821줄)**과 outline.md (391줄)가 *commit history에 잡히지 않음* — 즉 둘 다 *후속 commit*에 들어왔는데 commit log엔 안 나옴? 또는 첫 commit에 모두 포함됐는데 git log -p로 봐야 확인 가능. 
- **t+10 (4/7)**: Zenodo DOI minting 준비.

톤 일관성:
- 핵심 주장(streak mechanics → compelled production → digital sediment / 3-stage lifecycle: Deposition/Compaction/Fossilization / 3개 psychological hypotheses / 4개 study design / AI tool amplification)이 README → outline → main.tex 모든 layer에서 동일.
- *Geological metaphor*(sediment = 강 바닥 침전물)가 framing으로 정착. 학술적 vocabulary anchor 가치.
- *Self-balanced framing*: §1.3 "Streaks Work---And That's Precisely the Question" — streak mechanics가 *효과 있다*는 사실을 *paper의 첫 절에서* 인정하고 *그 사실 자체를 question으로* 재배치. self-criticism이 paper 본문에 형식적으로 흡수.
- **Boundary condition hypothesis** (Lally 2010 66-day habit formation): streak가 habit formation 동안만 유효하다는 testable prediction. 단순 비판 paper가 아니라 *조건부 critique*.
- *Bridge position*: holder(behavioral mechanism) ↔ ai-slop(outcome) 사이에 위치. cross-repo 인용 surface area 확보.
- TODO.md(36줄)이 *paper와 별도로* 4개 study design을 명시. README 상태 = "Outline complete... Next: pilot experiment (Study 1 — GitHub commit analysis)".

## 2. 부가 서비스 품질

**판정: 부가 서비스 0개. paper만.**

레포 구성:
- `paper/main.tex` (821줄, ~50KB) — 빌드 PDF 존재
- `outline.md` (391줄), `research/literature_review.md` (154줄)
- `README.md`, `TODO.md`, `.zenodo.json`

코드, 데이터, 노트북, 데모, 서비스 — *전무*. caching/elixir/canary/ploidy 같은 자동화 코드 없음.

특이점:
- **4개 study design 명시** (paper §11 또는 별도 섹션):
  1. **GitHub observational analysis with natural experiment** — *2016 streak counter removal*을 활용한 *natural experiment*. 매우 강력한 design — *기존 데이터*로 즉시 가능.
  2. **Controlled 2x2 streak UI experiment** — between-subjects 통제 실험.
  3. **Cross-platform survey** with embedded mechanism discrimination — 3개 가설 분리.
  4. **Fossilization vignette study** — contribution graph가 developer evaluation에 미치는 영향.
- 4개 design 모두 *구체적이고 testable*. 다른 paper의 design은 보통 1-2개.
- 한국어 *1일 1커밋* discourse를 *cultural anchor*로 paper §1에 명시. 글로벌 paper가 한국 데이터를 활용하는 좋은 예.

## 3. 고도화 가능 파트

높은 우선순위 (CSCW 2027 직결):
1. **Study 1 (GitHub observational + 2016 natural experiment)** — *기존 데이터*로 즉시 가능. GitHub Archive(BigQuery)에서 2015-2017 commit data를 시계열 분석. 2016년 streak counter removal 전후의 *trivial commit ratio* 변화. 1-2주 작업, *Diff-in-diff* design. **paper의 가장 큰 약점(데이터 0건)을 해결**.
2. **Trivial commit detection algorithm** — Study 1의 핵심 도구. (1) whitespace-only, (2) typo fix, (3) one-line README edit, (4) <5 lines change 등을 분류. caching/elixir 같은 표준 lib only Python script 100-200줄.
3. **CSCW 2027 submission** — primary venue. 마감 통상 1월(round 1) / 7월(round 2). 충분한 시간.
4. **Publishable pilot experiment** — Study 2 (controlled 2x2)는 IRB 필요. 외주 Prolific 또는 본인 GitHub network n=30-50.
5. **Cross-platform survey instrument** — Study 3. caching의 TSI처럼 합성 데이터로 EFA/CFA 시뮬레이션 + 진짜 데이터 수집 분리.

중간 우선순위:
6. **Korean 1일 1커밋 community에서 *질적 인터뷰* 5-10명** — 한국 GitHub 활성 사용자에게 streak experience interview. cultural anchor 강화.
7. **Lally 2010 66-day boundary의 형식적 검증** — 66일 이전/이후 commit quality 추이. natural experiment로 가능.
8. **AI moderator 가설 (Copilot 도입 후 trivial commit 변화)** — 2021-2026 사이 Copilot release 전후 비교. natural experiment 두 번째.
9. **Fossilization vignette study (Study 4)** — recruiter/hiring manager에게 streak pattern contribution graph 시각화 보여주고 *evaluation 차이* 측정.

낮은 우선순위:
10. References.bib 분리.
11. CHI 2027 / Computers in Human Behavior 백업 venue.
12. 한국어 abstract.

## 4. 학술적 / 시장 가치 (글로벌, 2026-04-11 기준)

### 학술적 가치: **상위권 (working paper 기준 top ~15%, gamification critique 한정 시 top ~10%)**

차별점:
- **"Sediment" naming**: 인용 가능한 새 vocabulary anchor. geological metaphor가 직관적이고 paper §2의 3-stage lifecycle (Deposition/Compaction/Fossilization)으로 형식화 가능.
- **"Compelled production" 개념**: AI slop 담론의 *demand-side* contribution. 기존 literature가 supply-side(생성 비용 ↓)에 집중. 본 paper는 *demand-side*(생성 의무 ↑)를 도입. complementary framing.
- **2016 GitHub streak counter removal natural experiment**: empirical strategy의 황금. *기존 데이터* + *quasi-experimental design*. reviewer가 매우 호의적으로 봄.
- **3 psychological hypotheses 분리**: loss aversion / identity consistency / escalating commitment의 *competing mediator design*. caching paper의 mediator 분석과 유사하게, 단순 *효과*가 아닌 *메커니즘* 식별.
- **AI tool moderator 가설**: GitHub Copilot 같은 AI tool이 *streak filler production을 amplify*한다는 주장. 본 paper의 ai-slop / canary와의 *cross-repo bridge*. 인용 가치 매우 높음.
- **Boundary condition hypothesis (66-day Lally 2010)**: streak가 *언제까지* 유효한가의 *조건부* 비판. 단순 negative paper가 아니라 *design implication*까지 제시 (rolling windows, quality-gated streaks, post-habit-window transitions).
- **Self-balanced framing**: §1.3에서 streak mechanics의 *효과*를 인정하고 *그 효과 자체*를 question으로 재배치. 본 survey 다른 paper들의 self-criticism과 동일 패턴.

위험:
- **데이터 0건** — 4 study design은 *제안*. 1차 게재에는 부족할 수 있음. CSCW reviewer가 "submit when at least Study 1 is done"이라 할 가능성.
- **Independent researcher 단독 저자** — HCI 영역. 임상 ADHD 영역과 동일 약점.
- **Geological metaphor가 *너무 강해서 형식 모델 부족*하다는 비판 가능**: 3-stage lifecycle이 비유인지 *modelable claim*인지 명확화 필요.
- **3 competing hypotheses 모두 testable이지만 sample size 추정 부재** — power analysis가 paper에 없음. reviewer가 짚을 수 있음.
- **Korean 1일 1커밋 관행이 글로벌 영문 reviewer에게 낯설 수 있음** — *cross-cultural anchor*로 작동하지만 추가 설명 필요.

게재 전망:
- *CSCW 2027*: **realistic, 50-60%**. README가 명시한 1순위. compelled production framing 적합.
- *CHI 2027*: **45-55%**. design implication 강조 시.
- *Computers in Human Behavior* (Elsevier, IF 9.0): **40-50%**. 데이터 있으면 60%.
- *Information Systems Research* (INFORMS, IF 5.0): **30-40%**. 데이터 있으면.
- *MIS Quarterly* (IF 7.4): **20-30%**.
- *Critical Studies in Media Communication*: **40-50%**.
- *PLOS One*: 60-70%.

### 시장 가치: **상위 (gamification design + dev productivity 영역에서 강함)**

- **GitHub / Vercel / Atlassian / Jira 등 dev tool 회사**: streak counter design을 *재고*하게 하는 학술적 기반. 본 paper의 boundary condition hypothesis는 *quality-gated streaks*를 product feature로 정당화 가능.
- **Duolingo, Headspace, Strava, Fitbit, Apple Health 등 gamification 사용 회사**: streak mechanic의 *부작용*에 대한 baseline. 회사 내부 design review에 인용 가능.
- **언론**: NYT, Wired, Atlantic, The Verge가 좋아할 톤. "AI가 streak counter의 정직성을 죽인다" 헤드라인. viral potential 매우 강력.
- **Korean GitHub 커뮤니티**: 1일 1커밋 담론이 *학술적 정당화*를 받으면 *반박/지지* 양쪽에서 viral.
- **HR/recruiter 시장**: GitHub contribution graph가 채용 결정에 미치는 영향 분석 (Study 4 fossilization). recruiter tool 회사(LinkedIn, Indeed, Hired.com)의 자문 가능.
- **education tech**: Duolingo 학교 채택 영역의 *역효과* 분석. 교육 정책 입안자에게 cautionary tale.
- 한계: tool/SaaS 직접 product 경로 약함. 본 paper는 *학술 + 정책 영향력*에 집중.

### 종합 평점 (2026-04-11)

| 축 | 점수 | 코멘트 |
|---|---|---|
| Originality of construct | 9/10 | sediment + compelled production + 3-stage lifecycle |
| Theoretical synthesis | 8/10 | gamification + habit formation + AI slop bridge |
| Empirical contribution | 1/10 | 0개. 4 study designs proposed only |
| Quasi-experimental design (2016 streak removal) | 9/10 | 매우 강력 |
| Self-balance / boundary conditions | 9/10 | streak 효과 인정 + 조건부 비판 |
| Repo health | 5/10 | 3 commits, no service, no automation |
| Submission readiness | 5/10 | LaTeX 빌드 완료, 데이터 0건 |
| Cross-repo synergy | 8/10 | holder + ai-slop + canary bridge |
| Cultural anchor | 8/10 | 한국 1일 1커밋 |
| Practical applicability | 8/10 | dev tool / gamification design |
| Timing | 9/10 | AI slop 담론 정점 |
| **Overall (working paper)** | **7.0/10** | "Study 1 (GitHub natural experiment)만 추가하면 8.0+로 점프" |

핵심 격언: **"2016 GitHub streak counter removal natural experiment를 1주만 돌리면 paper가 *theoretical → empirical*로 바뀌고 8.0+로 점프."** 본 survey 21개 paper 중 *quasi-experimental design 가능성*이 가장 높은 케이스. caching의 TSI 분석 코드와 유사하게 GitHub Archive BigQuery 쿼리 1개 + Python 분석 100-200줄로 가능. 한국 1일 1커밋 cultural anchor + AI Copilot moderator 가설 두 가지가 추가 차별점.
