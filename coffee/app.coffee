# --------------------
# Module dependencies.
# --------------------
routes = {}

express = require "express"

routes.main = require "./app/routes/index"

app = module.exports = express.createServer()


# -------------
# Configuration
# -------------
app.configure () ->
  app.set 'views', __dirname + '/app/views'
  app.set 'view engine', 'jade'

  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.cookieParser()
  app.use express.session {secret: 'This is a secret!!'}
  app.use app.router
  app.use express.static __dirname + '/public'
  app.use (require "stylus").middleware {src: __dirname + "/public"}
  return

app.configure 'development', () ->
  app.use express.errorHandler {dumpExceptions: true, showStack: true}
  return

app.configure 'production', () ->
  app.use express.errorHandler()
  return


# ------
# Routes
# ------
app.get '/', routes.main.index

app.listen 3000
console.log "Express server listening on port %d in %s mode", app.address().port, app.settings.env