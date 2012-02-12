var app, express, routes;

routes = {};

express = require("express");

routes.main = require("./app/routes/index");

routes.api = require("./app/routes/api");

app = module.exports = express.createServer();

app.configure(function() {
  app.set('views', __dirname + '/app/views');
  app.set('view engine', 'jade');
  app.use(express.bodyParser());
  app.use(express.methodOverride());
  app.use(express.cookieParser());
  app.use(express.session({
    secret: 'This is a secret!!'
  }));
  app.use(app.router);
  app.use(express.static(__dirname + '/public'));
  app.use((require("stylus")).middleware({
    src: __dirname + "/public"
  }));
});

app.configure('development', function() {
  app.use(express.errorHandler({
    dumpExceptions: true,
    showStack: true
  }));
});

app.configure('production', function() {
  app.use(express.errorHandler());
});

app.get('/', routes.main.index);

app.get('/api', routes.api.testdata);

app.listen(3000);

console.log("Express server listening on port %d in %s mode", app.address().port, app.settings.env);
