
define(['Underscore', 'Backbone'], function(_, Backbone) {
  var testModel;
  return testModel = Backbone.Model.extend({
    defaults: {
      name: 'Harry Potter'
    }
  });
});
