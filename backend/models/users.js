const Sequelize = require('sequelize');
const { sequelize } = require('../config/mysql');

const Users = sequelize.define('users', {
  // attributes
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true
  },
  name: {
    type: Sequelize.STRING,
  },
  age: {
    type: Sequelize.INTEGER,
  },
  gender: {
    type: Sequelize.STRING,
  },
  location: {
    type: Sequelize.STRING,
  },
  university: {
    type: Sequelize.STRING,
  },
}, {
  freezeTableName: true,
  timestamps: false,
});

module.exports = Users;
