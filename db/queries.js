const pool = require("./pool");

async function getMessages() {
  const SQL = `SELECT * FROM messages ORDER BY created_at ASC`;
  const { rows } = await pool.query(SQL);
  return rows;
}

async function signUp(user) {
  const SQL = `
  INSERT INTO users(firstname, lastname, username, password)
  VALUES ($1, $2, $3, $4)`;

  return await pool.query(SQL, [
    user.firstname,
    user.lastname,
    user.username,
    user.password,
  ]);
}

async function deleteMessage(id) {
  const SQL = `DELETE FROM messages WHERE id = $1`;
  return await pool.query(SQL, [id]);
}

module.exports = {
  getMessages,
  signUp,
  deleteMessage,
};
