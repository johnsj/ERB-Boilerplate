define [
  'jQuery'
  'Underscore'
  'Backbone'
  'Router'
],($, _, Backbone, Router) ->
  initialize = () ->
    Router.initialize()
    return

  return {initialize: initialize}