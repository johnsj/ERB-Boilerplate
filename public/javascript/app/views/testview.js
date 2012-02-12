
define(['jQuery', 'Underscore', 'Backbone', 'Collections/testcollection', 'text!templates/test.html'], function($, _, Backbone, testcollection, testTemplate) {
  var testView;
  return testView = Backbone.View.extend({
    tagName: 'li',
    initialize: function() {
      _.bindAll(this, 'render');
      this.model.bind('change', this.render);
      return this.template = _.template(testTemplate);
    },
    render: function() {
      var renderedTemplate;
      renderedTemplate = this.template(this.model.toJSON());
      $(this.el).html(renderedTemplate);
      return this;
    }
  });
});
