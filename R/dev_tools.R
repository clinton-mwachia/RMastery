#' Build, Install, and List Tutorials
#'
#' Automates documentation, installation, and listing tutorials
#'
#' @param package Package name (default: "RMastery")
#'
#' @export
build_and_list <- function(package = "RMastery") {
  # Ensure required packages
  if (!requireNamespace("devtools", quietly = TRUE)) {
    stop("Install 'devtools': install.packages('devtools')")
  }

  if (!requireNamespace("learnr", quietly = TRUE)) {
    stop("Install 'learnr': install.packages('learnr')")
  }

  cat("\n==============================\n")
  cat("Building Package Workflow\n")
  cat("==============================\n\n")

  # Step 1: Document
  cat("Documenting package...\n")
  devtools::document()

  # Step 2: Install
  cat("Installing package...\n")
  devtools::install()

  # Step 3: Load package
  cat("Loading package...\n")
  suppressPackageStartupMessages(
    library(package, character.only = TRUE)
  )

  # Step 4: List tutorials
  cat("\nAvailable Tutorials:\n\n")

  tutorials <- learnr::available_tutorials(package = package)

  if (nrow(tutorials) == 0) {
    cat("No tutorials found.\n")
    return(invisible(NULL))
  }

  for (i in seq_len(nrow(tutorials))) {
    cat(sprintf("[%d] %s\n", i, tutorials$name[i]))
  }

  cat("\n one!\n\n")

  return(invisible(tutorials))
}
