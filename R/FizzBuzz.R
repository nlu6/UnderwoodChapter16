#' Convert Integer to Fizz Buzz.
#'
#' When entering a vector of integers of any length into the function, the
#' output will show which integers are divisible by which numbers.
#'
#' If an integer is divisible by three, it will be converted to "Fizz".
#' If an integer is divisible by five, it will be converted to "Buzz".
#' If an integer is divisible by both three and five, then it will be converted
#' to "Fizz Buzz".
#'
#' @param \code{x} A vector of integers
#' @return The Fizz Buzz-ification of \code{x}
#' @examples
#' smallVector <- c(1:30)
#' largerVector <- sample(x = c(1:10), size = 90, replace = TRUE)
#'
#' FizzBuzz(smallVector)
#' FizzBuzz(largerVector)
#' @export
FizzBuzz <- function(x) {

  if(all(x > 0) && all(!is.infinite(x))) {

    return(ifelse(x %% 15 == 0, "Fizz Buzz",
                  ifelse(x %% 3 == 0, "Fizz",
                         ifelse(x %% 5 == 0, "Buzz", x))))
  }
  else {
    if(any(is.infinite(x))) {

      stop("Infinity is not a valid input.")
    }
    else if(any(x == 0)) {

      stop("Zero is not a valid input.")
    }
    else if(any(x < 0)) {

      stop("Negative numbers are not a valid input.")
    }
  }
}
