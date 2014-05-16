var initializeQuestionsView = function (i, element) {
  console.log(element)
  console.log(i)
  var view = new QuestionsView(element)
  var controller = new QuestionsViewController(view)
  controller.previewText()
}

var QuestionsViewController = function (view) {
  this.view = view
}

QuestionsViewController.prototype = {
  previewText: function () {
    var userText = this.view.getWritingAreaText()
    var formatter = new TextFormatter(userText)
    var previewText = formatter.format()
    this.view.setPreviewAreaText(previewText)
  }
};