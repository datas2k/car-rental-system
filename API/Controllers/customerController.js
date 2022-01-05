const ejs = require('ejs');
const db = require('../Models/dbModel');

function render(req,res,page) { 
    if (req.session.loggedin) {
		loggedIN = true;
    } else {
        loggedIN = false;
	}
    ejs.renderFile(`./API/Views/customers/${page}.ejs`, (err, data)=>{
        if (err) throw err;
        res.send(data);
    });
}

exports.customers = (req, res)=>{
    if (req.session.loggedin) {
        loggedIN = true;
    } else {
        loggedIN = false;
    }
    db.query(`SELECT * FROM customers`, (err, results)=>{
        if (err) throw err;
        ejs.renderFile('./API/Views/customers/customers.ejs', {results}, (err, data)=>{
            if (err) throw err;
            res.send(data);
        });
    });
}

exports.newcustomer = (req, res)=>{
    render(req,res,"customer");
}

exports.addcustomer = (req,res)=> {
    var name = req.body.name,
    id_number = req.body.id_number,
    address = req.body.address;
    db.query(`INSERT INTO customers VALUES(null, '${name}', '${id_number}', '${address}')`, (err)=>{
        if (err) throw err;
    });
    res.redirect('/customers');
}

exports.delcustomer = (req, res)=>{
    var ID = req.params.id;
    db.query(`DELETE FROM customers WHERE customers.id = '${ID}'`, (err)=>{
        if (err) throw err;
            res.redirect('/customers');
        });
 }

exports.customermod = (req, res)=>{
    var ID = req.params.id;
    if (req.session.loggedin) {
        loggedIN = true;
    } else {
        loggedIN = false;
    }
    db.query(`SELECT * FROM customers WHERE customers.id = ${ID}`, (err,results)=>{
        if (err) throw err;
        ejs.renderFile('./API/Views/customers/customermod.ejs', {results}, (err, data)=>{
            if (err) throw err;
            res.send(data);
        });
    });
}

exports.modcustomer = (req, res)=>{
    var  ID = req.params.id, 
    name = req.body.name,
    id_number = req.body.id_number,
    address = req.body.address;
    db.query(`UPDATE users 
        SET name = '${name}',
        id_number = '${id_number}',
        address = '${address}'
        WHERE customers.id = '${ID}'`, (err)=>{
        if (err) throw err;
    });
    res.redirect('/customers');
}