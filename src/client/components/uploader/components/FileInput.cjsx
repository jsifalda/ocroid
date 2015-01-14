React = require 'React'
Fluxxor = require 'fluxxor'

FileInput = React.createClass {

  mixins : [Fluxxor.FluxMixin(React), Fluxxor.StoreWatchMixin('UploaderStore')]

  getStateFromFlux : () ->

    return @getFlux().store("UploaderStore").getState()

  getInitialState : () ->

    return {
      value : null
    }

  handleChange : (e) ->

    @getFlux().actions.addFiles e.target.files

  render : () ->

    <input type='file' name='image' accept='image/*' onChange=@handleChange value=@state.value />

}

module.exports = FileInput
