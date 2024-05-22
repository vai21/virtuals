const express = require('express');
const { getUserRecommendation } = require('../controllers/users');

const router = express.Router();

router.post('/api/user/recommendation', getUserRecommendation);

module.exports = router
