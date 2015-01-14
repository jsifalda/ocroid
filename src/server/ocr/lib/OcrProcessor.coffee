nodecr = require "nodecr"
Promise = require 'bluebird'

class OcrProccessor

  process: (path, lang = 'eng') ->
    if lang instanceof Array
      lang = lang.join '+'

    return new Promise (resolve, reject) =>
      nodecr.process path, (err, text) ->
        if err

          reject err

        else
          resolve text

      , lang

module.exports = OcrProccessor
