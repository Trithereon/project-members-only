const pool = require("./pool");

async function getPantheons() {
  const SQL = `SELECT * FROM pantheons ORDER BY id ASC`;
  const { rows } = await pool.query(SQL);
  return rows;
}

module.exports = {
  getPantheons,
};
