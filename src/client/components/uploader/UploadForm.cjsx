React = require 'React'
Fluxxor = require 'fluxxor'

SubmitButton = require './components/SubmitButton'
FileInput = require './components/FileInput'

UploadForm = React.createClass {

	mixins : [Fluxxor.FluxMixin(React), Fluxxor.StoreWatchMixin('UploaderStore')]

	getStateFromFlux : () ->

		return @getFlux().store("UploaderStore").getState()

	getInitialState : () ->

		return {
			textarea : 
				value : ''
			input : 
				value : null
		}

	handleSubmit : (e) ->

		e.preventDefault()

		@getFlux().actions.formSubmit()
	
	
	render : () ->

		<div>
			<p>Upload image which you want to convert</p>
			
			<form onSubmit=@handleSubmit>
				
				<div className='row'>
					<div className='8u -3u'>
						<div className='row'>
							<div className='6u'>
								<FileInput value=@state.input.value />
							</div>
							<div className='3u'>
								<SubmitButton />
							</div>
						</div>
					</div>
				</div>
			</form>

		</div>

}

module.exports = UploadForm
