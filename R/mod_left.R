#' left UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_left_ui <- function(id) {
  ns <- NS(id)
  tagList(
 
  )
}
    
#' left Server Functions
#'
#' @noRd 
mod_left_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_left_ui("left_1")
    
## To be copied in the server
# mod_left_server("left_1")
