var container = '.container'

window.onload = function () {
  $(container).on('ajax:success', replaceView)
  $('.questions').on('ajax:success', editQuestionView)
  // $('.last').on('ajax:success', replaceView)
  formatQuestions()
};

var replaceView = function (e, data) {
  $(container).children('div:last').remove()
  $(container).append(data)
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
