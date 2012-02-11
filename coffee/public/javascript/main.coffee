require.config {
  paths: {
    jquery: "lib/jquery/jquery"
    underscore: "lib/underscore/underscore"
    backbone: "lib/backbone/backbone"
    text: "lib/require/text"
    templates: "../templates"
  }
}

require [ 'app']
, (App) ->
  App.initialize()
  return