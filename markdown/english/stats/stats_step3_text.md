In order to determine which type test to carry out (e.g. parametric or non-parametric) you first need to determine normality - this is important for the underlying maths to work correctly.

In addition, it is important to meet all the other assumtions of your test to ensure you are calculating based on the correct basis.

**Some common assumptions are:**

1. Normality

- This is important for a parametric test, as the formula assumes that the data is normally distributed.
- If the data is not normally distributed, then you must use a non-parametric test
- While there are mathematical ways to calcuate normality (e.g. Shapiro-Wilk), these can be very sensitive to sample size and therefore not accurate.
- Best solution is to plot a histogram or a QQ-plot and visually assess if the data follow a normal-ish distribution pattern

2. Independent observations

- This assumes that the results for one subject are not affected by another subject.
- An example of a non-independent observation is repeated measures (multiple samples from the same subject)

3. Homogeneity of variances

- This assumes that the variance of the data is similar among all groups being tested
