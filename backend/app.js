require('dotenv').config()

const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
const PORT = process.env.PORT || 3000;
const { dbConnect } = require('./config/mysql');

app.use(cors());
app.use(bodyParser.urlencoded({extended : false}));
app.use(bodyParser.json({limit: '10mb'}));
app.set('view engine', 'ejs');

/**
 * database
 */
dbConnect();


/**
 * Routes
 */
const users = require('./routers/users');

app.use(users);

/**
 * Server endpoints
 */
app.use('/', function(req, res) {
  res.send({
    serverTimeUtc: new Date(),
    message: 'success'
  })
})

/**
 * Start server
 */
app.listen(PORT, function() {
  console.log(`listening on ${PORT}`)
});
