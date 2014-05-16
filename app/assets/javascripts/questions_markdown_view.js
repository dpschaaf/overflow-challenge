var QuestionsView = function (element) {
  this.element = element;
}

QuestionsView.prototype = {
  getWritingAreaText: function () {
    return this.element.innerHTML
  },

  setPreviewAreaText: function (text) {
    this.element.innerHTML = text
  }

};