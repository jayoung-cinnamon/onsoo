var http = require('http');
var https = require('https');
var express = require('express');
var bodyParser = require('body-parser');
var fs = require('fs');
var app = express();
var router = require('./router/main')(app);



var options = {
    key: fs.readFileSync('fake-keys/key.pem'),
    cert: fs.readFileSync('fake-keys/cert.pem')
};

var portForHttp = 8787;
var portForHttps = 9001;

app.set('views', __dirname + '/view');
app.set('view engine', 'ejs');
app.engine('html', require('ejs').renderFile);

http.createServer(app).listen(portForHttp, function() {
  console.log("Http server listening on port [" + portForHttp + "]");
});

https.createServer(options, app).listen(portForHttps, function() {
  console.log("Https server listening on port [" + portForHttps + "]");
});