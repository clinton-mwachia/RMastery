#' Start the RMastery Learning Experience
#'
#' This function launches an interactive menu for users to select and run tutorials.
#'
#' @export
start_learning <- function() {
  package_name <- "RMastery"

  cat("📚 Welcome to RMastery!\n")
  cat("Learn R step by step using interactive tutorials.\n\n")

  # Get available tutorials
  tutorials <- learnr::available_tutorials(package = package_name)

  if (nrow(tutorials) == 0) {
    stop("❌ No tutorials found. Make sure the package is installed correctly.")
  }

  repeat {
    cat("\n🧭 Available Lessons:\n")

    for (i in seq_len(nrow(tutorials))) {
      cat(paste0(i, ". ", tutorials$name[i], "\n"))
    }

    cat("\n0. Exit\n")

    # Get user input
    choice <- readline(prompt = "👉 Select a lesson number: ")

    # Validate input
    if (!grepl("^[0-9]+$", choice)) {
      cat("❌ Please enter a valid number.\n")
      next
    }

    choice <- as.integer(choice)

    if (choice == 0) {
      cat("👋 Goodbye! Keep practicing R.\n")
      break
    }

    if (choice < 1 || choice > nrow(tutorials)) {
      cat("❌ Invalid selection. Try again.\n")
      next
    }

    tutorial_name <- tutorials$name[choice]

    cat(paste0("\n🚀 Launching: ", tutorials$title[choice], "...\n"))

    # Run tutorial
    learnr::run_tutorial(tutorial_name, package = package_name)

    cat("\n✅ Tutorial completed (or closed).\n")
  }
}
