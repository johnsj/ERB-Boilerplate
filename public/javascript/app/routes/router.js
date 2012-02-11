
define(['jQuery', 'Underscore', 'Backbone', 'Views/testview'], function($, _, Backbone, testview) {
  var AppRouter, initialize;
  AppRouter = Backbone.Router.extend({
    routes: {
      '/testrouter': 'routerTest',
      '*actions': 'defaultAction'
    },
    routerTest: function() {
      return testview.render();
    },
    defaultAction: function() {
      return console.log("No action found");
    }
  });
  initialize = function() {
    var app_router;
    app_router = new AppRouter;
    Backbone.history.start();
  };
  return {
    initialize: initialize
  };
});
