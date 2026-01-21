title_rating_body_ui <- function() {
  tagList(
    div(
      class = "paperstars-rating",
      radioGroupButtons(
        inputId = "title_rating_body",
        label = "What did you think of the title?",
        direction = "vertical",
        justified = TRUE,
        size = "sm",
        individual = TRUE,
        selected = character(0),
        choiceNames = list(
          "Appropriate",
          "Slightly Misleading",
          "Exaggerated"
        ),
        choiceValues = list("1", "0.5", "0")
      )
    )
  )
}

methods5_answer_ui <- function() {
  tagList(
    tags$p(
      class = "handwritten",
      "❌ The methods do not specify a recovery period after the implantation surgery. This is an important consideration as surgery can induce stress and affect behaviour. Ideally, there should be a recovery period of at least one week to allow the rats to heal and return to baseline behaviour before starting the experiment."),
      tags$br(),
  )
}

observeEvent(input$methods5, {
  ui <- methods5_question_ui()
  ui_answer <- methods5_answer_ui()

  output$strategies_methods5_click <- renderUI(ui)
  output$reflection_methods5_click <- renderUI(ui)
  output$reflection_methods5_answer <- renderUI(ui_answer)
})

##


output$strategies_introduction_rating_selector <- renderUI({
  tagList(
    div(
      class = "paperstars-rating",
      radioGroupButtons(
        inputId = "title_rating",
        label = "What did you think of the title?",
        direction = "vertical",
        justified = TRUE,
        size = "sm",
        individual = TRUE,
        selected = character(0),
        choiceNames = list(
          "Appropriate",
          "Slightly Misleading",
          "Exaggerated"
        ),
        choiceValues = list("1", "0.5", "0")
      )
    )
  )
})