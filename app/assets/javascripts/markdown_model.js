var TextFormatter = function (raw) {
  this.raw = raw
  this.formatters = [ HeaderFormatter, StrongFormatter, EmFormatter]
};

TextFormatter.prototype = {
  format: function () {
    var newText = this.raw
    for (var i in this.formatters) {
      newText = new this.formatters[i](newText).format()
    }
    return newText
  }

};

var EmFormatter = function (raw) {
  this.raw = raw
  this.expression = /\*([^\*]+)\*/g
};

EmFormatter.prototype = {
  format: function () {
    return this.raw.replace(this.expression,this.addTags('$1'))
  },

  addTags: function (match) {
    return '<em>'+match+'</em>'
  }
};

var StrongFormatter = function (raw) {
  this.raw = raw
  this.expression = /\*\*([^\*\*]+)\*\*/g
};

StrongFormatter.prototype = {
  format: function () {
    return this.raw.replace(this.expression,this.addTags('$1'))
  },

  addTags: function (match) {
    return '<strong>'+match+'</strong>'
  }
};

var HeaderFormatter = function (raw) {
  this.raw = raw
  this.expression = /#(.+)\n/g
};

HeaderFormatter.prototype = {
  format: function () {
    return this.raw.replace(this.expression,this.addTags('$1'))
  },

  addTags: function (match) {
    return '<h3>'+match+'</h3>'
  }
};