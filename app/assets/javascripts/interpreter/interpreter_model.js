function Model(){

}

Model.prototype={
  formatText: function(text){
    var newText=text
    return this.replaceMarkers(newText)
    //change text to integrate changes
    //return newText
  },

  replaceMarkers: function(text){
    // var match = new RegExp("[*][\w\W]{1,}[*]");
    var newText=text.replace(/[*][\w\W]{1,}[*]/,'<em>'+this.matchedText(text)+'</em>')
    console.log(newText)
     return newText
  },

  matchedText: function(text) {

    str = str.replace(/[*][\w\W]{1,}[*]/, '');
    var match = new RegExp(/\*(.+)\*/);
    if (match.test(text)){

      str = text.replace(/[*][\w\W]{1,}[*]/, 'poop');
      return text.match(/\*(.+)\*/)[1]
    }
  }
}