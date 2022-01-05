require('dotenv').config();
const path = require('path');
const express = require('express');
const session = require('express-session');
const router = require('./API/Routes/router');
//const mysql = require('mysql');
const app = express();
const port = process.env.PORT || 3000;

app.use('/css', express.static(path.join(__dirname+'/API/Views/css')));
app.use('/media', express.static(path.join(__dirname+'/media')));
app.use(express.urlencoded({ extended: true }));

app.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));


app.use(function(req,res,next){
    global.loggedIN = false;
    global.passwordError = "";
    next();
});
app.use('/', router);

app.listen(port, ()=>{
    console.log(`\nServer listening on port ${port}...`);
});
