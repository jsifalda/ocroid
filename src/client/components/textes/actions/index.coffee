constants = require './constants'

module.exports = {

  addText: (text) ->
    @dispatch constants.ADD_TEXT, {
      text: text
    }

}
