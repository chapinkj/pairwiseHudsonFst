pairwiseHudsonFst <- function(genind_object=gen, outout_file = NULL) {
  require("KRIS")
  populations <- unique(genind_object@pop)
  num_populations <- length(populations)
  fst_matrix <- matrix(NA, nrow = num_populations, ncol = num_populations, dimnames = list(populations, populations))
  calculate_fst <- function(subset_data, pop1, pop2) {
    idx_pop1 <- which(as.character(subset_data$pop) == pop1)
    idx_pop2 <- which(as.character(subset_data$pop) == pop2)
    tryCatch(
      KRIS::fst.hudson(subset_data$tab, idx_pop1, idx_pop2),
      error = function(e) {
        message(sprintf("Error calculating Fst for populations %s and %s: %s", pop1, pop2, e$message))
        return(NA)
      }
    )
  }
  for (i in 1:(num_populations - 1)) {
    for (j in (i + 1):num_populations) {
      pop1 <- populations[i]
      pop2 <- populations[j]
      subset_data <- genind_object[pop = c(pop1, pop2)]
      fst_value <- calculate_fst(subset_data, pop1, pop2)
      fst_matrix[i, j] <- fst_value
      fst_matrix[j, i] <- fst_value
    }
  }
  fst_dataframe <- as.data.frame(fst_matrix)
  if (!is.null(outout_file)) {
    write.csv(fst_dataframe, outout_file, row.names = TRUE)
  }
  return(fst_dataframe)
}
