const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, Title, Image, Header, Wins, Losses FROM tbl_card";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { people: result });
    })
})

// this resolves to localhost:3000/anything (whatever you put after the slash in the location bar)
router.get('/:id', (req, res) => {
    console.log('hit a dynamic route!');
    console.log(req.params.id);

    let query = `SELECT * FROM tbl_bio WHERE sportID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); 
        res.json(result[0]);
    })
})

module.exports = router;