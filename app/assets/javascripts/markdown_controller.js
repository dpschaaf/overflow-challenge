var initializeMarkdownPreview = function () {
  var view = new View
  var controller = new Controller(view)
  controller.bindEventListeners()
}


var Controller = function (view) {
  this.view = view
  this.inputBody = 'question_body'

}

Controller.prototype = {
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


// retrieve text form the view
// send it to the model for formatting
// recieve formatted text form the model
// return formatted text to the view
