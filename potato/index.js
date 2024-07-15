import express from 'express';

const app = express();

const port = 3000;

app.get('/', (req, res) => {
    const timestamp = new Date().toISOString();
    console.log(`[${timestamp}] Someone accessed the potato`);
    res.send('I am a potato');
});

app.listen(port, () => {
    console.log(`Potato listening at http://localhost:${port}`);
});
