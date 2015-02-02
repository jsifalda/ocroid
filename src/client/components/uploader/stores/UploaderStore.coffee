riot = require 'riot'
RiotControl = require 'riot-control'

Uploader = require '../lib/Uploader'

UploaderStore = () ->

    @files = []
    
    riot.observable @

    @on 'formSubmit', () =>

      uploader = new Uploader '/ocr/v1/file'
      uploader.upload @files
      .then (res) =>
        
        if res and res.result
          for name, text of res.result

            console.log name, text

            RiotControl.trigger 'addText', {
              name: name
              text: text
            }
        
        @files = []

      .catch (error) ->
        console.log error

    @on 'addFile', (file) =>

      @files.push file

      console.log 'added file', @files

  
module.exports = UploaderStore
