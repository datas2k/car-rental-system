const ejs = require('ejs');
const db = require('../Models/dbModel');

function render(req,res,page){ 
    if (req.session.loggedin) {
		loggedIN = true;
    } else {
        loggedIN = false;
	}
    ejs.renderFile(`./API/Views/rentals/${page}.ejs`, (err, data)=>{
        if (err) throw err;
        res.send(data);
    });
}

exports.rentals = (req, res)=>{
    render(req,res,"rentals");
}

exports.balance = (req, res)=>{
    render(req,res,"balance");
}
