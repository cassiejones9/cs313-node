// Sheltered Shelf on Heroku app
const express = require("express");
const app = express();
const path = require('path');
const { Pool } = require("pg");
const PORT = process.env.PORT || 5000

const connectionString = process.env.DATABASE_URL || "postgres://project2user:project2@localhost:5432/project2";
const pool = new Pool({connectionString: connectionString,
// ssl: {
//     rejectUnauthorized: false
// }
});

app.use(express.static(__dirname + '/public'))
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'ejs')
app.get('/home', (req, res) => res.render('pages/index'))
app.get('/findbows', getBows);
app.listen(PORT, () => console.log(`Listening on ${PORT}`))


function getBows(req, res) {
    // console.log("into the getBows function")
    const bowtype = req.query.bowtype;
    // console.log("Retrieving data with bowtype: ", bowtype);
    getBowsFromDb(bowtype, function(err, result){
        // console.log("into the getBowsFromDb function with result:" + JSON.stringify(result.rows));
        if (err || result == null) {
            console.log(err);
            res.status(500).json({success: false, data: err});
        }
        else {
            // console.log("This is my result: \n" + JSON.stringify(result));
            // console.log("This is the response: \n" + res);
            const items = result;
            var str = JSON.stringify(items);            
            res.render("pages/results", { answer: items, type: bowtype});
        }
    });    
}

function getBowsFromDb (bowtype, callback) {
    // console.log("getting bow with bowtype: ", bowtype);
    var sql = "SELECT name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url FROM " + bowtype;
    // console.log(sql);
    // var params = [bowtype];
    pool.connect();
    pool.query(sql, function (err, result) {
        if (err) {
            console.log("An error occured retrieveing from the database");
            console.log(err);
            callback(err, null);
        }
        // console.log("Found DB result: " + JSON.stringify(result.rows));
        callback(null, result.rows);
    });
}