const ejs = require('ejs');
const db = require('../Models/dbModel');

function render(req,res,page){ 
    if (req.session.loggedin) {
		loggedIN = true;
    } else {
        loggedIN = false;
	}
    ejs.renderFile(`./API/Views/vehicles/${page}.ejs`, (err, data)=>{
        if (err) throw err;
        res.send(data);
    });
}

exports.vehicles = (req, res)=>{
    render(req,res,"vehicles");
}
