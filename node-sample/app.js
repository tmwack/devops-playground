var express = require('express');

var app = express();

app.get('/livecheck', function(req, res) {
    res.json('pong');
});

app.get('/', function(req, res) {
    console.log('log!');
    res.send('I\'m an endpoint!');
});

var port = 80;
app.listen(port, function() {
    console.log('started, listening on ' + port);
});