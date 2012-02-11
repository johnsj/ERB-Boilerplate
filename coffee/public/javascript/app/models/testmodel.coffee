#Template for a bare-bone Model
define [
   #Loading BackBone dependencies
  'Underscore'
  'Backbone'
], (_, Backbone)->
  testModel = Backbone.Model.extend {
    defaults: {
      name: 'Harry Potter'
    }
  }