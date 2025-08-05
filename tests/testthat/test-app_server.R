test_that("app server", {
  server <- app_server
  expect_is(server, "function")
})