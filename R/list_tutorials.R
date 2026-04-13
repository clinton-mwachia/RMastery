#' List Available Tutorials
#'
#' Returns a data frame of all available learnr tutorials in the package.
#'
#' @param package Name of the package (default: "RMastery")
#' @param print Logical; whether to print nicely formatted output
#'
#' @return Data frame of tutorials
#' @export
list_tutorials <- function(package = "RMastery", print = TRUE) {
  if (!requireNamespace("learnr", quietly = TRUE)) {
    stop("Install 'learnr': install.packages('learnr')")
  }

  tutorials <- learnr::available_tutorials(package = package)

  if (nrow(tutorials) == 0) {
    warning("No tutorials found in this package.")
    return(invisible(tutorials))
  }

  if (print) {
    cat("\nAvailable Tutorials\n")
    cat("======================\n\n")

    for (i in seq_len(nrow(tutorials))) {
      cat(sprintf("[%d] %s\n", i, tutorials$title[i]))
      cat(sprintf("     name: %s\n", tutorials$name[i]))

      # Optional fields (if available)
      if ("description" %in% names(tutorials) && !is.na(tutorials$description[i])) {
        cat(sprintf("     desc: %s\n", tutorials$description[i]))
      }

      cat("\n")
    }
  }

  return(tutorials)
}
