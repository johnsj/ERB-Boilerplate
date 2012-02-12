define [
  #Load the jQuery-wrapper
  'jQuery'

  #Loading BackBone dependencies
  'Underscore'
  'Backbone'

  #Collection
  'Collections/testcollection'

  #Template
  'text!templates/test.html'
], ($, _, Backbone, testcollection, testTemplate) ->
  testView = Backbone.View.extend {
    tagName: 'li'

    initialize: () ->
      _.bindAll(@, 'render')
      @model.bind 'change', @render
      @template = _.template testTemplate

    render: ()->
      renderedTemplate = @template(@model.toJSON())
      $(@el).html renderedTemplate

      return @
  }