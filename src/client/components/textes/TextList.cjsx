React = require 'React'
Fluxxor = require 'fluxxor'

TextItem = require './components/TextItem'

TextList = React.createClass {

	mixins : [Fluxxor.FluxMixin(React), Fluxxor.StoreWatchMixin('TextesStore')]

	getStateFromFlux : () ->

		return @getFlux().store("TextesStore").getState()

	render : () ->

		<div className='feature-list'>
			<div className='row'>
				<div className='12u'>
					<section>
						{<TextItem text=text /> for text in @state.textes}
					</section>
				</div>
			</div>
		</div>
	
}

module.exports = TextList
