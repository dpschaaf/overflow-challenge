var NewQuestionPreview = function () {
  this.outputBody = 'markdown';
  this.inputBody = 'textarea';
}

NewQuestionPreview.prototype = {
  getWritingAreaText: function () {
    return document.querySelector(this.inputBody).value
  },

  setPreviewAreaText: function (text) {
    this._previewArea().innerHTML = text
  },

  _previewArea: function () {
    return document.getElementById(this.outputBody)
  }

};


