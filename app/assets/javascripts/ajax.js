window.onload = function () {
  $('header').on('ajax:success', replaceView)
  $('.questions').on('ajax:success', editQuestionView)
  // $('.last').on('ajax:success', replaceView)
  formatQuestions()
};

var replaceView = function (e, data) {
  $('header').children('div:last').remove()
  $('header').append(data)
  formatQuestions()
  initializeMarkdownPreview()
};

var editQuestionView = function (e, data) {
  $(this).parent().append(data)
  initializeMarkdownPreview()
};

var formatQuestions = function () {
  $('.body').each(initializeQuestionsView)
  initializeMarkdownPreview()
}
