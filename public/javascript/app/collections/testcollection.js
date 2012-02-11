
define(['Underscore', 'Backbone', 'Models/testmodel'], function(_, Backbone, testmodel) {
  var testCollection;
  testCollection = Backbone.Collection.extend({
    model: testmodel
  });
  return new testCollection;
});
