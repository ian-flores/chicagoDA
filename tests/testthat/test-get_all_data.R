test_that("Get All Data", {
  expect_true (dim(get_all_data('sentencing'))[2] == 39)
})
