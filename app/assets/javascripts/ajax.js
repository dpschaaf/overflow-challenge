window.onload = function () {
  $('header').on('ajax:success', newQuestionView)
  $('.questions').on('ajax:success', newQuestionView)
};

var newQuestionView = function (e, data) {
  console.log($(this))
  $(this).append(data)
  initializeMarkdownPreview()
};


