const express = require('express');
const app = express();
app.use(express.urlencoded({ extended: true }));

const router = express.Router();
const appCtrl = require('../Controllers/appController');
const userCtrl = require('../Controllers/userController');
const customerCtrl = require('../Controllers/customerController');
const rentalCtrl = require('../Controllers/rentalController');
const vehicleCtrl = require('../Controllers/vehicleController');

router.get('/', appCtrl.welcome);
router.get('/main', appCtrl.main);
router.get('/contacts', appCtrl.contacts);
router.get('/login', appCtrl.login);
router.get('/logout', appCtrl.logout);
router.post('/auth', appCtrl.auth);

router.get('/users', userCtrl.users);
router.get('/adduser', userCtrl.newuser);
router.post('/adduser', userCtrl.adduser);
router.post('/deluser/:id', userCtrl.deluser);
router.get('/usermod/:id', userCtrl.usermod);
router.post('/usermod/:id', userCtrl.moduser);

router.get('/customers', customerCtrl.customers);
router.get('/addcustomer', customerCtrl.newcustomer);
router.post('/addcustomer', customerCtrl.addcustomer);
router.post('/delcustomer/:id', customerCtrl.delcustomer);
router.get('/customermod/:id', customerCtrl.customermod);
router.post('/customermod/:id', customerCtrl.modcustomer);

router.get('/vehicles', vehicleCtrl.vehicles);

router.get('/rentals', rentalCtrl.rentals);
router.get('/balance', rentalCtrl.balance);

module.exports = router;
