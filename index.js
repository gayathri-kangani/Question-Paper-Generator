const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const session = require('express-session');

const conn = require('./database');

app.set('views', './views');
app.set('view engine', 'ejs');
app.use(express.static('public'));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(session(
{
  secret:"2011",
  resave:false,
  saveUninitialized:false
}
));


  
  app.get('/', (req, res) => {
    res.render('login');
  });

  app.post('/login', (req, res) => {
    const { username, password } = req.body;
      req.session.username = username; // set username value in session
      res.redirect('/home'); // redirect to dashboard without passing any data
     
  });
  
  app.get('/home',(req,res)=>{
    if (req.session.username) {
      const username = req.session.username || null;
      res.render('home', { username });

    } else {
      res.redirect('/');
    }
  });
  
  // app.get('/unit1',(req,res)=>{
  //   if (req.session.username) {
  //     const username = req.session.username || null;
  //     const referer = req.headers.referer; // retrieve the URL of the page that sent the request
  //     response.redirect(referer,{username});

  //   } 
  // });
  
  app.get("/unit1",(request, response)=>{
    if (request.session.username) {
      const username = request.session.username || null;

    var sql = "select * from unit1 where co=1 order by level asc";
   
    conn.query(sql, (error, data) => {
      if(error){
        throw error;
      }
      else{
        response.render('unit1',{ qsData:data, username});
      }
    });
  }
  });

  app.get("/unit2",(request, response)=>{
    if (request.session.username) {
      const username = request.session.username || null;
    var sql = "select * from unit1 where co=2 order by level asc";
   
    conn.query(sql, (error, data) => {
      if(error){
        throw error;
      }
      else{
        response.render('unit2',{qsData:data , username});
      }
    });
  }
  });

  app.get("/unit3",(request, response)=>{
    if (request.session.username) {
      const username = request.session.username || null;
    var sql = "select * from unit1 where co=3 order by level asc";
   
    conn.query(sql, (error, data) => {
      if(error){
        throw error;
      }
      else{
        response.render('unit3',{qsData:data , username});
      }
    });
  }
  });

  app.get("/unit4",(request, response)=>{
    if (request.session.username) {
      const username = request.session.username || null;
    var sql = "select * from unit1 where co=4 order by level asc";
   
    conn.query(sql, (error, data) => {
      if(error){
        throw error;
      }
      else{
        response.render('unit4',{ qsData:data , username});
      }
    });
  }
  });

  app.get("/unit5",(request, response)=>{
    if (request.session.username) {
      const username = request.session.username || null;
    var sql = "select * from unit1 where co=5 order by level asc";
   
    conn.query(sql, (error, data) => {
      if(error){
        throw error;
      }
      else{
        response.render('unit5',{ qsData:data , username});
      }
    });
  }
  });

  //===================================== ADD ================================
  app.post("/add", (req, res) => {
    const { id1, question, marks, co, level } = req.body;
    const unit = req.query.unit; // retrieve the unit query parameter

    const sql = `
      INSERT INTO selectedqs
      (id, question, marks, co, level)
      VALUES (?, ?, ?, ?, ?)
    `;
  
    conn.query(sql, [id1, question, marks, co, level], function (error, data) {
      if (error) {
        throw error;
      } else {
        res.redirect(unit); // redirect to the appropriate page based on the unit query parameter
      }
    });
  });
  
  //===================================== DELETE ===================================
  app.get('/delete/:id', function(request, response, next){
    var id = request.params.id;  
    var query = `DELETE FROM selectedqs WHERE id = "${id}"`;
    conn.query(query, function(error, data){
      if(error)
      { throw error;}
      else{
        const referer = request.headers.referer; // retrieve the URL of the page that sent the request
      response.redirect(referer);
      }
    });
  });

  
  //===================================== QUESTION PAPER (RETRIVAL) =============================


  app.get('/questionpaper', function(req, res) {
    if (req.session.username) {
      const username = req.session.username || null;
    const query1 = "select * from selectedqs where co=1 order by level asc";
    const query2 = "select * from selectedqs where co=2 order by level asc";
    const query3 = "select * from selectedqs where co=3 order by level asc";
    const query4 = "select * from selectedqs where co=4 order by level asc";
    const query5 = "select * from selectedqs where co=5 order by level asc";
  
    let list = [];
  
    conn.query(query1, function(err, result1) {
      if (err) throw err;
      list = list.concat(result1);
  
      conn.query(query2, function(err, result2) {
        if (err) throw err;
        list = list.concat(result2);
  
        conn.query(query3, function(err, result3) {
          if (err) throw err;
          list = list.concat(result3);
  
          conn.query(query4, function(err, result4) {
            if (err) throw err;
            list = list.concat(result4);
  
            conn.query(query5, function(err, result5) {
              if (err) throw err;
              list = list.concat(result5);
  
              // Render to the same file with the data from all queries
              res.render('questionpaper', {
                data1: list.filter(q => q.co === 1),
                data2: list.filter(q => q.co === 2),
                data3: list.filter(q => q.co === 3),
                data4: list.filter(q => q.co === 4),
                data5: list.filter(q => q.co === 5),
                username
              });
            });
          });
        });
      });
    });
  }
  });
  
//===================================== LIBRARY =========================
  app.get('/library',(req,res)=>{
    if (req.session.username) {
      const username = req.session.username || null;
      res.render('library', { username });
    } 
  });
  app.get('/guidelines', (req, res) => {
    if (req.session.username) {
      const username = req.session.username || null;
      res.render('guidelines', { username });
    } 
  });

  app.get('/logout', (req, res) => {
    // Clear session data
    req.session.destroy();
    res.redirect("/");
  });

  
  // DELETE method
  app.delete('/users', (req, res) => {
    res.send('Got a DELETE request at /users');
  });
  

app.listen(2000,()=>console.log("Server is Running"));