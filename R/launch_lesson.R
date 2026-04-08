#' Launch a specific lesson
#' @param lesson Name of the lesson
#' @export
launch_lesson <- function(lesson = NULL) {
  tutorials <- learnr::available_tutorials("RMastery")

  if (nrow(tutorials) == 0) {
    stop("No tutorials found. Check installation.")
  }

  if (is.null(lesson)) {
    print("Available lessons:")
    print(tutorials[, c("tutorial", "title")])
    return(invisible(NULL))
  }

  if (!lesson %in% tutorials$tutorial) {
    stop("Lesson not found.")
  }

  learnr::run_tutorial(lesson, package = "RMastery")
}
