express = require "express";
app = express();
app.set("view options", {layout: false});
app.use(express.static(__dirname + '/public'));
routes = require("./routes/routes")(app);

app.listen 3000
console.log 'Example app listening on port 3000!'
