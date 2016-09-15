var app = app || {};

app.DisplayFlightView = Backbone.View.extend({
  tagName: 'tr',

  initialize: function(){
    this.model.on("change", this.render, this);
  },

  render: function(){
    console.log("\tapp.DisplayFlightView.render() Flight number:" + this.model.get("number"));

    var dynamicTemplate = _.template($("#display-flight-view-template").html());
    var output = dynamicTemplate(this.model.toJSON());

    this.$el.html(output);
    return this;
  }
});
