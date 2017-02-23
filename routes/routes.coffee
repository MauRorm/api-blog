routes = (app) ->
	app.post('/createPost', (req, res) =>
		postId = if req.body then req.body.id else 1;
		res.send 'crear... ' + postId;
	);
	app.put('/updatePost', (req, res) =>
		postId = if req.body then req.body.id else 1;
		res.send 'actualizar... ' + postId;
	);
	app.delete('/deletePost', (req, res) =>
		postId = if req.body then req.body.id else 1;
		res.send 'borrar... ' + postId;
	);
	app.get('/getPost', (req, res) =>
		res.send 'ver';
	);

module.exports = routes