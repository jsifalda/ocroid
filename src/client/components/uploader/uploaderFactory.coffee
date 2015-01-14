Fluxxor = require 'fluxxor'

stores = require './stores'
actions = require './actions'

module.exports = {

  createFlux: (TextesStore) ->
    buildStores = {

      UploaderStore: new stores.UploaderStore TextesStore

    }

    flux = new Fluxxor.Flux buildStores, actions

    flux.on "dispatch", (type, payload) ->
      console.log "[Dispatch]", type, payload  if console and console.log

    return flux
}
