#' @export

sqrt.2 <- function(x) {
  sqrt(x)
}

#' @export
log.2 <- function(x) {
  log(x, base = 2)
}

#' @export
f_operator <- function(f) {
  force(f)

  function(x) {
    if (x >= 0) {
      f(x)
    } else {
      stop("Invalid input value", .subclass = "invalid_input", val = x)
    }
  }
}

