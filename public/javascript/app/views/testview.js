
define(['jQuery', 'Underscore', 'Backbone', 'Collections/testcollection', 'text!templates/test.html'], function($, _, Backbone, testcollection, testTemplate) {
  var testView;
  testView = Backbone.View.extend({
    el: $("#container"),
    initialize: function() {
      var compiledTemplate;
      this.collection = testcollection;
      this.collection.add({
        name: "John"
      });
      compiledTemplate = _.template(testTemplate, {
        testmodels: this.collection.models
      });
      $(this.el).html(compiledTemplate);
    }
  });
  return new testView;
});
