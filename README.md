# R Bug: Incorrect Mean Calculation with NA values

This repository demonstrates a common bug in R related to calculating the mean of a vector containing `NA` values. The `bug.R` file contains an implementation of a `calculate_mean` function which incorrectly computes the mean when `NA` values are present.  The `bugSolution.R` provides a corrected version that appropriately handles missing data.

The bug arises from the fact that the `sum()` function in R will treat `NA` values in the calculation, resulting in an `NA` result or an unexpected average. The solution addresses this issue by using the `na.rm = TRUE` argument within the `sum()` function or `mean()` function.