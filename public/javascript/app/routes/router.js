
define(['jQuery', 'Underscore', 'Backbone', 'Views/testview', 'Views/testcollectionview', 'Collections/testcollection', 'Models/testmodel'], function($, _, Backbone, testview, testcollectionview, testcollection, testmodel) {
  var AppRouter, initialize;
  AppRouter = Backbone.Router.extend({
    initialize: function() {
      var testc;
      testc = new testcollection();
      return window.testc = testc;
    },
    routes: {
      '': 'routerTest',
      'test': 'routerTest',
      '*actions': 'defaultAction'
    },
    routerTest: function() {
      var testcv;
      testcv = new testcollectionview({
        collection: window.testc
      });
      testc.fetch();
      testcv.render();
    },
    defaultAction: function() {
      $("#container").html("No route found");
    }
  });
  initialize = function() {
    window.app_router = new AppRouter;
    Backbone.history.start();
  };
  return {
    initialize: initialize
  };
});
