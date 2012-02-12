
define(['Underscore', 'Backbone', 'Models/testmodel'], function(_, Backbone, testmodel) {
  var testCollection;
  return testCollection = Backbone.Collection.extend({
    model: testmodel,
    url: "/api"
  });
});
