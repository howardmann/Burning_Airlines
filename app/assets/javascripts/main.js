var app = app || {};

$(document).ready(function(){
  console.log("\tdocument loaded");

  app.flights = new app.Flights();

  app.flights.fetch().done(function(response){
    console.log("\tapp.flights.fetch().done");

    app.router = new app.Router();
    Backbone.history.start();
  });

  window.setInterval(function(){
    app.flights.fetch();
  },3000);
});
