import React, {Component, PropTypes} from 'react';
import ReactDOM from 'react-dom';
import CustomHeader from './custom_header.jsx';

export default class CustomDiv extends Component{

	constructor(props) {
		super(props);
		this.eventHandler = this.eventHandler.bind(this);
	}

	eventHandler() {
		console.log("Onclick event");
	}

	render(){
		return (
			<div className="post-container">
				<CustomHeader textTitle = {this.props.title}/>
				<div className='reportData'>
					<h4 className="row-data">{this.props.author}</h4>
					<h5 className="row-data">{this.props.desc}</h5>
					<div className="row-data">{this.props.date}</div>
					<div className="row-data">{this.props.message}</div>
					<div className="row-data">{this.props.thumbnail}</div>
					<div className="image_description">
					</div>
				</div>
			</div>
		)
	}
}

CustomDiv.propTypes = {						//ClassName.propTypes
    title: React.PropTypes.string.isRequired	//propName: React.PropTypes.JsDataType.option
}