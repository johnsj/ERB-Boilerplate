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
    el: $("#container")

    initialize: () ->
      @collection = testcollection
      @collection.add {name: "John"}

      compiledTemplate = _.template testTemplate, {testmodels : @collection.models}

      $(@el).html compiledTemplate
      return
  }

  return new testView