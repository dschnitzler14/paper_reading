practice_intro_mystery_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    card(
      class = "paperstars-instructions-card",
      card_header("Instructions"),
      card_body(
        div(
          uiOutput(ns("mystery_intro_text"))
        )
      )
    ),
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
    ),
    card(
      card_header("Study 2"),
      card_body(
        div(
        class = "strategies-main",
        div(
          class = "paper-box",
          uiOutput(ns("mystery_intro3")),
          uiOutput(ns("practice_intro3_mystery1_click"))
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
      div(class = "alert alert-success lecturi-alert", "✅ Good Job! The authors describe a knowledge gap relating to familial indidence of depression")
    )
  })
})

output$mystery_intro2 <- renderUI({
      md_ui("english/practice/practice1_mystery/intro2.Rmd")
    })

  observeEvent(input$practice_intro2_mystery1, {
  output$practice_intro2_mystery1_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Yes! The molecular targets of caffeine in relation to having beneficial effects of depression are not known.")
    )
  })
})

output$mystery_intro3 <- renderUI({
      md_ui("english/practice/practice1_mystery/intro3.Rmd")
    })

  observeEvent(input$practice_intro3_mystery1, {
  output$practice_intro3_mystery1_click <- renderUI({
    tagList(
      div(class = "alert alert-success lecturi-alert", "✅ Well Done!")
    )
  })
})

  })
}