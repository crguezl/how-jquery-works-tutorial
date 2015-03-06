var express = require('express')
var app = express()
var path = require('path');

app.use(express.static('public'));

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.get('/', function (req, res) {
  //res.send('Hello World!')
  res.render('index', { title: 'Express' });
})

/*
 var router = express.Router();
  module.exports = router; 
*/
app.get('/chuchu', function (req, res) {
  console.log(req.query);
  res.send('{"answer": "Server responds: hello world!"}')
})

/*
get '/chuchu' do
  pp env
  p params[:nombres]
  if request.xhr? # is an ajax request
   %q{{"answer": "Server responds: hello world!"}}
  else 
    erb :tutu
  end
end
*/

var server = app.listen(3000, function () {

  var host = server.address().address
  var port = server.address().port

  console.log('Example app listening at http://%s:%s', host, port)

})
