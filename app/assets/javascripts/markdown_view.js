var View = function () {
  this.previewer = 'markdown';
  this.inputBody = 'question_body';
}

View.prototype = {
  previewArea: function () {
    return document.getElementById('markdown')
  },

  getWritingAreaText: function () {
    return document.getElementById(this.inputBody).value
  },

  setPreviewAreaText: function (text) {
    this.previewArea().innerHTML = text
  }

};