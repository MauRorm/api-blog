MongoClient = require('mongodb').MongoClient;

class DbData

	getData:(db, collection) ->
		criteriaDb = {};
		return new Promise (resolve, reject) ->
			MongoClient.connect(db, (err, dataBase) ->
				if err
					reject err;
				dataBase.collection(collection).find(criteriaDb).toArray( (err, result) =>
					if err
						reject err;
					
					if result.length == 0
						reject 'Results not found';
					
					resolve result;
				);
			);

	setData:(db, collection, criteria) ->
		return new Promise (resolve, reject) ->
			success = true
			if success
				resolve 'bien :)'
			else
				reject Error 'Error :('

module.exports = DbData
