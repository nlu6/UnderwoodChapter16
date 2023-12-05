test_that('The input is not negative, zero, or infinity', {
  expect_error(FizzBuzz(Inf))
  expect_error(FizzBuzz(c(-10:-1)))
  expect_error(FizzBuzz(c(1, 0, 5)))
})
