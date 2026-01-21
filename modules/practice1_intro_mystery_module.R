practice_intro_mystery_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    p("What is the gap in the research?"),
    card(
      card_header("Example Intro"),
      card_body(
        div(
        class = "strategies-main",
        div(
          class = "paper-box",
          uiOutput(ns("mystery_intro1")),
          uiOutput(ns("practice_intro1_mystery1_click"))
        )
      )
        
      ),
    ),
    card(
      card_header("Study 1"),
      card_body(
        div(
        class = "strategies-main",
        div(
          class = "paper-box",
          uiOutput(ns("mystery_intro2")),
          uiOutput(ns("practice_intro2_mystery1_click"))
        )
      )
        
      ),
    
    )
  )
}

practice_intro_mystery_module_server <- function(id, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns

  md_ui <- function(path, ...) {
    process_rmd_fragment(path, ns = ns, base_dir = "markdown", ...)
  }

    output$mystery_intro1 <- renderUI({
      md_ui("english/practice/practice1_mystery/intro1.Rmd")
    })

  observeEvent(input$practice_intro1_mystery1, {
  output$practice_intro1_mystery1_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("✅ This is a specific statement."),
      )
    )
  })
})

output$mystery_intro2 <- renderUI({
      md_ui("english/practice/practice1_mystery/intro2.Rmd")
    })

  observeEvent(input$practice_intro2_mystery1, {
  output$practice_intro2_mystery1_click <- renderUI({
    tagList(
      tags$ul(
        tags$li("✅ This is a specific statement."),
      )
    )
  })
})

  })
}