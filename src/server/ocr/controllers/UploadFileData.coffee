Promise = require 'bluebird'
fs = require 'fs'
OcrProcessor = require '../lib/OcrProcessor'

module.exports = (req, res) ->

	regex = /^data:.+\/(.+);base64,(.*)$/

	if req.body and req.body.data

		matches = req.body.data.match(regex);
		ext = matches[1];
		data = matches[2];

		buffer = new Buffer(data, 'base64');

		fileName = 'data.' + ext
		path = process.env.TMPDIR + fileName

		console.log 'path', path
		
		fs.writeFile path, buffer, (error) ->

			if !error

				processor = new OcrProcessor

				processor.process path, ['ces', 'eng']
				.then (text) ->

					res.send {
						textes : [text]
					}

				.catch (error) ->

					res.send {
						errors : [error]
					}

			else

				res.send {
					errors : [error]
				}
