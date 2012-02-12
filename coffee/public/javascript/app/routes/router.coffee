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
    routes:{
    
      '/testrouter' : 'routerTest'

      #Default
      '*actions' : 'defaultAction'
    }

    routerTest: () ->
      testc = new testcollection()
      window.testc = testc

      testcv = new testcollectionview {collection: testc}
      testc.fetch()
      testcv.render()

      return

    defaultAction: () ->
      console.log "No action found"
      return
  }

  initialize = () ->
    app_router = new AppRouter
    Backbone.history.start()
    return

  return {initialize: initialize}
