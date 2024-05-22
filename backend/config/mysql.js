const Sequelize = require('sequelize');


const sequelize = new Sequelize(process.env.DATABASE, process.env.DB_USER, process.env.DB_PASS, {
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  dialect: 'mysql',
});

const dbConnect = async () => {
  try {
    await sequelize.authenticate();
    console.log('info', 'Connection has been established successfully.');
  } catch (err) {
    console.log('error', 'Unable to connect to the database:', err);
  }
};


module.exports = { dbConnect, sequelize };
