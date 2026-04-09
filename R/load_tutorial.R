#' Load a Given Tutorial from the Package
#'
#' @param package Package name (default: "RMastery")
#' @param tutorial Tutorial name (character)
#'
#' @export
load_tutorial <- function(package = "RMastery", tutorial) {
  if (!requireNamespace("learnr", quietly = TRUE)) {
    stop("Install 'learnr': install.packages('learnr')")
  }

  tutorials <- learnr::available_tutorials(package = package)

  if (nrow(tutorials) == 0) {
    stop("No tutorials found in this package.")
  }

  if (is.character(tutorial)) {
    match_idx <- which(tutorials$name == tutorial)

    if (length(match_idx) == 0) {
      stop(sprintf(
        "Tutorial '%s' not found.\nAvailable tutorials:\n- %s",
        tutorial,
        paste(tutorials$name, collapse = "\n- ")
      ))
    }

    selected <- tutorials[match_idx[1], ]
  } else {
    stop("invalid `tutorial`")
  }

  # ---- Launch tutorial ----
  cat(sprintf("\n🚀 Launching: %s...\n\n", selected$title))

  learnr::run_tutorial(
    name = selected$name,
    package = package
  )
}
