# sb_notepad_emoji_picker_ui <- function() {
#   htmltools::tags$div(
#     class = "sb-emoji-picker",
#     htmltools::tags$button(type = "button", class = "sb-emoji-btn", `data-emoji` = "✅", "✅"),
#     htmltools::tags$button(type = "button", class = "sb-emoji-btn", `data-emoji` = "✏️", "✏️"),
#     htmltools::tags$button(type = "button", class = "sb-emoji-btn", `data-emoji` = "🚩", "🚩"),
#     htmltools::tags$button(type = "button", class = "sb-emoji-btn", `data-emoji` = "❓", "❓"),
#     htmltools::tags$button(type = "button", class = "sb-emoji-btn", `data-emoji` = "📝", "📝"),
#     htmltools::tags$button(type = "button", class = "sb-emoji-btn", `data-emoji` = "⚠️", "⚠️")
#   )
# }

sb_notepad_emoji_picker_ui <- function(emojis) {
  htmltools::tags$div(
    class = "sb-emoji-picker",
    `data-emojis` = paste(emojis, collapse = ",")
    
  )
}