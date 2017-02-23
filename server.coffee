express = require "express";
app = express();
routes = require("./routes/routes")(app);

app.listen 3000
console.log 'Example app listening on port 3000!'
