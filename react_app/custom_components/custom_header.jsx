import React, {Component, PropTypes} from 'react';
import ReactDOM from 'react-dom';

/*	
	properties list
	-this.props.age
	-this.props.code
*/

export default class CustomHeader extends Component{

	constructor(props) {
		super(props);
		this.eventHandler = this.eventHandler.bind(this);
	}

	eventHandler() {
		console.log("Onclick event Header");
		alert("click en header");
	}

	render(){
		return (
			<h2 className = 'headerText' onClick = {this.eventHandler}>{this.props.textTitle}</h2>
		)
	}
}
