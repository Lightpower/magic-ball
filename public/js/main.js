$(function() {
  var answer = $("#answer");

  $("#question-form").on("submit", function(ev) {
    var questionInput = $("#question"),
        questionText  = questionInput.val();

    ev.preventDefault();

    $.post("/question", { text: questionText }, function(result) {
      answer.html(result);
      questionInput.val("");
    });
  });
});