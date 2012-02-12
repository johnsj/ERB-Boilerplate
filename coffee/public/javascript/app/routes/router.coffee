define [
  #Load the jQuery-wrapper
  'jQuery'

  #Loading BackBone dependencies
  'Underscore'
  'Backbone'

  #Load the views to be used in the router
  'Views/testview'
  'Views/testcollectionview'

  #Test collection
  'Collections/testcollection'

  #Test model
  'Models/testmodel'
], ($, _, Backbone, testview, testcollectionview, testcollection, testmodel) ->
  AppRouter = Backbone.Router.extend {

    initialize: () ->
      testc = new testcollection()
      window.testc = testc


    routes:{
    
      '' : 'routerTest'

      #Default
      '*actions' : 'defaultAction'
    }

    routerTest: () ->

      testcv = new testcollectionview {collection: window.testc}
      testc.fetch()
      testcv.render()

      return

    defaultAction: () ->
      $("#container").html "No route found"
      return
  }

  initialize = () ->
    window.app_router = new AppRouter
    Backbone.history.start()
    return

  return {initialize: initialize}
