const ejs = require('ejs');
const db = require('../Models/dbModel');

function render(req,res,page) { 
    if (req.session.loggedin) {
		loggedIN = true;
    } else {
        loggedIN = false;
	}
    ejs.renderFile(`./API/Views/app/${page}.ejs`, (err, data)=>{
        if (err) throw err;
        res.send(data);
    });
}

exports.main = (req, res)=>{
    render(req,res,"main");
}


exports.welcome = (req, res)=>{
    render(req,res,"wellcome");
}

exports.contacts = (req, res)=>{
    render(req,res,"contacts");
}

exports.login = (req, res)=>{
    render(req,res,"loginform");
}

exports.logout = (req, res)=>{
    loggedIN = false;
    req.session.destroy();
    res.redirect('/');
}

exports.auth = (req, res)=>{
    var username = req.body.username;
	var password = req.body.password;
    if (username && password) {
		db.query('SELECT * FROM users WHERE name = ? AND password = ?', [username, password], (err, results)=> {
			if (err) throw err;
            if (results.length > 0) {
				req.session.loggedin = true;
				req.session.username = username;
                passwordError = "";
                res.redirect('/customers');
            } else {
                passwordError = "Incorrect Username and/or Password !";
                render(req,res,"loginform");
			}			
		});
	} else {
        passwordError = "Please enter Username and Password !";
        render(req,res,"loginform");
	}
}