React = require 'React'

TextItem = React.createClass {

	propTypes : {
		text : React.PropTypes.object.isRequired
	}

	render : () ->

		<div>
			<h3 className='icon fa-comment'>{@props.text.name}</h3>
			<p>{@props.text.text}</p>
		</div>
}

module.exports = TextItem
