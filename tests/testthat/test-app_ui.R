library(golem)

test_that("app ui", {
  ui <- app_ui()
  expect_shinytaglist(ui)
})

