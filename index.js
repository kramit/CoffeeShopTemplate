const app = require('express')();

app.get('/', (req, res ) => {
    res.sendFile(__dirname + '/Index.html') 
}

app.use(express.static('public'));

);

const port = process.env.PORT || 8080;

app.listen(port, () => console.log(`app listening on http://localhost:${port}`) );
