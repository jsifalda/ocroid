RiotControl = require 'riot-control'

FileInput = (self) ->

  self.test = 'ahoj'

  self.value = null

  self.onChange = (e) ->

    if e.target.files and e.target.files.length

      for file in e.target.files

        RiotControl.trigger 'addFile', file

  RiotControl.on 'formSubmit', () ->

    console.log 'on form submit'

    self.value = ''
    self.test = 'ahoj 2'
    self.update()


module.exports = FileInput
