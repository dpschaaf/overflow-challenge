$(document).ready(function(){

  var view=new View();
  var model=new Model();
  var controller=new Controller(view,model)
  controller.bindListeners()
});



function Controller(view,model){
  this.view=view;
  this.model=model;
}

Controller.prototype = {
  bindListeners: function(){
    document.getElementById("question_body").addEventListener("keyup",this.masterCycle.bind(this))
  },

  masterCycle: function(){
    var textInBox=this.view.getBox()
    var translated=this.model.formatText(textInBox)

    this.view.renderFormattedText(translated)
  }
}





