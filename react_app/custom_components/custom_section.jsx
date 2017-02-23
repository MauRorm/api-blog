import React, {Component, PropTypes} from 'react';
import ReactDOM from 'react-dom';
import CustomDiv from './custom_div.jsx';
import ClientRequest from './request-client.js';

const customState = {
	dataArray: []
};

export default class CustomSection extends Component {

	constructor(props) {
		super(props);
		this.state = customState;
	}

   componentDidMount() {
		let clientRequest = new ClientRequest();
		clientRequest.getRequest().then( response => {
			console.log(response.content);
			const dataArray = response.content.map(obj => obj);
			this.setState({ dataArray });
		}).catch( error => {
		});
   }

	render() {
		return (
			<section>
				{
					this.state.dataArray.map((item, index) => {
						return <CustomDiv
							key = {index}
							author = {item.author}
							date = {item.date}
							desc = {item.desc}
							message = {item.message}
							thumbnail = {item.thumbnail}
							title = {item.title}
						/>;
					})
				}
			</section>
		)
	}
}