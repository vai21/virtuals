const { successResponse, failedResponse } = require('../helpers/responses');
const { getUserRecommendationService } = require('../services/users');

const getUserRecommendation = async (req, res) => {
  try {
    const { gender, age, location, university, interest } = req.body;
    const response = await getUserRecommendationService(gender, age, location, university, interest);
    return res.json(successResponse(response));
  } catch (err) {
    console.log(err);
    return res.json(failedResponse(err.message));
  }
};

module.exports = { getUserRecommendation };
