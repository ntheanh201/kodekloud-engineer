'use strict';

const express = require('express');

// Constants
const PORT = 8087;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
    res.send('Welcome to xFusionCorp Industries!');
});

app.listen(PORT, HOST);