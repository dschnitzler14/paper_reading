(function () {
  function modalIsOpen() {
    return document.querySelector(".modal.show.ps-fig-modal") !== null;
  }

  function clickPrev() {
    var btn = document.querySelector(".modal.show.ps-fig-modal .ps-fig-nav-prev");
    if (btn) btn.click();
  }

  function clickNext() {
    var btn = document.querySelector(".modal.show.ps-fig-modal .ps-fig-nav-next");
    if (btn) btn.click();
  }

  document.addEventListener("keydown", function (e) {
    if (!modalIsOpen()) return;

    if (e.key === "ArrowLeft") {
      e.preventDefault();
      clickPrev();
      return;
    }

    if (e.key === "ArrowRight") {
      e.preventDefault();
      clickNext();
      return;
    }
  });
})();
