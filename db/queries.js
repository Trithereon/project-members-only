const pool = require("./pool");

async function getMessages() {
  const SQL = `
    SELECT * FROM messages ORDER BY created_at ASC`;
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
    user.hashedPassword,
  ]);
}

async function deleteMessage(id) {
  const SQL = `
    DELETE FROM messages WHERE id = $1`;
  return await pool.query(SQL, [id]);
}

async function isUsernameTaken(username) {
  const SQL = `
    SELECT EXISTS 
    (SELECT 1 FROM users WHERE username = $1) 
    AS exists`;
  const { rows } = await pool.query(SQL, [username]);
  const [isTaken] = rows;
  return isTaken.exists;
}

async function promoteToMember(id) {
  const SQL = `
    UPDATE users
    SET membership_status = true
    WHERE id = $1`;
  return await pool.query(SQL, [id]);
}

module.exports = {
  getMessages,
  isUsernameTaken,
  signUp,
  deleteMessage,
  promoteToMember,
};
