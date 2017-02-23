DbData = require "../configs/db-connection";

routes = (app) ->
	app.post('/createPost', (req, res) =>
		postId = if req.body then req.body.id else 1;
		dbName = 'blogs';
		db = 'mongodb://localhost:27017/' + dbName;
		collection = 'blogs';
		data = {
			title:"titulo",
			desc:"Soy un post",
			message:"me gusto el dia de hoy",
			thumbnail:"lalalaal",
			author:"Mauricio",
			date:"12/12/2016"
		};
		dbCommand = new DbData;
		dbCommand.setData(db, collection, data).then (response) ->
			res.json {success:true,content:response};
		.catch (error) ->
			res.json {success:false, content:'Set data error'};
	);

	app.put('/updatePost', (req, res) =>
		postId = if req.body then req.body.id else 1;
		dbName = 'blogs';
		db = 'mongodb://localhost:27017/' + dbName;
		collection = 'blogs';
		data = {id:3,name:"JESS <3 <3 <3"};
		criteria = {id:2};
		dbCommand = new DbData;
		dbCommand.updateData(db, collection, data, criteria).then (response) ->
			res.json {success:true,content:response};
		.catch (error) ->
			res.json {success:false, content:'Set data error'};
	);

	app.delete('/deletePost', (req, res) =>
		postId = if req.body then req.body.id else 1;
		res.json 'borrar... ';
	);

	app.get('/getPost', (req, res) =>
		dbName = 'blogs';
		db = 'mongodb://localhost:27017/' + dbName;
		collection = 'blogs';
		dbCommand = new DbData;
		dbCommand.getData(db, collection).then (response) ->
			res.json {success:true, content:response};
		.catch (error) ->
			res.json {success:false, content:error};
	);

	app.get('/', (req, res) =>
		res.render 'index.html';
	);


module.exports = routes