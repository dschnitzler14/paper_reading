matching_game_ui <- function(id) {
  ns <- NS(id)

  tagList(
    uiOutput(ns("message")),
    uiOutput(ns("grid"))
  )
}

matching_game_server <- function(id, cards, pairs) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    questions <- Filter(function(x) x$type == "question", cards)
    q_ids <- vapply(questions, function(x) x$id, character(1))

    pair_index_map <- setNames(seq_along(q_ids), q_ids)

    get_pair_index <- function(card_id) {
      if (!is.null(pair_index_map[[card_id]])) return(unname(pair_index_map[[card_id]]))

      q_for_answer <- names(pairs)[vapply(pairs, function(x) identical(x, card_id), logical(1))]
      if (length(q_for_answer) == 1 && !is.null(pair_index_map[[q_for_answer]])) {
        return(unname(pair_index_map[[q_for_answer]]))
      }

      NA_integer_
    }

    rv <- reactiveValues(
      selected = NULL,
      matched = character(0),
      matched_pair = setNames(integer(0), character(0)),
      wrong = character(0),
      message = NULL,
      message_type = NULL
    )

    card_class <- function(card_id) {
      classes <- c("match-card")

      if (card_id %in% rv$matched) {
        classes <- c(classes, "is-matched")
        p <- rv$matched_pair[[card_id]]
        if (!is.null(p) && !is.na(p)) classes <- c(classes, paste0("pair-", p))
      }

      if (!is.null(rv$selected) && identical(card_id, rv$selected)) classes <- c(classes, "is-selected")
      if (card_id %in% rv$wrong) classes <- c(classes, "is-wrong")

      paste(classes, collapse = " ")
    }

    output$message <- renderUI({
      if (is.null(rv$message)) return(NULL)
      div(class = paste("match-message", rv$message_type), rv$message)
    })

    output$grid <- renderUI({
      questions_ui <- lapply(Filter(function(x) x$type == "question", cards), function(x) {
        actionButton(
          inputId = ns(x$id),
          label = tagList(
            tags$div(class = "match-card-inner",
                     tags$h3(x$title)
            )
          ),
          class = card_class(x$id)
        )
      })

      answers_ui <- lapply(Filter(function(x) x$type == "answer", cards), function(x) {
        actionButton(
          inputId = ns(x$id),
          label = tagList(
            tags$div(class = "match-card-inner",
                     tags$h3(x$title),
                     if (!is.null(x$subtitle)) tags$p(x$subtitle)
            )
          ),
          class = card_class(x$id)
        )
      })

      bslib::layout_columns(
        col_widths = c(6, 6),

        bslib::card(
          bslib::card_header("Questions"),
          bslib::card_body(questions_ui)
        ),

        bslib::card(
          bslib::card_header("Methods"),
          bslib::card_body(answers_ui)
        )
      )
    })

    observe({
      lapply(cards, function(x) {
        observeEvent(input[[x$id]], {
          if (x$id %in% rv$matched) return()

          if (is.null(rv$selected)) {
            rv$selected <- x$id
            rv$message <- "Pick its matching card."
            rv$message_type <- "hint"
            return()
          }

          if (identical(rv$selected, x$id)) {
            rv$selected <- NULL
            rv$message <- NULL
            rv$message_type <- NULL
            return()
          }

          a <- rv$selected
          b <- x$id

          matches_pair <- function(x, target) {
            if (is.null(x)) return(FALSE)
            target %in% x
              }

          pa <- pairs[[a]]
          pb <- pairs[[b]]
          is_pair <- matches_pair(pa, b) || matches_pair(pb, a)

          if (isTRUE(is_pair)) {
            p <- get_pair_index(a)
            if (is.na(p)) p <- get_pair_index(b)

            rv$matched <- unique(c(rv$matched, a, b))
            rv$matched_pair[[a]] <- p
            rv$matched_pair[[b]] <- p

            rv$selected <- NULL
            rv$wrong <- character(0)
            rv$message <- "Nice — that’s a correct match."
            rv$message_type <- "success"

            if (length(rv$matched) == length(cards)) {
              rv$message <- "Perfect - you matched everything!"
              rv$message_type <- "success"
            }
          } else {
            rv$wrong <- c(a, b)
            rv$selected <- NULL
            rv$message <- "Not quite - try a different pair."
            rv$message_type <- "error"

            shiny::invalidateLater(700, session)
            isolate({
              rv$wrong <- character(0)
              rv$message <- NULL
              rv$message_type <- NULL
            })
          }
        }, ignoreInit = TRUE)
      })
    })
  })
}
