function View(){

}

View.prototype = {
  getBox: function(){
    var textToTranslate= document.getElementById("question_body").value
    return textToTranslate
  },

  renderFormattedText: function(text){
    //console.log(text)
    document.getElementById("markdown").innerHTML=text
  }
}
