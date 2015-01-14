React = require 'React'

textesFactory = require './components/textes/textesFactory'
textes = textesFactory.createFlux()

uploaderFactory = require './components/uploader/uploaderFactory'
uploader = uploaderFactory.createFlux textes

UploadForm = require './components/uploader/UploadForm'

Application = React.createClass {

	render : () ->

		<UploadForm flux = uploader />
}

React.render <Application />, document.getElementById 'content'

TextList = require './components/textes/TextList'

React.render <TextList flux = textes />, document.getElementById 'text-list'

