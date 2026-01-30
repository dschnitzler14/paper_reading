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
    card(
      card_header("Pick a Paper to Read"),
      
      
      card_body(
        layout_columns(
          widths = c(6, 6),
          card(
          p("Effect of Caffeine on Heart Rate and Blood Pressure"),
          actionButton(ns("geethavani_paper"), "Read Geethavani et al. (2014)")),
          card(
          p("Downregulation of cyclic adenosine monophosphate levels in leukocytes of hibernating captive black bears is similar to reported cyclic adenosine monophosphate findings in major depressive disorder"),
          actionButton(ns("Tsiouris_paper"), "Read Tsiouris and Flory (2023)")),
          card(
          p("Stress‐induced hyperphagia? Characterising the activity of the ghrelin axis in male rats with high anxiety behaviour"),
          actionButton(ns("Hornsby_paper"), "Read Hornsby et al. (2026)")),
          card(
          p("Tattoos as a risk factor for malignant lymphoma: a population-based case–control study"),
          actionButton(ns("Nielsen_paper"), "Read Nielsen et al. (2024)")),
        )
      )
    ),
    uiOutput(ns("paper1_ui_output")),

    nav_buttons_ui(ns("nav_controls"))
  )
}

practice_your_turn_module_server <- function(id, parent_session, nav_order_list, process_markdown, process_rmd_fragment) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns

  observeEvent(input$geethavani_paper, {
  output$paper1_ui_output <- renderUI({
    your_turn_paper_geet_ui(ns("your_turn_paper_geet"))
  })
})

 your_turn_paper_geet_server("your_turn_paper_geet", process_markdown = process_markdown, process_rmd_fragment = process_rmd_fragment)
    
    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
    
  })
}