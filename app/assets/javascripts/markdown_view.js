var NewQuestionPreview = function () {
  this.view = 'markdown';
  this.inputBody = 'question_body';
}

NewQuestionPreview.prototype = {
  getWritingAreaText: function () {
    return document.getElementById(this.inputBody).value
  },

  setPreviewAreaText: function (text) {
    this._previewArea().innerHTML = text
  },

  _previewArea: function () {
    return document.getElementById(this.view)
  }

};


var QuestionsView = function () {
  this.view = '.body';
}

QuestionsView.prototype = {
  getWritingAreaText: function () {
    return document.querySelectorAll(this.inputBody).value
  },

  setPreviewAreaText: function (text) {
    this._previewArea().innerHTML = text
  },

  _previewArea: function () {
    return document.getElementById(this.view)
  }

};