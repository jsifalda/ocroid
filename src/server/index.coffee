jade = require 'jade'
bodyParser = require "body-parser"
multipart = require 'connect-multiparty'

ocr = require './ocr/app'

paths = {
  root: __dirname + '/../..'
}

paths.src = paths.root + '/src'
paths.templates = paths.src + '/server/templates'
paths.public = paths.root + '/dist/public'

express = require("express")
app = express()

app.set 'view engine', 'jade'
app.set 'views', paths.templates

app.set 'port', (if process.env.PORT then process.env.PORT else 8080)

app.use multipart()
app.use bodyParser.urlencoded({
  extended: false,
  limit: '7mb',
  parameterLimit: 10000
})
app.use bodyParser.json({limit: '7mb'})
app.use express.static(paths.public)

app.use ocr

app.get "/", (req, res) ->
  res.render 'index', {
    config:
      env: 'development'
  }

server = app.listen app.get('port'), ->
  host = server.address().address
  port = server.address().port

  console.log "Example app listening at http://%s:%s", host, port
