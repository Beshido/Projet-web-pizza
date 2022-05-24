const { appendFile } = require('fs');
const { createPool, Client } = require('pg');

const client = new Client({
    host: "localhost",
    user: "postgres",
    port: 5432,
    password: "admin",
    database: "db"
})

client.connect();

let menu;
let pizza;
let entrees;
let desserts;
let boissons;
let ingredients;


client.query('SELECT * FROM menu', (err, res) => {
    if (err) {
        console.log(res.message)
    } else {
        menu = res.rows;
    }
    //client.end();
})

client.query('SELECT * FROM pizza', (err, res) => {
    if (err) {
        console.log(res.message)
    } else {
        pizza = res.rows;
    }
    //client.end();
})

client.query('SELECT * FROM entree', (err, res) => {
    if (err) {
        console.log(res.message)
    } else {
        entrees = res.rows;
    }
    //client.end();
})

client.query('SELECT * FROM desserts', (err, res) => {
    if (err) {
        console.log(res.message)
    } else {
        desserts = res.rows;
    }
    //client.end();
})

client.query('SELECT * FROM boissons', (err, res) => {
    if (err) {
        console.log(res.message)
    } else {
        boissons = res.rows;
    }
    //client.end();
})

client.query('SELECT * FROM ingredients', (err, res) => {
    if (err) {
        console.log(res.message)
    } else {
        ingredients = res.rows;
    }
    //client.end();
})

// create app
const express = require('express');
const path = require('path');
const app = express();
app.set('view engine', 'ejs');
app.set('views', path.join('./views'));
app.use('/public/.', express.static('./public'));
app.use(express.static(__dirname + '/public'));

app.get('/', (req, res) => {
    res.render('./index.ejs', { menu: menu, pizza: pizza, entrees: entrees, desserts: desserts, boissons: boissons, ingredients: ingredients });
})

var server = app.listen(4000, function () {
    console.log('Port 4000')
});