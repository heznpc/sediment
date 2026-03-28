# Sediment: How Timestamp Visibility and Streak Mechanics Drive Compulsive Production of Low-Quality Digital Content

## 1. Introduction

### 1.1 The Streak Paradox
- "1일 1커밋", Duolingo streaks, Snapchat 🔥, GitHub contribution graphs
- Designed as motivational tools → produce compulsive filler behavior
- The content produced to maintain streaks is often meaningless — but it persists on platforms indefinitely
- This filler constitutes a previously unexamined category of digital slop: **human-generated, platform-compelled**

### 1.2 The Missing Demand Side
- AI slop research focuses on supply: AI makes content generation cheap (ai-slop-framework)
- But why do people produce slop even when they know it's meaningless?
- Timestamp/streak mechanics create a **demand** for continuous output regardless of quality
- When AI is available, this demand is trivially fulfilled → AI becomes the streak maintenance tool

### 1.3 Research Questions
- RQ1: Does timestamp visibility (e.g., contribution graphs, streak counters) increase the frequency of low-quality content production?
- RQ2: What psychological mechanisms mediate the relationship between streak mechanics and content quality degradation?
- RQ3: Does AI tool availability moderate (amplify) streak-driven slop production?

## 2. Theoretical Framework

### 2.1 Sediment Model
- **Metaphor**: Fine particles carried by water flow, individually invisible, collectively reshaping the landscape
- Platform timeline = riverbed
- Each dummy post/commit/upload = sediment particle
- Over time: meaningful content is buried, signal-to-noise ratio degrades
- Unlike erosion (active destruction), sedimentation is passive accumulation — harder to notice, harder to reverse

### 2.2 Gap Anxiety (시간축 공백 불안)
- Temporal gap in a visible timeline is perceived as **loss**, not neutral absence
- Loss aversion (Kahneman & Tversky, 1979) applied to temporal continuity
- The gap is visible to self AND others (social proof dimension)
- Connects to: FOMO (Yu & Chang, 2025), intolerance of uncertainty (BMC Psychology, 2025)

### 2.3 Streak as Sunk Cost
- Accumulated streak = perceived investment
- Breaking a 365-day streak feels like losing 365 days of effort
- Sunk cost fallacy drives maintenance behavior even when marginal value is zero
- Dai, Milkman, & Riis (2014): temporal landmarks create mental accounting periods → streak creates one continuous accounting period where "loss" compounds

### 2.4 Quality-Continuity Tradeoff
- Fixed time/energy budget per day
- Streak demands output regardless of available input (ideas, energy, material)
- On low-input days: user faces choice between breaking streak vs. producing filler
- Systematic selection of quantity over quality → sediment production

### 2.5 AI as Streak Maintenance Tool
- AI collapses the cost of filler production to near-zero
- ChatGPT로 1일 1포스팅 채우기, Copilot으로 커밋 만들기
- Removes the last friction point (effort cost) that might have broken the streak
- Creates feedback loop: streak mechanic → AI-assisted filler → platform pollution

## 3. Literature Review

### 3.1 Digital Hoarding & Timestamp Psychology
- Sweeten, Sillence, & Neave (2018): digital hoarding motivations — "just in case" anxiety
- Hagen & O'Brien (2025): temporal markers change perceived value of information
- Denegri-Knott, Jenkins, & Lindley (2022): digital patina (metadata) and value perception
- Dai, Milkman, & Riis (2014): Fresh Start Effect — temporal landmarks reshape behavior

### 3.2 Gamification & Streak Mechanics
- Duolingo streak research: retention vs. quality tradeoff
- GitHub contribution graph: "green square anxiety" (grey literature, developer communities)
- Snapchat streaks: teen social pressure and meaningless exchange behavior
- "Don't Break the Chain" (Seinfeld method): productivity tool → compulsion mechanism

### 3.3 AI Slop & Content Pollution
- Multi-format AI slop framework (ai-slop-framework): supply-side analysis
- Platform algorithm incentives for volume over quality
- User-generated vs. AI-generated slop: convergent pollution, divergent mechanisms

### 3.4 Identified Gap
- No study directly tests: timestamp/streak visibility → content quality degradation
- No study examines AI as a streak maintenance tool
- Zhang et al. (2025) explicitly noted the absence of "temporal dynamics" in digital hoarding research

## 4. Proposed Methodology

### 4.1 Study 1: Observational (GitHub Contribution Analysis)
- **Data**: Public GitHub contribution data
- **Measure**: Commit quality metrics (LOC, meaningful diff ratio, commit message entropy) on streak-maintaining days vs. non-streak days
- **Hypothesis**: Commits on days where breaking a streak is at risk show lower quality metrics
- **Operationalization of "streak risk"**: Day N where days N-1 through N-K all have contributions (long active streak)

### 4.2 Study 2: Experimental (Timestamp Visibility Manipulation)
- **Design**: 2 (timestamp visible vs. hidden) × 2 (AI tool available vs. not) between-subjects
- **Task**: Daily content creation task over 30 days
- **DV**: Content quality ratings (blind review), production anxiety (self-report), streak maintenance behavior
- **Prediction**: Timestamp visible + AI available → highest volume, lowest quality

### 4.3 Study 3: Survey (Cross-Platform Streak Behavior)
- **Sample**: Users active on streak-featuring platforms (GitHub, Duolingo, Snapchat, blogging platforms)
- **Measures**:
  - Streak anxiety scale (to develop)
  - Content quality self-assessment
  - AI tool usage for streak maintenance
  - Digital hoarding tendency (DHQ, Neave et al. 2019)
- **Analysis**: SEM — streak anxiety as mediator between timestamp visibility and slop production

## 5. Expected Contributions

### 5.1 Theoretical
- **Sediment Model**: New framework for understanding passive accumulation of low-quality content
- **Demand-side slop theory**: Complement to supply-side AI slop research
- **Gap anxiety construct**: Timestamp-specific extension of loss aversion theory

### 5.2 Practical
- Platform design implications: Should streaks show gaps? Alternative visualizations?
- Content moderation: Identifying streak-driven filler vs. genuine contributions
- AI governance: Streak mechanics as an overlooked driver of AI-assisted content pollution

### 5.3 Bridge Contribution
- Connects digital hoarding psychology (holder stream) with content pollution research (slop stream)
- Shows how platform UI design creates behavioral loops that produce ecosystem-level effects

## 6. Target Venues
- CHI 2027 (Human Factors in Computing)
- CSCW 2027 (Computer-Supported Cooperative Work)
- Computers in Human Behavior
- New Media & Society

## References (Preliminary)

- Dai, H., Milkman, K.L., & Riis, J. (2014). The Fresh Start Effect. *Management Science*, 60(10).
- Denegri-Knott, J., Jenkins, R., & Lindley, S. (2022). Valuing digital possessions. *JCMC*, 27(6).
- Hagen, L., & O'Brien, E. (2025). Temporal Markers and Online Review Persuasiveness. *Psychology & Marketing*.
- Kahneman, D., & Tversky, A. (1979). Prospect Theory. *Econometrica*, 47(2).
- Koklic, M.K., Kukar-Kinney, M., & Vida, I. (2025). Dark Sides of Digital Asset Consumption. *J. Consumer Behaviour*, 24(5).
- Neave, N., Briggs, P., McKellar, K., & Sillence, E. (2019). Digital hoarding measurement. *CHB*, 96.
- Sweeten, G., Sillence, E., & Neave, N. (2018). Digital hoarding behaviours. *CHB*, 85.
- Yu, W., & Chang, X. (2025). Digital photo hoarding, emotional attachment, FOMO. *Frontiers in Psychology*, 16.
- Zhang, C., Li, J., & Hao, Y. (2025). Digital Hamsters. *Behavioral Sciences*, 15(11).
