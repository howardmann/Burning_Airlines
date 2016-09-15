var app = app || {};

// Responsible for looping through collection and instantiating single Flight View
app.HandleFlightsView = Backbone.View.extend({

  initialize: function(){
    console.log("\tapp.HandleFlightsView instantiated");
  },

  render: function(){
    console.log("\tapp.HandleFlightsView.render()");
    $("#app-flights").html("");

    // Append table headings
    var headings = $("#display-flight-heading-template").html();
    $("#app-flights").prepend(headings);

    this.collection.each(function(flight){
      var appDisplayFlightView = new app.DisplayFlightView({
        model: flight
      });
      var rendered = appDisplayFlightView.render();
      $("#app-flights").append(rendered.el)
    });
  }
});
