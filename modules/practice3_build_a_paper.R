practice_build_a_paper_module_ui <- function(id, dictionary) {
  ns <- NS(id)
  tagList(
    p("Build a Paper"),
    sortable_ui(ns("build_a_paper_sortable"), randomised_build_a_paper_dictionary)
  )
}

practice_build_a_paper_module_server <- function(id) {
  moduleServer(id, function(input, output, session) {

    sortable_server("build_a_paper_sortable", build_a_paper_dictionary, 
                   build_a_paper_intro_dictionary,
                   build_a_paper_methods_dictionary,
                   build_a_paper_results_dictionary,
                   build_a_paper_discussion_dictionary)

  })
}