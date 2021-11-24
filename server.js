const http = require('http');
const url = require('url');
const mysql = require('mysql'); 

let con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Passw0rd",
    database: "fctimo"
  });

const requestListener = function (req, res) {
    console.log(req.url)
    var urlData = url.parse(req.url, true);

    if (urlData.pathname == "/players") {
        let sql = "SELECT * FROM players;"
        let html = "";
        let form = '<form action="/players/save" method="GET">'
        form += '<input name="name" />'
        form += '<button>Add player</button>'
        form += '</form>'
        con.query(sql, function (err, result) {
            if (err) html += err;
            for(let i=0; i<result.length; i++)
                html += '<li>'+result[i].name+'</li>'

            res.writeHead(200);
            res.end('<html><body>'+form+'<h2>Players</h2>'+html+'</body></html>', { 'Content-Type': 'text/html' });
        });
        return;
    }

    if (urlData.pathname == "/players/save" && urlData.query.name) {
        let escapedData = urlData.query.name.replace("'","''")
        let sql = "INSERT INTO players (name) VALUES ('"+escapedData +"');"
        con.query(sql, function (err, result) {
            if (err) throw err;
            console.log("1 record inserted");
            res.writeHead(302, {
                'Location': '/players'
            });
            res.end();
        });
        return;
    }

    res.writeHead(302, {
        'Location': '/players'
    });
    res.end();
}

con.connect(function(err) {
if (err) throw err;
    console.log("Connected to database!");
    const server = http.createServer(requestListener);
    server.listen(8080);
});