```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  } else {
    total <- sum(x)
    mean <- total / length(x)
    return(mean)
  }
}

# Example usage with a problematic vector containing NA values
my_vector <- c(1, 2, NA, 4, 5)
result <- calculate_mean(my_vector)
print(result) # Incorrect result due to NA
```