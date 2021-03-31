// Sheltered Shelf on Heroku app
const express = require("express");
const app = express();
const path = require('path');
const axios = require('axios');
require('dotenv').config();
const { Pool } = require("pg");
// const db_url = process.env.DATABASE_URL;

const { response } = require("express");
const PORT = process.env.PORT || 5000
process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0"
const connectionString = process.env.DATABASE_URL || "postgres://project2user:project2@localhost:5432/project2";
const pool = new Pool({
    connectionString: connectionString,
    ssl: {
        rejectUnauthorized: false
    }
});
const bowController = require("./controllers/getbows.js");

app.use(express.static(__dirname + '/public'));
app.use(express.urlencoded({extended:true}));
app.use(express.json());
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.get('/home', (req, res) => res.render('pages/index'));
app.get('/allbows', bowController.getAllBows);
app.post('/search', bowController.searchBows);
// app.post('/save', bowController.saveBows);
app.listen(PORT, () => console.log(`Listening on ${PORT}`));





