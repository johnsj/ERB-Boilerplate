
define(['jQuery', 'Underscore', 'Backbone', 'Views/testview', 'text!templates/testcollection.html'], function($, _, Backbone, testview, templateview) {
  var testcollectionview;
  return testcollectionview = Backbone.View.extend({
    tagName: 'section',
    el: $('#container'),
    initialize: function() {
      _.bindAll(this, 'render');
      this.collection.bind('reset', this.render);
      this.template = _.template(templateview);
    },
    render: function() {
      var $names, collection;
      collection = this.collection;
      $(this.el).html(this.template({}));
      $names = this.$('.names');
      collection.each(function(name) {
        var view;
        view = new testview({
          model: name,
          collection: collection
        });
        return $names.append(view.render().el);
      });
      return this;
    }
  });
});
