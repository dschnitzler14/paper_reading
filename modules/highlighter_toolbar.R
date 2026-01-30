highlighter_toolbar_ui <- function(target_selector = ".prose") {
  htmltools::tags$div(
    class = "hl-toolbar",
    `data-hl-target` = target_selector,

    htmltools::tags$button(
      type = "button", class = "hl-btn",
      `data-hl-action` = "color", `data-hl-class` = "hl-yellow",
      htmltools::tags$span(class = "hl-dot", style = "background: rgba(255, 235, 59, 0.65);"),
      "📝 General Note"
    ),
    htmltools::tags$button(
      type = "button", class = "hl-btn",
      `data-hl-action` = "color", `data-hl-class` = "hl-blue",
      htmltools::tags$span(class = "hl-dot", style = "background: rgba(129, 212, 250, 0.65);"),
      "❓ Question"
    ),
    htmltools::tags$button(
      type = "button", class = "hl-btn",
      `data-hl-action` = "color", `data-hl-class` = "hl-pink",
      htmltools::tags$span(class = "hl-dot", style = "background: rgba(248, 187, 208, 0.65);"),
      "🚩 Red Flag"
    ),
    htmltools::tags$button(
      type = "button", class = "hl-btn",
      `data-hl-action` = "color", `data-hl-class` = "hl-orange",
      htmltools::tags$span(class = "hl-dot", style = "background: rgba(255, 204, 128, 0.65);"),
      "⚠️ Amber Flag"
    ),
    htmltools::tags$button(
      type = "button", class = "hl-btn",
      `data-hl-action` = "color", `data-hl-class` = "hl-green",
      htmltools::tags$span(class = "hl-dot", style = "background: rgba(174, 213, 129, 0.65);"),
      "✅ Green Flag"
    ),
    htmltools::tags$button(
      type = "button", class = "hl-btn",
      `data-hl-action` = "color", `data-hl-class` = "hl-purple",
      htmltools::tags$span(class = "hl-dot", style = "background: rgba(206, 147, 216, 0.65);"),
      "✏️ Vocab & Unknown Concept"
    ),
    htmltools::tags$button(
      type = "button", class = "hl-btn",
      `data-hl-action` = "erase",
      "🗑️ Erase"
    ),
    htmltools::tags$button(
      type = "button", class = "hl-btn",
      `data-hl-action` = "clear",
      "🧽 Clear all"
    ),
    htmltools::tags$span(class = "hl-status", "Highlight mode • YELLOW")
  )
}
