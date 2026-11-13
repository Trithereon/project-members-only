const pool = require("./pool");

async function getMessages() {
  const SQL = `
    SELECT m.id, m.title, m.text, m.created_at, u.username
    FROM messages AS m 
    INNER JOIN users AS u
    ON m.author_id = u.id
    ORDER BY created_at DESC`;
  const { rows } = await pool.query(SQL);
  return rows;
}

async function signUp(credentials) {
  const SQL = `
    INSERT INTO users(firstname, lastname, username, password)
    VALUES ($1, $2, $3, $4)
    RETURNING *`;

  const { firstname, lastname, username, hashedPassword } = credentials;
  const { rows } = await pool.query(SQL, [
    firstname,
    lastname,
    username,
    hashedPassword,
  ]);

  const [user] = rows;
  return user;
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

async function promoteToAdmin(id) {
  const SQL = `
    UPDATE users
    SET admin_status = true, membership_status = true
    WHERE id = $1`;
  return await pool.query(SQL, [id]);
}

async function getUserByUsername(username) {
  const SQL = `
  SELECT * FROM users WHERE username = $1`;
  const { rows } = await pool.query(SQL, [username]);
  const [user] = rows;
  return user;
}

async function getUserById(id) {
  const SQL = `
  SELECT * FROM users WHERE id = $1`;
  const { rows } = await pool.query(SQL, [id]);
  const [user] = rows;
  return user;
}

async function createMessage(data) {
  const SQL = `
  INSERT INTO messages(title, text, author_id)
  VALUES ($1, $2, $3)`;
  const { title, text, id } = data;
  await pool.query(SQL, [title, text, id]);
}

module.exports = {
  getMessages,
  isUsernameTaken,
  signUp,
  deleteMessage,
  promoteToMember,
  promoteToAdmin,
  getUserByUsername,
  getUserById,
  createMessage,
};
