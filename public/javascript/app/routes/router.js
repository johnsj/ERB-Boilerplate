
define(['jQuery', 'Underscore', 'Backbone', 'Views/testview', 'Views/testcollectionview', 'Collections/testcollection', 'Models/testmodel'], function($, _, Backbone, testview, testcollectionview, testcollection, testmodel) {
  var AppRouter, initialize;
  AppRouter = Backbone.Router.extend({
    routes: {
      '/testrouter': 'routerTest',
      '*actions': 'defaultAction'
    },
    routerTest: function() {
      var testc, testcv;
      testc = new testcollection();
      window.testc = testc;
      testcv = new testcollectionview({
        collection: testc
      });
      testc.fetch();
      testcv.render();
    },
    defaultAction: function() {
      console.log("No action found");
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
