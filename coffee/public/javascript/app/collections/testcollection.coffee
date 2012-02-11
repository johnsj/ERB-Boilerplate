#Template for a bare-bone Collection
define [
  #Loading BackBone dependencies
  'Underscore'
  'Backbone'

  #Model
  'Models/testmodel'
],(_, Backbone, testmodel) ->
  testCollection = Backbone.Collection.extend {
    model: testmodel
  }

  return new testCollection