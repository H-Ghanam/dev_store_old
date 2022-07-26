const { Router } = require('express');
// const { validateToken }  = require('../Middlewares/ValidateToken');
const { start, login, isOnline, excBatch, closeApp } = require('../Controller/AppController');

const router = Router();

router.get('/app/start', start );
router.get('/app/login', login );
router.get('/app/is-online', isOnline );
router.get('/app/excute-batch', excBatch );
router.get('/app/close', closeApp );

module.exports = router;