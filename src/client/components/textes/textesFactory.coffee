Fluxxor = require 'fluxxor'

actions = require './actions'

TextesStore = require './stores/TextesStore'

module.exports = {

	createFlux : () ->

		stores = {
			TextesStore : new TextesStore
		}

		flux = new Fluxxor.Flux stores, actions

		flux.on "dispatch", (type, payload) ->
			console.log "[Dispatch]", type, payload  if console and console.log

		return flux
}
