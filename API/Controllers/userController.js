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

exports.users = (req, res)=>{
    if (req.session.loggedin) {
        loggedIN = true;
    } else {
        loggedIN = false;
    }
    db.query(`SELECT * FROM users`, (err, results)=>{
        if (err) throw err;
        ejs.renderFile('./API/Views/app/users.ejs', {results}, (err, data)=>{
            if (err) throw err;
            res.send(data);
        });
    });
}

exports.newuser = (req, res)=>{
    render(req,res,"user");
}

exports.adduser = (req,res)=> {
    var name = req.body.name,
    email = req.body.email,
    pwd1 = req.body.pwd1,
    pwd2 = req.body.pwd2;

    if (pwd1 != pwd2) {
        res.send('A megadott jelszavak nem egyeznek!');
    } else {
        db.query(`SELECT ID FROM users WHERE email='${email}'`, (err, results)=>{
            if (err) throw err;
            if (results.length > 0)
            {
                res.send('Ez az e-mail cím már regisztrált!');
            }
            else
            {
                db.query(`INSERT INTO users VALUES(null, '${name}', '${email}', '${pwd1}')`, (err)=>{
                    if (err) throw err;
                });
                res.redirect('/users');
            }
        });
    }
}

exports.deluser = (req, res)=>{
    var ID = req.params.id;
    db.query(`SELECT * FROM users`, (err, results)=>{
        if (err) throw err;
        if (results.length < 2) {
            res.redirect('/users');
        } else {
            db.query(`DELETE FROM users WHERE users.id = '${ID}'`, (err)=>{
            if (err) throw err;
                res.redirect('/users');
            });
        }
    });
 }

exports.usermod = (req, res)=>{
    var ID = req.params.id;
    if (req.session.loggedin) {
        loggedIN = true;
    } else {
        loggedIN = false;
    }
    db.query(`SELECT * FROM users WHERE users.id = ${ID}`, (err,results)=>{
        if (err) throw err;
        ejs.renderFile('./API/Views/app/usermod.ejs', {results}, (err, data)=>{
            if (err) throw err;
            res.send(data);
        });
    });
}

exports.moduser = (req, res)=>{
    var ID = req.params.id,
    name = req.body.name,
    email = req.body.email,
    pwd1 = req.body.pwd1,
    pwd2 = req.body.pwd2;
    if (pwd1 != pwd2) {
        res.send('A megadott jelszavak nem egyeznek!');
    } else {
    db.query(`UPDATE users 
        SET name = '${name}',
        email = '${email}',
        password = '${pwd1}'
        WHERE users.id = '${ID}'`, (err)=>{
        if (err) throw err;
    });
    res.redirect('/users');
    }
}