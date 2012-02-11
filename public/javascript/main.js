
require.config({
  paths: {
    jQuery: "libs/jquery/jquery-wrapper",
    Underscore: "libs/underscore/underscore-wrapper",
    Backbone: "libs/backbone/backbone-wrapper",
    Router: "app/routes/router",
    Models: "app/models",
    Views: "app/views",
    Collections: "app/collections"
  }
});

require(['app', 'order!libs/jquery/jquery', 'order!libs/underscore/underscore', 'order!libs/backbone/backbone'], function(App) {
  App.initialize();
});
