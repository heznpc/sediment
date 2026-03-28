# Sediment: How Streak Mechanics Drive Compelled Production of Low-Quality Digital Content

## 1. Introduction

### 1.1 The Streak Paradox
- "1일 1커밋", Duolingo streaks, Snapchat 🔥, GitHub contribution graphs
- Designed as motivational tools → produce compulsive filler behavior
- The content produced to maintain streaks is often meaningless — but it persists on platforms indefinitely
- This filler constitutes a previously unexamined category of digital slop: **human-generated, platform-compelled**

### 1.2 Compelled Production
- AI slop research focuses on supply: AI makes content generation cheap (ai-slop-framework)
- But why do people produce slop even when they know it's meaningless?
- Streak mechanics create a **production quota** — the UI demands one unit per day regardless of quality
- Unlike normal supply/demand: nobody wants the output. No consumer, no market need. The platform mechanic compels its creation
- When AI is available, this quota is trivially fulfilled → AI becomes the streak maintenance tool

### 1.3 Streaks Work — And That's Precisely the Question
- Streak mechanics are demonstrably effective for habit formation and retention (Lally et al., 2010; Patel et al., 2016)
- Duolingo's internal data: streaks are their single most effective retention feature
- This paper investigates **when and how** streak benefits degrade into compelled filler production
- Current streak designs are indiscriminate: they reward *any* output, not *quality* output — a design choice, not an inherent property
- The question is not "streaks vs. no streaks" but "which streak designs minimize filler while preserving motivation?"
- Boundary condition hypothesis: streaks produce genuine engagement within the habit formation window (~66 days, Lally et al., 2010); beyond this threshold, diminishing motivational returns and increasing filler production

### 1.4 Research Questions
- RQ1: Do streak mechanics increase the proportion of low-quality content production, and does this effect intensify with streak length?
- RQ2: What psychological mechanisms mediate the relationship between streak mechanics and content quality degradation? Specifically: does loss aversion under temporal visibility, identity-consistency pressure, or escalating commitment best explain the effect?
- RQ3: Does AI tool availability moderate (amplify) streak-driven filler production by removing the effort cost that would otherwise break the streak?

## 2. Theoretical Framework

### 2.1 Sediment: Definition and Model

#### Definition (cause-independent)
**Sediment** = digital content whose informational value falls below a platform-contextual quality threshold, measured independently of its production context. Sediment is defined by its properties (low signal, persistence, accumulation), not by its cause.

Streak mechanics systematically increase the rate of sediment production. This cause-independent definition prevents circular reasoning: we define sediment by what it *is*, then test whether streaks produce more of it.

#### The Sediment Model
- **Metaphor**: Fine particles carried by water flow, individually invisible, collectively reshaping the landscape
- Platform timeline = riverbed; each filler post/commit/upload = sediment particle
- Over time: meaningful content is buried, signal-to-noise ratio degrades
- Unlike erosion (active destruction), sedimentation is passive accumulation — harder to notice, harder to reverse
- **Key property**: Sediment is a Goodhart's Law artifact. Streak counters measure *frequency*, not *quality*. When frequency becomes the target, it ceases to be a good proxy for engagement (Goodhart, 1975; Strathern, 1997)

#### Sediment Lifecycle: Deposition → Compaction → Fossilization
Each stage has a distinct mechanism and generates distinct, testable predictions:

- **Deposition** (mechanism: compelled production under streak pressure)
  - Filler content is created to fill a temporal gap. Producer often knows it is low-quality.
  - *Testable prediction*: Proportion of below-threshold content increases on streak-risk days vs. non-streak days (Study 1)

- **Compaction** (mechanism: information overload / signal dilution)
  - Accumulated filler compresses signal. Repositories, feeds, and search results become harder to navigate.
  - *Testable prediction*: Repositories with high filler ratios show lower engagement metrics (stars, forks, contributor retention) over time (Study 1, longitudinal)

- **Fossilization** (mechanism: social credentialing heuristic)
  - Old sediment acquires perceived legitimacy. A GitHub profile with 365 consecutive green squares is read as "diligent developer." The filler hardens into a false signal.
  - *Testable prediction*: Evaluators rate streak-pattern profiles more favorably than equivalent profiles without streaks, even when actual code quality is identical (Study 4)

### 2.2 Psychological Mechanisms (Competing Hypotheses)

#### 2.2.1 H1: Loss Aversion Under Temporal Visibility
- Temporal gap in a visible timeline is perceived as loss, not neutral absence (Kahneman & Tversky, 1979)
- The gap is visible to self AND others (social proof dimension)
- Connects to: FOMO (Yu & Chang, 2025), intolerance of uncertainty
- **Prediction**: Filler production increases when streaks are *visually displayed* to the user, regardless of streak length. The mechanism is the salience of the gap, not the investment in the streak.

#### 2.2.2 H2: Identity-Consistency Pressure
- "I am a person who commits every day" → gap breaks the identity narrative
- Cialdini (1984): consistency principle — people act to maintain alignment with self-concept
- Festinger (1957): producing content you know is filler while maintaining a "real contributor" identity creates cognitive dissonance, resolved by downplaying the filler rather than breaking the streak
- Oyserman (2007): identity-based motivation — people pursue actions consistent with salient identities
- SDT tension: streaks satisfy **competence** needs (progress) but erode **autonomy** (coercion). SDT predicts autonomy frustration should cause disengagement — the fact that users produce filler *instead* of quitting is the puzzle. Identity-consistency pressure explains why: quitting threatens identity more than filler production does.
- **Prediction**: Filler production increases with the centrality of the streak to self-concept, independent of streak length. Users who describe themselves in streak-related terms ("I'm a daily coder") produce more filler than users with equal streak lengths but lower identity investment.

#### 2.2.3 H3: Escalating Commitment
- Staw (1976): escalation of commitment — increasing investment in a failing course of action to justify prior investment
- More precise than "sunk cost" framing: streak counters are not actual sunk costs (breaking a streak does not destroy prior learning/code). But streak mechanics **manufacture** the *perception* of sunk investment where none objectively exists. The counter transforms a record into a perceived asset.
- Brockner (1992): entrapment — the gradual process by which individuals become locked into failing courses of action
- **Prediction**: Filler production increases monotonically with streak length, regardless of visibility or identity. Longer streak = greater perceived investment = greater reluctance to "waste" it, even through filler maintenance.

#### 2.2.4 Distinguishing the Hypotheses
| Mechanism | Key moderator | Filler increase driven by | Predicts filler drops when |
|---|---|---|---|
| H1: Loss aversion / visibility | Streak display salience | Gap visibility | Streak display is hidden |
| H2: Identity-consistency | Identity centrality | Self-concept threat | User does not identify with streak activity |
| H3: Escalating commitment | Streak length | Perceived investment | Streak is short (low accumulation) |

Study 3 is designed to discriminate between these hypotheses.

### 2.3 Quality-Continuity Tradeoff
- Streak demands output regardless of available input (ideas, energy, material)
- On low-input days: user faces choice between breaking streak vs. producing filler
- Two competing sub-models (to be tested in Study 1):
  - **Substitution model**: Filler production crowds out quality work (fixed time/energy → quality of non-filler also declines)
  - **Additive model**: Filler is produced *on top of* normal output (total volume increases but non-filler quality is unaffected)
- Mollick & Rothbard (2014): gamification harms outcomes when it feels **mandatory** — long streaks transform voluntary engagement into felt obligation

### 2.4 AI as Streak Maintenance Tool
- AI collapses the cost of filler production to near-zero
- ChatGPT for daily blog filler (1일 1포스팅), Copilot for streak commits (1일 1커밋)
- Removes the last friction point (effort cost) that might have broken the streak
- Before AI: streak-breaking friction served as a natural quality filter (producing filler still cost effort)
- After AI: the filter is removed, sediment production is frictionless
- **Specific interaction mechanism**: AI reduces the *decision threshold* for filler. Without AI, a user on a low-input day must spend 20 minutes producing filler → some users break the streak instead. With AI, filler takes 30 seconds → almost no one breaks. This means AI increases (a) filler frequency, (b) streak continuation rates, and (c) streak lengths — all of which feed back into more filler.
- **Measurable in Study 1**: Compare filler rates for users with vs. without Copilot-suggestive commit patterns (e.g., boilerplate code, auto-generated messages)

### 2.5 Who Bears the Cost?
Sediment imposes costs on everyone in the ecosystem:

#### 2.5.1 The Producer
- Erosion of intrinsic motivation: streak maintenance displaces genuine creative/learning goals (Hanus & Fox, 2015)
- Anxiety and guilt cycle: pressure → low-quality output → awareness of low quality → guilt → more pressure
- Overjustification effect: extrinsic streak reward undermines intrinsic interest (Deci, Koestner, & Ryan, 1999)

#### 2.5.2 The Consumer / Information Seeker
- Buried signal: searching through sediment-laden platforms becomes harder
- False credentialing: evaluating others based on fossilized sediment (GitHub streaks in hiring)
- Trust erosion: inability to distinguish filler from genuine contribution

#### 2.5.3 The Platform
- Algorithmic pollution: recommendation systems trained on sediment-laden data amplify low-quality content
- Moderation burden: identifying streak-filler is a novel challenge distinct from spam

## 3. Literature Review

### 3.1 Persuasive Technology & Dark Patterns
- **Fogg (2003)**: Persuasive technology / captology. Fogg Behavior Model: B = MAP (motivation × ability × prompt). Streak = persistent prompt; loss aversion = motivation; AI = ability amplifier. This maps cleanly onto the sediment mechanism.
- **Gray et al. (2018)**: "The Dark (Patterns) Side of UX Design," CHI. Taxonomized manipulative interface designs. Streak mechanics fit "forced action" and "nagging" patterns.
- **Mathur et al. (2019)**: Large-scale dark patterns study, CSCW. Methodology relevant to Study 1.
- **Brignull (2010)**: Original dark patterns taxonomy. "Roach motel" (easy to enter, hard to exit) describes long streaks.
- **Eyal (2014)**: *Hooked* — Trigger-Action-Variable Reward-Investment model. Streaks are the "Investment" phase.
- Sediment extends dark patterns: existing research focuses on the *moment of manipulation*; Sediment focuses on the *cumulative content externality* over time

### 3.2 Operant Conditioning & Behavioral Compulsion
- **Skinner (1953)**: Streak mechanics = fixed-interval reinforcement with punishment contingency (break = reset). Predicts escalation and resistance to extinction.
- **Schull (2012)**: *Addiction by Design* — slot machine design and compulsive behavior. Structural parallels between streak maintenance and machine gambling.
- **Griffiths (2005)**: Behavioral addiction framework. Streak behavior meets criteria: salience, mood modification, tolerance (need longer streaks), withdrawal (gap anxiety), conflict, relapse.
- **Alter (2017)**: *Irresistible* — technology addiction and compulsive design.

### 3.3 Gamification — The Positive Case
- Lally et al. (2010): 66 days average for habit automaticity — streaks scaffold the critical pre-automaticity window
- Patel et al. (2016): loss-framed incentives significantly increase physical activity
- Sailer et al. (2017): progress-tracking elements satisfy competence needs
- Hamari, Koivisto, & Sarsa (2014): gamification generally positive, but context-dependent; streak effects not isolated
- Koivisto & Hamari (2019): positive effects acknowledged, but noted publication bias and lack of longitudinal studies

### 3.4 Gamification — The Negative Case
- Hanus & Fox (2015): gamification in education *decreased* motivation, satisfaction, and performance over time
- Mollick & Rothbard (2014): gamification harms when it feels mandatory vs. voluntary
- Andrade et al. (2016): short-term engagement gains, long-term motivational crowding-out
- SDT (Ryan & Deci, 2000): streak mechanics risk keeping users in external regulation
- **Bogost (2011)**: "Gamification is Bullshit" — critique of exploitative gamification
- **Chou (2015)**: Octalysis framework — streaks as "Black Hat" gamification (scarcity + loss avoidance)

### 3.5 Goodhart's Law & Signal Degradation
- **Goodhart (1975); Strathern (1997)**: "When a measure becomes a target, it ceases to be a good measure"
- Streak counters are a textbook Goodhart case: designed to measure engagement, they become the target, and engagement degrades into filler production
- GitHub contribution graph as hiring signal — grey literature, developer community discussions; 83% of GitHub users have no commits in the last year
- Central theoretical position: the entire sediment phenomenon is Goodhart's Law applied to temporal consistency metrics in gamified platforms

### 3.6 Digital Hoarding & Timestamp Psychology
- Sweeten, Sillence, & Neave (2018): digital hoarding motivations
- Hagen & O'Brien (2025): temporal markers change perceived value of information
- Zhang et al. (2025): explicitly noted absence of "temporal dynamics" in digital hoarding research

### 3.7 Identified Gap
- No study directly tests: streak mechanics → content quality degradation (with quality defined independently of streaks)
- No study examines AI as a streak maintenance tool
- No study discriminates between loss aversion, identity-consistency, and escalating commitment as mechanisms for streak-driven filler
- Dark patterns literature studies the *manipulation* but not the *cumulative content residue* it produces
- Gamification research overwhelmingly studies the **user** — not the **externalities imposed on the platform and third parties**

## 4. Proposed Methodology

### 4.1 Study 1: GitHub Contribution Analysis (Observational + Natural Experiment)

#### 4.1a Ground Truth Validation (Pilot)
- **Purpose**: Validate automated quality metrics against developer self-labeling
- **Method**: Recruit N=100 active GitHub users. Each labels a random sample of 50 of their own commits as:
  - (a) "Would not have made this commit if not for streak maintenance"
  - (b) "Genuine contribution regardless of streak"
  - (c) "Unsure"
- **Use**: Train and validate automated filler detection metrics against human labels. Report precision/recall for each proxy metric. Only proceed with metrics that achieve acceptable discriminant validity.

#### 4.1b Observational Analysis
- **Data**: GitHub Archive (not GH Torrent — unmaintained since 2019)
- **Sediment operationalization**: Content below quality threshold as validated in 4.1a
- **Streak operationalization**: Consecutive-day contribution sequences
  - Comparison groups: (a) same user during non-streak periods (3+ days gap), (b) first 3 days of new streak (low accumulation), (c) streak-risk days of short (7-14d) vs. long (100+d) streaks
- **Quality metrics** (validated against ground truth):
  - Validated filler probability score (from 4.1a model)
  - Empty commit / whitespace-only / config-only ratio
  - Commit timing (late-night deadline commits as streak-pressure indicator)
- **Controls**: Day of week, user activity level, repository type (personal vs. collaborative), user experience level, number of active repos, bot account filtering, timezone
- **Substitution vs. Additive test**: Measure quality of adjacent non-streak days. If streak maintenance crowds out quality work, surrounding-day quality should also decline.
- **AI moderation test**: Compare filler rates for commits with Copilot-suggestive patterns (boilerplate, auto-generated messages) vs. non-AI commits
- **Causal language**: Study 1 establishes *association*, not causation. The natural experiment (4.1c) provides the causal identification strategy.

#### 4.1c Natural Experiment: GitHub 2016 Streak Counter Removal
- **Event**: In 2016, GitHub removed the explicit streak counter from user profiles (contribution graph remained, but the number disappeared)
- **Design**: Difference-in-differences
  - Treatment: Users who had active long streaks (30+d) at the time of removal
  - Control: Users who had no active streak at the time of removal
  - Compare commit quality and streak-maintaining behavior before vs. after the counter removal
- **Rationale**: Directly tests RQ1 — does reducing streak visibility reduce filler production?
- **Prediction**: Filler rate decreases after counter removal, especially for long-streak users. If H1 (visibility-driven loss aversion) is correct, the effect should be strong. If H3 (escalating commitment) is correct, the effect should be weak (investment persists without the counter).

#### 4.1d Compaction Analysis (Longitudinal)
- **Method**: For repositories with 2+ years of history, calculate rolling signal-to-noise ratio (proportion of validated-filler commits per quarter)
- **DV**: Repository engagement metrics (stars, forks, new contributors, issue response time)
- **Prediction**: Repositories with increasing filler ratios show declining engagement over time (sediment compaction effect)

### 4.2 Study 2: Controlled Experiment (Streak UI Manipulation)

#### Rationale
- Replaces the Duolingo natural experiment (data access infeasible)
- Provides the controlled experiment that ties the causal chain together

#### Design
- **Platform**: Custom-built daily task app (e.g., daily vocabulary review or coding challenge)
- **Between-subjects**: 2 (streak visible vs. hidden) × 2 (AI assistance available vs. not)
- **Duration**: 10 weeks / 70 days (exceeds the 66-day habit formation window to test boundary conditions)
- **N**: 200 per cell (800 total), recruited via Prolific
- **Task**: Daily content production task where quality is objectively measurable (e.g., write a short text, solve a coding problem)
- **DVs**:
  - Content quality (blind expert ratings + automated scoring)
  - Filler production rate (proportion of below-threshold submissions)
  - Self-reported streak anxiety (validated scale, see Study 3 pilot)
  - Streak continuation rate
  - Engagement quality over time (does quality decline after week 2? week 6?)
- **Predictions**:
  - Streak visible + AI available → highest volume, lowest quality, longest streaks
  - Streak visible + no AI → moderate filler (some users break when filler is effortful)
  - Streak hidden + AI available → baseline filler rate (no streak pressure, AI irrelevant)
  - Streak hidden + no AI → baseline
  - Boundary condition: quality decline accelerates after week 9-10 (beyond habit formation window)

### 4.3 Study 3: Cross-Platform Survey (Mechanism Discrimination)

#### 4.3a Pilot: Scale Validation
- **Purpose**: Develop and validate a Streak Behavior Scale before the main study
- **N**: 300 (Prolific)
- **Items**: Targeting three sub-scales corresponding to H1/H2/H3:
  - Loss aversion sub-scale: "Seeing a gap in my activity timeline feels like a loss"
  - Identity-consistency sub-scale: "Maintaining my streak is part of who I am"
  - Escalating commitment sub-scale: "The longer my streak, the more I'd lose by breaking it"
- **Validation**: EFA → CFA, convergent/discriminant validity against:
  - General loss aversion scale (established)
  - FOMO scale (established)
  - General anxiety measure (GAD-7)
- **Purpose**: Demonstrate the three sub-scales are empirically distinguishable from each other and from general anxiety/FOMO

#### 4.3b Main Survey
- **Sample**: N=800, users active on 2+ streak-featuring platforms, recruited via Prolific with screening
- **Key design feature**: Embedded mock UI experiment
  - Participants shown 4 streak UI mockups (sequential counter, grid/heatmap, social dyadic, badge/milestone) for a *hypothetical daily activity they already do*
  - Rate anticipated anxiety, likelihood of producing filler, motivation to continue
  - Within-subjects UI comparison → eliminates platform confound

| UI Type | Example | Hypothesized dominant mechanism |
|---|---|---|
| Sequential counter | Duolingo (Day 847) | H3: Escalating commitment (number = perceived investment) |
| Grid/heatmap | GitHub contribution graph | H1: Loss aversion (gap = visible hole) |
| Social dyadic | Snapchat 🔥 | Neither — relational obligation (distinct mechanism, potential new finding) |
| Badge/milestone | Fitness apps (7-day badge) | H1: Loss aversion (weakest — gap only matters near threshold) |

- **Measures**:
  - Validated Streak Behavior Scale (from 4.3a)
  - Self-reported filler production + behavioral indicators
  - AI tool usage for streak maintenance (multi-item: frequency, type, purpose)
  - Autonomy need frustration (adapted from BPNSFS, Chen et al., 2015)
  - Personality controls: neuroticism, conscientiousness, trait anxiety
  - Platform tenure, number of active streaks, cultural background
- **Analysis**:
  - Path analysis: streak mechanics → [H1/H2/H3 sub-scales] → filler production
  - Compare model fit for each mechanism as sole mediator vs. combined model
  - AI availability as moderator on the mechanism → filler path
  - UI type comparison via within-subjects ANOVA on the mock UI responses
- **Power**: 800 participants for path analysis with 3 mediators, 1 moderator, adequate for medium effect sizes (Fritz & MacKinnon, 2007)

### 4.4 Study 4: Fossilization Vignette Experiment

#### Purpose
- Tests the fossilization stage of the sediment lifecycle
- Tests whether sediment produces false credentialing (Section 2.5.2)

#### Design
- **N**: 400 (200 hiring managers/tech leads + 200 general evaluators)
- **Stimuli**: GitHub profile pairs, matched on:
  - Account age, number of repositories, languages used, README quality
  - Manipulated: contribution graph pattern (streak vs. sporadic) × actual code quality (high vs. low)
  - 2×2 within-subjects design
- **DV**:
  - Perceived developer competence (7-point scale)
  - Hiring recommendation (would you interview this person?)
  - Confidence in evaluation
- **Predictions**:
  - Streak-pattern profiles rated higher than sporadic-pattern profiles, even when code quality is identical or lower (fossilization effect)
  - Effect stronger for evaluators who use GitHub in actual hiring decisions
  - When code quality and streak pattern conflict (low quality + streak), evaluators show higher confidence but lower accuracy — sediment produces *confident* misjudgment

## 5. Expected Contributions

### 5.1 Theoretical
- **Sediment Model**: Cause-independent framework for content quality degradation, with lifecycle stages generating distinct testable predictions at deposition, compaction, and fossilization levels
- **Compelled production theory**: Platform UI design as a production quota generator — complement to supply-side AI slop research. Distinguished from dark patterns by focusing on cumulative content externalities rather than momentary user manipulation
- **Mechanism discrimination**: First empirical test comparing loss aversion, identity-consistency, and escalating commitment as explanations for streak-driven behavior
- **Goodhart's Law in gamification**: Formal application of Goodhart's Law to temporal consistency metrics, extending beyond abstract critique to measurable consequences

### 5.2 Practical
- Platform design implications: Alternative streak designs that minimize filler while preserving motivation
  - Rolling windows instead of absolute counters ("active 25 of last 30 days" vs. "Day 847")
  - Quality-gated streaks (minimum quality threshold to count)
  - Decay-based rather than binary (streak weakens gradually, not resets to zero)
  - Post-habit-window transition (streak mechanic shifts after ~66 days from consistency tracking to quality tracking)
- Hiring/evaluation: Empirical evidence against using streak-based metrics as quality proxies
- AI governance: Streak mechanics as a compelled-production driver of AI-assisted content pollution

### 5.3 Bridge Contribution
- Connects digital hoarding psychology (holder stream) with content pollution research (slop stream)
- Shows how platform UI design creates behavioral loops that produce ecosystem-level effects
- Demonstrates that the same mechanism harms producer, consumer, and platform simultaneously

## 6. Ethics

### 6.1 Study 1
- Public GitHub data: generally exempt under most IRB frameworks (Bruckman, 2002; Zimmer, 2010)
- Anonymization: No individual users identified in results. Aggregate patterns only.
- Potential stigma: "filler" label could be perceived negatively. Self-labeling in 4.1a is voluntary with informed consent.
- Bot filtering applied to avoid misattributing automated behavior to humans.

### 6.2 Study 2
- Streak visibility manipulation may induce mild anxiety in the visible condition
- Mitigation: Full debriefing, right to withdraw, no deception about the experimental nature
- No manipulation of existing streaks — all streaks are created within the experimental app

### 6.3 Study 3
- Reflective questions about streak anxiety may cause mild distress in users already aware of compulsive patterns
- Mitigation: Right to withdraw, debriefing with links to digital wellness resources

### 6.4 Study 4
- Vignette profiles are fictional. No real developers evaluated or potentially harmed.

## 7. Target Venues
- **Primary**: CSCW 2027 — strongest fit for collaborative/social dimensions, externality focus, accepts analytical + empirical work
- **Secondary**: CHI 2027 — if Studies 1+2 are completed with strong results
- **Journal alternative**: Computers in Human Behavior — natural home for survey + scale validation (Study 3)

## 8. References (Preliminary)

- Alter, A. (2017). *Irresistible: The Rise of Addictive Technology*. Penguin.
- Andrade, F.R.H., et al. (2016). Gamification in education. *Frontiers in Psychology*.
- Bogost, I. (2011). Gamification is Bullshit. *The Atlantic*.
- Brignull, H. (2010). Dark Patterns. darkpatterns.org.
- Brockner, J. (1992). The Escalation of Commitment to a Failing Course of Action. *Academy of Management Review*, 17(1).
- Bruckman, A. (2002). Ethical Guidelines for Research Online. *Georgia Tech Technical Report*.
- Chen, B., et al. (2015). Basic psychological need satisfaction and frustration scale. *J. Educational Psychology*, 107(3).
- Chou, Y.K. (2015). *Actionable Gamification*. Octalysis Media.
- Cialdini, R.B. (1984). *Influence: The Psychology of Persuasion*. HarperCollins.
- Deci, E.L., Koestner, R., & Ryan, R.M. (1999). Extrinsic rewards and intrinsic motivation. *Psychological Bulletin*, 125(6).
- Deci, E.L., & Ryan, R.M. (2000). The "What" and "Why" of Goal Pursuits. *Psychological Inquiry*, 11(4).
- Eyal, N. (2014). *Hooked: How to Build Habit-Forming Products*. Portfolio.
- Festinger, L. (1957). *A Theory of Cognitive Dissonance*. Stanford University Press.
- Fogg, B.J. (2003). *Persuasive Technology*. Morgan Kaufmann.
- Goodhart, C.A.E. (1975). Problems of Monetary Management. *Papers in Monetary Economics*, Reserve Bank of Australia.
- Gray, C.M., Kou, Y., Battles, B., Hoggatt, J., & Toombs, A.L. (2018). The Dark (Patterns) Side of UX Design. *CHI 2018*.
- Griffiths, M.D. (2005). A 'components' model of addiction. *J. Substance Use*, 10(4).
- Hagen, L., & O'Brien, E. (2025). Temporal Markers and Online Review Persuasiveness. *Psychology & Marketing*.
- Hamari, J., Koivisto, J., & Sarsa, H. (2014). Does Gamification Work? *HICSS 2014*.
- Hanus, M.D., & Fox, J. (2015). Assessing the effects of gamification in the classroom. *Computers & Education*, 80.
- Kahneman, D., & Tversky, A. (1979). Prospect Theory. *Econometrica*, 47(2).
- Koivisto, J., & Hamari, J. (2019). The rise of motivational information systems. *IJIM*, 45.
- Koklic, M.K., Kukar-Kinney, M., & Vida, I. (2025). Dark Sides of Digital Asset Consumption. *J. Consumer Behaviour*, 24(5).
- Lally, P., et al. (2010). How are habits formed. *European Journal of Social Psychology*, 40(6).
- Mathur, A., et al. (2019). Dark Patterns at Scale. *CSCW 2019*.
- Mollick, E.R., & Rothbard, N. (2014). Mandatory Fun. *The Wharton School Research Paper*.
- Oyserman, D. (2007). Social Identity and Self-Regulation. *Social Psychology: Handbook of Basic Principles*.
- Patel, M.S., et al. (2016). Framing Financial Incentives. *Annals of Internal Medicine*, 164(6).
- Ryan, R.M., & Deci, E.L. (2000). Intrinsic and Extrinsic Motivations. *Contemporary Educational Psychology*, 25.
- Sailer, M., et al. (2017). How Gamification Motivates. *CHB*, 69.
- Schull, N.D. (2012). *Addiction by Design*. Princeton University Press.
- Skinner, B.F. (1953). *Science and Human Behavior*. Macmillan.
- Staw, B.M. (1976). Knee-Deep in the Big Muddy. *Organizational Behavior and Human Performance*, 16(1).
- Strathern, M. (1997). 'Improving ratings': audit in the British University system. *European Review*, 5(3).
- Sweeten, G., Sillence, E., & Neave, N. (2018). Digital hoarding behaviours. *CHB*, 85.
- Yu, W., & Chang, X. (2025). Digital photo hoarding. *Frontiers in Psychology*, 16.
- Zhang, C., Li, J., & Hao, Y. (2025). Digital Hamsters. *Behavioral Sciences*, 15(11).
- Zimmer, M. (2010). "But the data is already public": on the ethics of research in Facebook. *Ethics and Information Technology*, 12(4).
