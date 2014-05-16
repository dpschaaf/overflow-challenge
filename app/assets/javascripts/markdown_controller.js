//Add and Edit Question Preview
var initializeMarkdownPreview = function () {
  var view = new NewQuestionPreview
  var controller = new MarkdownPreviewController(view)
  controller.bindEventListeners()
}

var MarkdownPreviewController = function (view) {
  this.view = view
  this.inputBody = 'question_body'
}

MarkdownPreviewController.prototype = {
  bindEventListeners: function () {
    document.getElementById(this.inputBody).addEventListener('keyup', this.previewText.bind(this))
  },

  previewText: function () {
    var userText = this.view.getWritingAreaText()
    var formatter = new TextFormatter(userText)
    var previewText = formatter.format()
    this.view.setPreviewAreaText(previewText)
  }
};

var initializeQuestionsView = function () {
  var view = new QuestionsView
  var controller = new MarkdownPreviewController(view)
  controller.bindEventListeners()
}

var QuestionsViewController = function (view) {
  this.view = view
  this.inputBody = 'question_body'
}

QuestionsViewController.prototype = {
  previewText: function () {
    var userText = this.view.getWritingAreaText()
    var formatter = new TextFormatter(userText)
    var previewText = formatter.format()
    this.view.setPreviewAreaText(previewText)
  }
};