const { Op } = require('sequelize')
const { PAGING_LIMIT } = require('../helpers/constant');
const Users = require('../models/users');

const getUserRecommendationService = async (age, gender, location, university, interest) => {
  let ageQuery = {}
  if (gender === 'Male') {
    ageQuery = {
      [Op.lte]: age
    }
  } else if (gender === 'Female') {
    ageQuery = {
      [Op.gte]: age
    }
  }
  const result = await Users.findAndCountAll({
    where: {
      [Op.or]: [
        {
          age: {
            [Op.eq]: ageQuery
          },
        },
        {
          location: {
            [Op.eq]: location
          }
        },
        {
          university: {
            [Op.eq]: university
          }
        },
        {
          interest: {
            [Op.eq]: interest
          }
        }
      ]
    },
    order: [['age', 'ASC']],
    limit: PAGING_LIMIT,
  });
  return result;
};


module.exports = {
  getUserRecommendationService,
};
