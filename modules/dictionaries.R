pause_intro_dictionary <- list(
  list(
    question_no = 1,
    question = "What is the overarching need for this study?",
    answer_1 = "Social isolation causes muscle deterioration",
    answer_2 = "Social isolation has negative repurcussions on health and wellbeing in the elderly",
    answer_3 = "Social isolation is a poorly understood disability",
    correct = "answer_2",
    correct_description = "Social isolation affects many elderly and can have negative effects such as depression, increased mortality, and,
especially in the elderly, cardiovascular disease, cerebrovascular disease, and cognitive decline",
    incorrect_helper = "This is usually described in the opening statement of the introduction."
  ),
  list(
    question_no = 2,
    question = "ABCD",
    answer_1 = "1",
    answer_2 = "2",
    answer_3 = "3",
    correct = "answer_2",
    correct_description = "Exactly! ABCD",
    incorrect_helper = "Not quite! ABCD"
  )
)

pause_results_dictionary <- list(
  list(
    id = "fig1A_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig1A.jpg",
    figure_alt = "Figure 1A",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig1B_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig1B.jpg",
    figure_alt = "Figure 1B",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig1C_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig1C.jpg",
    figure_alt = "Figure 1C",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig2A_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig2A.jpg",
    figure_alt = "Figure 2A",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig2B_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig2B.jpg",
    figure_alt = "Figure 2B",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig3A_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig3A.jpg",
    figure_alt = "Figure 3A",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig3B_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig3B.jpg",
    figure_alt = "Figure 3B",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  ),
  list(
    id = "fig3C_q1",
    figure_src = "assets/strategies_figures/pause/strategies_fig3C.jpg",
    figure_alt = "Figure 3C",
    question = "ABC",
    answer_a = "1",
    answer_b = "2",
    answer_c = "3",
    correct = "answer_a",
    correct_description = "ABCD",
    incorrect_helper = "Not quite"
  )
)

sentence_checklist_dictionary_names <-list(
    "Social isolation has significant negative effects on health and wellbeing in the elderly.",
    "Muscle deterioration is a key concern for socially isolated elderly individuals.",
    "The study aims to investigate the impact of social isolation by studying its effects on mental health."
  )

sentence_checklist_dictionary_values <-list(
    "social_isolation_health" ,
    "muscle_deterioration" ,
    "study_aims"
  )

sentence_checklist_dictionary_correct <- list(
    "social_isolation_health",
    "muscle_deterioration"
)

build_a_paper_dictionary <- list(
  "Describe the overarching need for this study.",
  "Give an overview of relevant literature to provide context.",
  "Describe the gap in knowledge that this study aims to fill.",
  "Describe the specific research question or hypothesis.",
  "Describe the study design and procedures.",
  "Explain the data collection methods used.",
  "Describe the participants or subjects involved in the study.",
  "Present the results obtained from the research.",
  "Contextualise the findings and with existing literature.",
  "Describe the limitations of the study and how they were addressed.",
  "Suggest the next steps for future research."
)

randomised_build_a_paper_dictionary <- sample(build_a_paper_dictionary)

build_a_paper_intro_dictionary <- list(
  "Describe the overarching need for this study.",
  "Give an overview of relevant literature to provide context.",
  "Describe the gap in knowledge that this study aims to fill.",
  "Describe the specific research question or hypothesis."
)

build_a_paper_methods_dictionary <- list(
  "Describe the study design and procedures.",
  "Explain the data collection methods used.",
  "Describe the participants or subjects involved in the study."
)

build_a_paper_results_dictionary <- list(
  "Present the results obtained from the research."
)

build_a_paper_discussion_dictionary <- list(
  "Contextualise the findings and with existing literature.",
  "Describe the limitations of the study and how they were addressed.",
  "Suggest the next steps for future research."
)
