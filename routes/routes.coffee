DbData = require "../configs/db-connection";

routes = (app) ->
	app.post('/createPost', (req, res) =>
		postId = if req.body then req.body.id else 1;
		res.send 'crear blog';
	);

	app.put('/updatePost', (req, res) =>
		postId = if req.body then req.body.id else 1;
		res.send 'actualizar... ';
	);
	app.delete('/deletePost', (req, res) =>
		postId = if req.body then req.body.id else 1;
		res.send 'borrar... ';
	);
	app.get('/getPost', (req, res) =>
		dbCommand = new DbData;
		db = 'mongodb://localhost:27017/travels';
		collection = 'users';
		dbCommand.getData(db, collection).then (response) ->
			res.send {success:true,content:response};
		.catch (error) ->
			res.send {success:false,content:error};
	);


module.exports = routes