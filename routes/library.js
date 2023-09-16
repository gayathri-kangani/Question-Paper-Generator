
var express = require('express');

var router = express.Router();

const conn = require('../database');

router.get("/",function(request, response, next){
	var query = "select * from unit1";

	conn.query(query, function(error, data){
		if(error){
			throw error;
		}
		else{
			response.render('library',{title: 'Qs Paper Generator Application', 
		action:'list', qsData:data});
		}
	});
});

module.exports = router;

