The more often you run a statistical test, the higher your chance of making a Type I error (false positive).

Multiple comparisons is not about re-running the same test over and over on the same numbers. You will alwys get the same results. But, for every statistical test, you taking a 5% risk (0.05) that the result is a false positive. That 5% risk applies to each individual test. So, the more tests you do, the higher the risk.

In other words, if you flip a coin once, the chance of heads is 50%. But, if you flip it ten times, the chance of getting at least one heads is much higher than 50%.

This is relevent to some statistical tests like an ANOVA, that compare multiple groups: A vs B, B vs C, A vs C, and each of those comparisons is its own statistical test.

Therefore, post-hoc tests or corrections are use to correct for multiple comparisons, that account for the fact that you are running multiple tests on the same dataset.
