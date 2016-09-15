var app = app || {};

app.Router = Backbone.Router.extend({
  routes: {
    "": "fetchFlights"  // localhost:3000/airplane#
  },

  initialize: function(){
    console.log("\tapp.Router instantiated");
  },

  fetchFlights: function(){
    console.log("\troutes live/flights => fetchFlights()");

    var appHandleFlightsView = new app.HandleFlightsView({
      collection: app.flights
    });
    appHandleFlightsView.render();
  }
});
