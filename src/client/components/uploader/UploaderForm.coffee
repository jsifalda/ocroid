RiotControl = require 'riot-control'

UploaderForm = (self) ->

  self.onSubmit = (e) ->

    e.preventDefault()

    RiotControl.trigger 'formSubmit'


module.exports = UploaderForm
