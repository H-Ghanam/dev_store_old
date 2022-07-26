const { Router } = require('express');
// const { validateToken }  = require('../Middlewares/ValidateToken');
const { get, close } = require('../Controller/MoneyController');

const router = Router();

router.get('/money/get', get );
router.get('/money/close', close );

module.exports = router;