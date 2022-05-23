const {createPool, Client} = require('pg');

const client = new Client({
    host: "localhost",
    user : "postgres",
    port: 5432,
    password: "admin",
    database: "db"
})

client.connect();

client.query('SELECT * FROM pizza', (err, res) => {
    if(!err){
        console.log(res.rows)
    }else{
        console.log(err.message)
    }
    client.end();
})