var express = require('express');
var app = express();
var fs = require("fs");

const FILE = "data/questions.json"

app.get('/questions', function (req, res) {
    fs.readFile(__dirname + "/" + FILE, 'utf8', function (err, data) {
        console.log(data);
        res.end(data);
    });
})

app.get('/questions/:id', function (req, res) {
    fs.readFile(__dirname + "/" + FILE, 'utf8', function (err, data) {
        console.log(data);
        res.end(data);
    });
})


app.get('/random/:randCount', function (req, res) {
    let randomQuestions = {}
    fs.readFile(__dirname + "/" + FILE, 'utf8', function (err, data) {
        let randCount = req.params.randCount
        var questions = JSON.parse(data).questions;
        let questionKeys = Object.keys(questions);
        console.log(randCount)
        // TODO: ayni sorular geliyor
        //let randomSet = new Set()
        for (let i = 0; i < randCount; i++) {
            let randInt = Math.random() * questionKeys.length
            let randQ = questions[questionKeys[Math.floor(randInt)]]
            randomQuestions[i] = randQ
        }
        //console.log(randomQuestions)
        res.end(JSON.stringify(randomQuestions));
    });
})


var server = app.listen(8081, function () {
    var host = server.address().address
    var port = server.address().port
    console.log("Example app listening at http://%s:%s", host, port)
})
