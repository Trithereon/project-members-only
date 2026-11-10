#! /usr/bin/env node
const fs = require("node:fs/promises");
const path = require("node:path");
const { Client } = require("pg");

const read = (file) => fs.readFile(path.join(__dirname, file), "utf8");

async function main() {
  console.log("Seeding database...");
  const client = new Client({
    connectionString: `postgres://${process.env.DB_USER}:${process.env.DB_PASS}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_NAME}`,
  });
  await client.connect();

  // Reset all tables
  await client.query("DROP SCHEMA public CASCADE");
  await client.query("CREATE SCHEMA public");

  // Populate
  await client.query(await read("schema.sql"));
  await client.query(await read("seed.sql"));
  console.log("Seeding complete.");
  await client.end();
}

main();
