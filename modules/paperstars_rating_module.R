# paperstars_rating_ui <- function(
#   id,
#   label,
#   title = "Rating",
#   choiceNames,
#   choiceValues = c("1", "0.5", "0"),
#   selected = character(0)
# ) {
#   ns <- NS(id)

#   div(
#     class = "sb-white",
#     tags$h4(title),
#     class = "paperstars-rating",
#     radioGroupButtons(
#       inputId = ns("rating"),
#       label = label,
#       direction = "vertical",
#       justified = TRUE,
#       size = "sm",
#       individual = TRUE,
#       selected = selected,
#       choiceNames = choiceNames,
#       choiceValues = choiceValues
#     )
#   )
# }

paperstars_rating_ui <- function(
  id,
  label,
  title = "Rating",
  choiceNames,
  choiceValues = c("1", "0.5", "0"),
  selected = character(0)
) {
  ns <- NS(id)

  bslib::accordion(
    id = ns("acc"),
    class = "paperstars-accordion paperstars-rating",
    bslib::accordion_panel(
      title = tags$h4(title),
      value = "panel",
      radioGroupButtons(
        inputId = ns("rating"),
        label = label,
        direction = "vertical",
        justified = TRUE,
        size = "sm",
        individual = TRUE,
        selected = selected,
        choiceNames = choiceNames,
        choiceValues = choiceValues
      )
    )
  )
}

paperstars_rating_server <- function(
  id,
  weight = 1,
  choiceNames,
  choiceValues = c("1", "0.5", "0")
) {
  moduleServer(id, function(input, output, session) {

     observeEvent(input$rating, {
      if (!is.null(input$rating) && nzchar(input$rating)) {
        bslib::accordion_panel_close(
          id = "acc",
          values = "panel",
          session = session
        )
      }
    }, ignoreInit = TRUE)

    choice_value <- reactive({
      input$rating
    })

    choice_value <- reactive({
      input$rating
    })

    choice_value <- reactive({
      input$rating
    })

    choice_name <- reactive({
      idx <- match(choice_value(), choiceValues)
      choiceNames[[idx]] %||% NULL
    })

    numeric_value <- reactive({
      if (is.null(choice_value())) NA_real_ else as.numeric(choice_value())
    })

    weighted_score <- reactive({
      v <- numeric_value()
      if (is.na(v)) 0 else v * weight
    })

    list(
      choice_name = choice_name,
      choice_value = choice_value,
      value = numeric_value,
      weight = reactive(weight),
      score = weighted_score
    )
  })
}
