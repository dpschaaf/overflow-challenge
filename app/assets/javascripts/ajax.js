var container = '.container'

window.onload = function () {
  $(container).on('ajax:success', replaceView)
  $('.questions').on('ajax:success', editQuestionView)
  $('.last').on('ajax:success', replaceView)
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

$('.questions').on('ajax:success', editQuestionView) //delayed execution
$('.questions').on('ajax:success', editQuestionView()) //immediate execution (fucks shit up)
$('.questions').on('ajax:success', editQuestionView(ayy, zee))

$('.questions').on('ajax:success', editQuestionView.call(null, ayy, zee))
$('.questions').on('ajax:success', editQuestionView.call(newThis, ayy, zee))




