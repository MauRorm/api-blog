let request = require('request');

export default class ClientRequest{
	getRequest(){
		return new Promise((resolve, reject) => {
			request('http://localhost:3000/getPost', function (error, response, body) {
				if (!error && response.statusCode == 200) {
					resolve(JSON.parse(body));
				} else {
					reject(error);
				}
			})
		})
	}
}
