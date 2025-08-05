#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  r <- reactiveValues(
    text = shinipsum::random_text(nwords = 1000)
  )
  
  mod_left_server("left_ui_1", r)
  mod_right_server("right_ui_1", r)
  
}
