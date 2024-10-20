const http = require("http");

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/plain");
  res.end("Hello Goldbach from @YourName\n");
});

server.listen(11000, () => {
  console.log("Server running at port 11000");
});
