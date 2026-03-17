require('dotenv').config();

const express = require('express');
const { neon } = require('@neondatabase/serverless');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());
const PORT = process.env.PORT || 4242;

const sql = neon(process.env.DATABASE_URL);

// Route 1: Informations personnelles
app.get('/informations', async (req, res)=> {
  const result = await sql`SELECT * FROM informations`;
  res.json(result);
})

app.get('/competences', async (req, res) =>{
  const result = await sql `SELECT * FROM competences`;
  res.json(result);
})

app.get('/experiences', async (req, res) =>{
  const result = await sql `SELECT * FROM competences`;
  res.json(result);
})

app.get('/about', async (req, res) =>{
  const result = await sql `SELECT * FROM about`;
  res.json(result);
})

app.get('/contact', async (req, res) =>{
  const result = await sql `SELECT * FROM contact`;
  res.json(result);
})

app.get('/services', async (req, res) =>{
const result = await sql `SELECT * FROM services`;
 res.json(result);
})

app.get('/statistiques', async (req, res) =>{
  const result = await sql `SELECT * FROM  statistiques`;
  res.json(result);
})

app.get('/footer', async (req, res) => {
  const result = await sql `SELECT * FROM footer`;
  res.json(result);
})



app.listen(PORT, () => {
  console.log(`Listening to http://localhost:${PORT}`);
});