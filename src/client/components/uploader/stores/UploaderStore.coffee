Fluxxor = require 'fluxxor'

constants = require '../actions/constants'

Uploader = require '../lib/Uploader'

UploaderStore = Fluxxor.createStore {

	initialize : (@Textes) ->

		@files = []
		
		@bindActions constants.ADD_FILE, @onAddFile,
								constants.ADD_FILES, @onAddFiles,
								constants.FORM_SUBMIT, @onFormSubmit

	onAddFiles : (payload) ->

		if payload.files and payload.files.length

			for file in payload.files

				@onAddFile {
					file : file
				}

	onClearFiles : () ->

		@files = []

		@emit 'change'

	onAddFile : (payload) ->

		@files.push payload.file

		@emit 'change'

	onFormSubmit : (payload) ->

		files = @files

		@onClearFiles()

		uploader = new Uploader '/ocr/v1/file'
		uploader.upload files
		.then (res) =>
			
			if res and res.result

				for name, text of res.result
					
					@Textes.actions.addText {
						name : name
						text : text
					}

		.catch (error) ->

			console.log error

		.finally () =>

			@emit 'change'

	getState : () ->

		return {

			files : @files
			textes : @textes

		}

}

module.exports = UploaderStore
