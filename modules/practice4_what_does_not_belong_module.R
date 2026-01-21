practice_what_does_not_belong_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    p("What does not belong in the sections")
  )
}

practice_what_does_not_belong_module_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
  })
}