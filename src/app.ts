import express from 'express';
const app = express();
const port = 8000;

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(port, "0.0.0.0", () => {
  return console.log(`Express is listening at http://localhost:${port}`);
});