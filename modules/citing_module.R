# citing_module_ui <- function(id) {
#   ns <- NS(id)
#   tagList(
    
#   )
# }

citing_module_ui <- function(id) {
  ns <- NS(id)

  bslib::page_fluid(
    div(
      class = "ps-guide",

      bslib::card(
        class = "ps-guide-hero",
        bslib::card_body(
          tags$div(
            class = "ps-guide-hero-inner",
            tags$h3("How to Cite Scientific Sources"),
            uiOutput(ns("citing_intro_text1"))
          )
        )
      ),

      bslib::layout_columns(
        col_widths = c(4, 4, 4),
        class = "ps-step-grid",

        bslib::card(
          class = "ps-step ps-step-1",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "1"),
                tags$h3("Know what needs a citation")
              ),
              uiOutput(ns("citing_step1_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-2",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "2"),
                tags$h3("Capture the essential details")
              ),
              uiOutput(ns("citing_step2_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-3",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "3"),
                tags$h3("Use DOIs and stable links")
              ),
              uiOutput(ns("citing_step3_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-4",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "4"),
                tags$h3("Choose a style and stick to it")
              ),
              uiOutput(ns("citing_step4_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-5",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "5"),
                tags$h3("In-text vs reference list")
              ),
              uiOutput(ns("citing_step5_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-6",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "6"),
                tags$h3("Cite figures, tables, and datasets")
              ),
              uiOutput(ns("citing_step6_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-7",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "7"),
                tags$h3("Avoid common citation mistakes")
              ),
              uiOutput(ns("citing_step7_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-8",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "8"),
                tags$h3("Example citations")
              ),
              uiOutput(ns("citing_step8_text"))
            )
          )
        ),

        bslib::card(
          class = "ps-step ps-step-9",
          bslib::card_body(
            tags$div(
              class = "ps-step-inner",
              tags$div(
                class = "ps-step-title",
                tags$span(class = "ps-step-num", "9"),
                tags$h3("Use a reference manager (optional)")
              ),
              uiOutput(ns("citing_step9_text"))
            )
          )
        )
      ),

      div(
        class = "ps-guide-nav",
        nav_buttons_ui(ns("nav_controls"))
      )
    )
  )
}

citing_module_server <- function(id, parent_session, nav_order_list, process_markdown) {
  moduleServer(id, function(input, output, session) {

    nav_buttons_server(
      id = "nav_controls",
      parent_session = parent_session,
      nav_order_list = nav_order_list,
      nav_input_id = "topnav"
    )
    
  })
}