const express = require("express");
const app = express();
const path = require('path');
const { Pool } = require("pg");
const PORT = process.env.PORT || 5000

const connectionString = process.env.DATABASE_URL || "postgres://project2user:project2@localhost:5432/project2";
const pool = new Pool({connectionString: connectionString});

app.use(express.static('public'))
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'ejs')
app.get('/home', (req, res) => res.render('pages/index'))
app.get('/findbows', () => {
    var bows = getBows(req);
    res.render("pages/results", { answer: bows });
});

app.listen(PORT, () => console.log(`Listening on ${PORT}`))


function getBows(req, res) {
    console.log("into the getBows function")
    const bowtype = req.query.bowtype;
    console.log("Retrieving bows with bowtype: ", bowtype);
    getBowsFromDb(bowtype, function(err, result){
        console.log("into the getBowsFromDb function with result:", result)
        if (err || result == null || result.length < 1) {
            res.status(500).json({success: false, data: err});
        }
        else {
            res.json(result);
        }
    });    
}

function getBowsFromDb (bowtype, callback) {
    console.log("getting bow with bowtype: ", bowtype);
    var sql = "SELECT * FROM compound";
    var params = [bowtype];

    pool.query(sql, params, function (err, result) {
        if (err) {
            console.log("An error occured retrieveing from the database");
            console.log(err);
            callback(err, null);
        }
        console.log("Found DB result: " + JSON.stringify(result.rows));
        callback(null, result.rows);
    });
}