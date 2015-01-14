constants = require './constants'

module.exports = {

	addFile : (file) ->

		@dispatch constants.ADD_FILE, {
			file : file
		}

	addFiles : (files) ->

		@dispatch constants.ADD_FILES, {
			files : files
		}

	clearFiles : () ->

		@dispatch constants.CLEAR_FILES, {}

	formSubmit : () ->

		@dispatch constants.FORM_SUBMIT, {}

}
