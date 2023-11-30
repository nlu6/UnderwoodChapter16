test_that('The output vectors length is the same as the input vectors length', {
  expect_equal(
    length(c(1:10)),
    length(FizzBuzz(c(1:10)))
  )
  expect_equal(
    length(c(sample(x = c(1:10), size = 90, replace = TRUE))),
    length(FizzBuzz(c(sample(x = c(1:10), size = 90, replace = TRUE))))
  )
})
