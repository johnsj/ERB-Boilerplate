define [
  #Load the jQuery-wrapper
  'jQuery'

  #Loading BackBone dependencies
  'Underscore'
  'Backbone'

  #Load the views to be used in the router
  'Views/testview'
], ($, _, Backbone, testview) ->
  AppRouter = Backbone.Router.extend {
    routes:{
    
      '/testrouter' : 'routerTest'

      #Default
      '*actions' : 'defaultAction'
    }

    routerTest: () ->
      testview.render()

    defaultAction: () ->
      console.log "No action found"
  }

  initialize = () ->
    app_router = new AppRouter
    Backbone.history.start()
    return

  return {initialize: initialize}
