# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#' Title
#'
#' @param weight number
#' @param height number
#' @param name name
#'
#' @return bmi
#' @importFrom dplyr filter summarise n
#' @importFrom stats qnorm
#'
#' @examples
#' library(bmi)
#' bmi(70,173,'John')
#' @export
#'
bmi <- function(weight, height, name) {
  bmi <- round(getBMI(weight, height / 100), 2)
  result <- paste0("Hi ", name, ". BMI:", bmi)
  print(result)
}

getBMI <- function(w, h) {
  bmi <- w / (h * h)
  return(bmi)
}

