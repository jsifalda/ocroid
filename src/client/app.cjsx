React = require 'React'

dispatcherFactory = require './dispatcher/dispatcherFactory'
dispatcher = dispatcherFactory.create()

UploadForm = require './components/uploader/UploadForm'

Application = React.createClass {

  render : () ->

    <UploadForm flux = dispatcher />
}

React.render <Application />, document.getElementById 'content'

TextList = require './components/textes/TextList'

React.render <TextList flux = dispatcher />, document.getElementById 'text-list'

