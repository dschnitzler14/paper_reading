document.addEventListener("click", function (e) {
  const btn = e.target.closest(".ps-topic-btn");
  if (!btn) return;

  const card = btn.closest(".ps-topic-card");
  if (!card) return;

  card.classList.add("ps-card-completed");
});
