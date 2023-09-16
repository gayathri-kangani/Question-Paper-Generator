
var express = require('express');

var router = express.Router();

const conn = require('../database');

router.get("/",function(request, response, next){
	var query = "select * from unit1 order by level asc";

	conn.query(query, function(error, data){
		if(error){
			throw error;
		}
		else{
			response.render('unit1',{title: 'Qs Paper Generator Application', 
		action:'list', qsData:data});
		}
	});
});

router.post("/add", function(request, response, next){
	const { id, question, marks, co, level} = req.body;
	sql = "INSERT INTO selectedqs(id,question,marks, co,level) VALUES ('id','question','marks','co','level')"
	conn.query(sql,function(error, data){
		if(error){
			throw error;
		}
		else {
			
		}
	})

});

module.exports = router;

