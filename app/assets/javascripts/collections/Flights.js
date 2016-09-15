var app = app || {};

app.Flights = Backbone.Collection.extend({
  url: "/flights",
  model: app.Flight,
  initialize: function(){
    console.log("\tapp.Flights instantiated");

    this.on("add",function(){
      var appHandleFlightsView = new app.HandleFlightsView({
        collection: app.flights
      });
      appHandleFlightsView.render();
    });
  }
});
