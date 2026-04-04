#' Launch Swirl Course
#' @export
launch_swirl <- function() {
  swirl::install_course_github(
    "clinton-mwachia",
    "RMastery",
    subdir = "inst/swirl"
  )

  swirl::swirl()
}
