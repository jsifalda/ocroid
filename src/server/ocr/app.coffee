express = require 'express'

controllers = require './controllers'
endpointsBuilder = require './endpoints'

app = express()
router = express.Router()

endpoints = endpointsBuilder controllers

for route, methods of endpoints

	route = router.route route

	for method, config of methods

		route[method](config.controller)

app.use '/ocr', router

module.exports = app
