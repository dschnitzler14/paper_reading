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

cards <- list(
  list(id = "q_move", type = "question", title = "How much do isolated rats move?"),
  list(id = "q_stress", type = "question", title = "How much stress hormone is produced?"),
  list(id = "a_elisa_cort", type = "answer", title = "ELISA", subtitle = "Measure corticosterone concentrations in the plasma"),
  list(id = "a_nanotag", type = "answer", title = "Nanotag", subtitle = "Implant a device called nanotag")
)

pairs <- list(
  q_move   = "a_nanotag",
  q_stress = "a_elisa_cort"
)
