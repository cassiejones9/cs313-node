const { Pool } = require('pg');
const db_url = process.env.DATABASE_URL;
const pool = new Pool({ connectionString: db_url });
// const connectionString = process.env.DATABASE_URL || "postgres://project2user:project2@localhost:5432/project2";

function getAllBows(req, res) {
    var sql = "SELECT name, drawWeight, drawLength, massWeight, speed, axle2axle, level, color, url FROM recurve UNION ALL SELECT name, drawWeight, drawLength, massWeight, speed, axle2axle, level, color, url FROM compound;";
    // var params = [type];

    pool.query(sql, function (err, db_results) {
        if (err) {
            throw err;
        } else {
            console.log("Back from the DB with : " + db_results);
            var results = {
                success: true,
                list: db_results.rows
            };
            res.json(results);
        }
    });
}

function searchBows(req, res) {
    console.log("made it to search the DB for bowtype");
    const bowtype = req.body.bowtype;
    console.log(bowtype + " is the bowtype");
    searchBowsQuery(bowtype, (err, result) => {
        if (err || result == null || result.length == 0) {
            res.status(500).json({ success: false, data: err });
            console.log("Error");
        } else {
            const products = result;
            console.log(products);
            params = result;
            res.status(200).json(products);
        }
    })

}
function searchBowsQuery(bowtype, callback) {
    console.log("into the SearchBowsQuery getting items from DB");
    const sql = "SELECT name, drawWeight, drawLength, massWeight, speed, axle2axle, level, color, url FROM " + bowtype + ";";
    console.log(bowtype);
    params = [bowtype];
    pool.query(sql, params, function (err, db_results) {
        if (err) {
            callback(err, null);
        } 
        console.log("back from the DB with results: " + db_results);
        callback(null, db_results.rows);
        }
    )
}

module.exports = {
    getAllBows: getAllBows,
    searchBows: searchBows,
    searchBowsQuery: searchBowsQuery
}