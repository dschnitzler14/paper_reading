practice_your_turn_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    p("Select one of these papers and give it a go. Then come back and check your results")
  )
}

practice_your_turn_module_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
  })
}