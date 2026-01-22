practice_your_turn_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    card(
      class = "paperstars-instructions-card",
      card_header("Instructions"),
      card_body(
        div(
          uiOutput(ns("your_turn_intro_text"))
        )
      )
    ),
  )
}

practice_your_turn_module_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
  })
}