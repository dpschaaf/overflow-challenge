window.onload = function () {
  $('header').on('ajax:success', replaceView)
  $('.questions').on('ajax:success', editQuestionView)
  $('.last').on('ajax:success', replaceView)
  $('.body').each(initializeQuestionsView)
};

var replaceView = function (e, data) {
  $('header').children('div:last').remove()
  $('header').append(data)
  initializeMarkdownPreview()
  initializeQuestionsView()
};

var editQuestionView = function (e, data) {
  $(this).parent().append(data)
  initializeMarkdownPreview()
};


