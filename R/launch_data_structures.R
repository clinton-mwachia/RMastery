#' Launch Data Structures Lesson
#'
#' Starts the beginner introduction tutorial
#'
#' @export
launch_data_structures <- function() {
  learnr::run_tutorial(
    "data_structures",
    package = "RMastery"
  )
}
