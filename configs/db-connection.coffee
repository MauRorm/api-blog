MongoClient = require('mongodb').MongoClient;

class DbData

	getData:(db, collection, criteria) ->
		criteriaDb = if criteria then criteria else {};
		return new Promise (resolve, reject) ->
			MongoClient.connect(db, (err, dataBase) ->
				if err
					reject err;
				dataBase.collection(collection).find(criteriaDb).toArray( (err, result) =>
					if err
						reject err;
					
					if result.length == 0
						reject 'Data not found';
					
					resolve result;
				);
			);

	setData:(db, collection, data) ->
		data = if data then data else {};
		return new Promise (resolve, reject) ->
			MongoClient.connect(db, (err, dataBase) ->
				if err
					reject err;
				dataBase.collection(collection).insert(data, (err, result) =>
					if err
						reject err;
					
					if result.length == 0
						reject 'Update data error';
					
					resolve result;
				);
			);

	updateData:(db, collection, data, criteria) ->
		data = if data then data else {};
		return new Promise (resolve, reject) ->
			MongoClient.connect(db, (err, dataBase) ->
				if err
					reject err;
				dataBase.collection(collection).update(data, criteria, (err, result) =>
					if err
						reject err;
					
					if result.length == 0
						reject 'Set data error';
					
					resolve result;
				);
			);

module.exports = DbData
