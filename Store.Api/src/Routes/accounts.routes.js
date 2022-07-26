const { Router } = require('express');
// const { validateToken }  = require('../Middlewares/ValidateToken');
const { getAccuntById, submitSales } = require('../Controller/AccountsController');

const router = Router();

router.get('/accounts/get-account-by-id', getAccuntById );
router.get('/accounts/submit-sales', submitSales );

module.exports = router;