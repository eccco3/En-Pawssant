import express from 'express';
const app = express();
const PORT = 8000;
const HOST = '0.0.0.0';

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(PORT, HOST, () => {
  return console.log(`Express is listening at http://HOST:${PORT}`);
});