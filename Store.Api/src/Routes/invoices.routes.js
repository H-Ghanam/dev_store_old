const { Router } = require('express');
// const { validateToken }  = require('../Middlewares/ValidateToken');
const { get, save, close } = require('../Controller/InvoicesController');

const router = Router();

router.get('/invoices/get', get );
router.get('/invoices/save', save );
router.get('/invoices/close', close );

module.exports = router;