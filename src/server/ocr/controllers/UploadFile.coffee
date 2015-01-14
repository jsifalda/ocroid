Promise = require 'bluebird'
OcrProcessor = require '../lib/OcrProcessor'

module.exports = (req, res) ->

	if req.files

		processor = new OcrProcessor

		promises = []

		for name, file of req.files

			console.log '-------------'
			console.log 'proccess file', name, file

			promises.push new Promise (resolve, reject) ->
				
				processor.process file.path, ['ces', 'eng']
				.then (text) ->

					resolve {
						text : text
						name : file.originalFilename
					}

				.catch (error) ->

					reject error

		Promise.all promises
		.then (results) ->

			response = {
				textes : []
				result : {}
			}

			for result in results

				response.textes.push result.text
				response.result[result.name] = result.text

			res.send response
