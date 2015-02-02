RiotControl = require 'riot-control'

TextList = (self) ->

  self.textes = []

  RiotControl.on 'textesUpdated', (textes) ->

    console.log 'textesUpdated', textes

    self.textes = textes
    self.update()


module.exports = TextList
