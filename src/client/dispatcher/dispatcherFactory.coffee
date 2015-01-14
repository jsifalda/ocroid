Fluxxor = require 'fluxxor'

TextesStore = require '../components/textes/stores/TextesStore'
UploaderStore = require '../components/uploader/stores/UploaderStore'

actions = [
  require '../components/textes/actions'
  require '../components/uploader/actions'
]

module.exports = {

  create: () ->
    
    builtStores = {

      TextesStore : new TextesStore
      UploaderStore: new UploaderStore

    }

    builtActions = {}

    for action in actions
      for actionName, actionHandler of action
        builtActions[actionName] = actionHandler

    flux = new Fluxxor.Flux builtStores, builtActions

    flux.on "dispatch", (type, payload) ->
      console.log "[Dispatch]", type, payload  if console and console.log

    return flux
}
