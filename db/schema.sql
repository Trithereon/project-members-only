CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  membership_status BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS messages (
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  author_id INTEGER NOT NULL REFERENCES users (id) ON DELETE CASCADE,
  title VARCHAR(180) NOT NULL,
  date TIMESTAMPTZ NOT NULL,
  text VARCHAR(800) NOT NULL
);

-- Adding this index speeds up queries involving author_id.
CREATE INDEX idx_messages_author_id ON messages (author_id);
