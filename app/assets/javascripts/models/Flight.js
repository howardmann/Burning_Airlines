var app = app || {};

app.Flight = Backbone.Model.extend({
  urlRoot: "/flights",
  defaults: {
    number: "number",
    origin: "TBD",
    destiination: "TBD",
    date: ""
  }
});
