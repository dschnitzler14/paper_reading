A p-value is the probability value, which estimates how likely it is that you would see the difference described by the test statistic **if the null hypothesis of the relationship is true**.

> It is probability of obtaining a test statistic at least as extreme as ours **if the null is true** and there really is no difference or association in the population of interest.

The cutoff for determining if a p-value is significant, by convention is 5%, which is usually written out as 𝜶 = 0.05. In other words, if there truly is no effect, we would only expect to see results this extreme (or more extreme) about 5 times out of 100 purely due to random variation.

This cutoff is about controlling false positives, not about proving something is true - more on Type I and Type II errors later.

**What a p-value is not:**

- ❌ It is not the probability that the null hypothesis is true.

The p-value assumes the null hypothesis is true and asks how unusual your data would be under that assumption.

- ❌ It is not the probability that your results happened “by chance.”

Random variation is already built into the statistical model.

- ❌ It is not a measure of how big or important an effect is.

A tiny effect can have a very small p-value if the sample size is large.

- ❌ It is not proof that your alternative hypothesis is correct.

A “significant” result does not automatically confirm your theory.

## Why results "approaching significance" is not actually a thing

You might see phrases like "there was a trend towards significance (p = 0.07)" or "the results approched significance", but this language is misleading!

At the conventional threshold of 𝜶 = 0.05 this means that p≤ 0.05 is statistically significant, but p> 0.05 is not statistically significant. There is no "almost" significant boundary. In fact, a p-value of 0.051 is not meaningfully, mathematically different from 0.049, it is just the cutoff threshold we have agreed upon. It means the evidence against the null hypothesis was weaker than your predefined threshold allowed you to conclude as statistically significant.

In other words, for p = 0.07, if the null hypothesis is true (and there really is no effect), results this extreme would happen about 7 times out of 100. Of course, 7% is not that different from 5%, but the line needs to be drawn somewhere, and it is typically at 5%.
