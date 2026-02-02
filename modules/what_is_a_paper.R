what_is_a_paper_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    bslib::card(
      full_screen = TRUE,

      bslib::card_header(
        uiOutput(ns("section_title"))
      ),

      bslib::card_body(
        bslib::layout_sidebar(
          fillable = FALSE,
          fill = FALSE,

          bg = "#fffdf6",
          fg = "#2b362bff",
          border = TRUE,
          border_radius = TRUE,
          border_color = "rgba(0,0,0,0.08)",
          padding = "2px", #"16px",
          gap = "2px", #"16px",

          sidebar = bslib::sidebar(
            title = tags$span("Chapters", class = "toc-title"),
            open = list(desktop = "always", mobile = "closed"),
            width = "30%",
            bg = "inherit",
            fg = "inherit",
            padding = "0px",
            gap = "1px",

            bslib::navset_pill_list(
              id = ns("toc"),
              well = FALSE,
              fluid = TRUE,
              bslib::nav_panel("So, what actually is a Paper?", value = "box1"),
              bslib::nav_panel("If it's in a Paper it must be true!", value = "box2"),
              bslib::nav_panel("How does Scientific Publishing Work?", value = "box3"),
              bslib::nav_panel("History of Publishing", value = "box4"),
              bslib::nav_panel("Different Types of Publication", value = "box5"),
              bslib::nav_panel("Problems with Scientific Publishing", value = "box6"),
              bslib::nav_panel("What is Open Science?", value = "box7"),
              bslib::nav_panel("Good ≠ Perfect", value = "box8")
              
            ),
          ),

          tags$div(
            class = "module-page",
            uiOutput(ns("section_body"))
          )
        )
      ),

      bslib::card_footer(
        nav_buttons_ui(ns("nav_controls"))
      )
    )
  )
}


what_is_a_paper_module_server <- function(id, parent_session, nav_order_list, process_markdown) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    output$what_is_a_paper_box1 <- renderUI(process_markdown("what_is_a_paper/what_is_a_paper1.md"))
    output$what_is_a_paper_box2 <- renderUI(process_markdown("what_is_a_paper/what_is_a_paper2.md"))
    output$what_is_a_paper_box3 <- renderUI(process_markdown("what_is_a_paper/what_is_a_paper3.md"))
    output$what_is_a_paper_box4 <- renderUI(process_markdown("what_is_a_paper/what_is_a_paper4.md"))
    output$what_is_a_paper_box5 <- renderUI(process_markdown("what_is_a_paper/what_is_a_paper5.md"))
    output$what_is_a_paper_box6 <- renderUI(process_markdown("what_is_a_paper/what_is_a_paper6.md"))
    output$what_is_a_paper_box7 <- renderUI(process_markdown("what_is_a_paper/what_is_a_paper7.md"))
    output$what_is_a_paper_box8 <- renderUI(process_markdown("what_is_a_paper/what_is_a_paper8.md"))


    titles <- c(
      box1 = "So, what actually is a Paper?",
      box2 = "If it's in a Paper, it must be True!",
      box3 = "How does Scientific Publishing Work?",
      box4 = "History of Publishing",
      box5 = "Different Types of Publication",
      box6 = "Problems with Scientific Publishing",
      box7 = "What is Open Science?",
      box8 = "Good ≠ Perfect"
    )

    current_key <- reactive({
      if (is.null(input$toc) || input$toc == "") "box1" else input$toc
    })

    output$section_title <- renderUI({
      key <- current_key()
      titles[[key]]
    })

    output$section_body <- renderUI({
      key <- current_key()
      switch(key,
        box1 = uiOutput(ns("what_is_a_paper_box1")),
        box2 = uiOutput(ns("what_is_a_paper_box2")),
        box3 = uiOutput(ns("what_is_a_paper_box3")),
        box4 = uiOutput(ns("what_is_a_paper_box4")),
        box5 = uiOutput(ns("what_is_a_paper_box5")),
        box6 = uiOutput(ns("what_is_a_paper_box6")),
        box7 = uiOutput(ns("what_is_a_paper_box7")),
        box8 = uiOutput(ns("what_is_a_paper_box8"))
      )
    })

    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
  })
}
