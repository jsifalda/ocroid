riot = require 'riot'
RiotControl = require 'riot-control'

TextesStore = () ->

  @textes = []

  riot.observable @

  @on 'addText', (text) =>

    @textes.push text

    RiotControl.trigger 'textesUpdated', @textes


module.exports = TextesStore
