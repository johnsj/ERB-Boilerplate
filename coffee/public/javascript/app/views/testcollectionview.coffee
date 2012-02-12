define [
  #Load the jQuery-wrapper
  'jQuery'

  #Loading BackBone dependencies
  'Underscore'
  'Backbone'

  #Model View for extention
  'Views/testview'

  #Template
  'text!templates/testcollection.html'
], ($, _, Backbone, testview, templateview) ->
  testcollectionview = Backbone.View.extend {
    tagName: 'section'

    el: $('#container')

    initialize: () ->
      _.bindAll @, 'render'
      @collection.bind 'reset', @render
      @template = _.template(templateview)
      return
    
    render: () ->
      collection = @collection
      $(@el).html @template {}

      $names = @.$('.names')

      collection.each (name)->
        view = new testview {
          model: name
          collection: collection
        }
        $names.append view.render().el

      return @
  }