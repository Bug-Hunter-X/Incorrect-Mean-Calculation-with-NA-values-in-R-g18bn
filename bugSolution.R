```R
# Corrected function to handle NA values
calculate_mean_corrected <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  } else {
    total <- sum(x, na.rm = TRUE) # Remove NA values before summation
    mean <- total / length(x[!is.na(x)]) # Use only non-NA values to calculate length
    return(mean)
  }
}

# Example usage with a vector containing NA values
my_vector <- c(1, 2, NA, 4, 5)
result <- calculate_mean_corrected(my_vector)
print(result) # Correct result

#Alternative using mean() function directly
result2 <- mean(my_vector, na.rm = TRUE)
print(result2) #Correct result using mean function
```