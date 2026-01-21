practice_green_red_flag_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    p("Select the green, red, amber flags")
  )
}

practice_green_red_flag_module_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
  })
}