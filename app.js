const cors = require('cors');
const path = require('path');
const morgan = require('morgan');
const express = require('express');

const app = express();

app.use(cors());
app.use(morgan('dev'));

app.use(express.static(path.join(__dirname, 'public')));

module.exports = app;