Fluxxor = require 'fluxxor'

constants = require '../actions/constants'

TextesStore = Fluxxor.createStore {

  initialize: () ->
    @textes = []

    @bindActions constants.ADD_TEXT, @onAddText

  onAddText: (payload) ->
    @textes.push payload.text

    @emit 'change'

  getState: () ->
    return {
    textes: @textes
    }
}

module.exports = TextesStore
