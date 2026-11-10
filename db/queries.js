const pool = require("./pool");

async function getPantheons() {
  const SQL = `SELECT * FROM pantheons ORDER BY id ASC`;
  const { rows } = await pool.query(SQL);
  return rows;
}

async function getPantheon(id, name) {
  const SQL = `SELECT * FROM pantheons
                WHERE id = $1 AND name = $2`;
  const { rows } = await pool.query(SQL, [id, name]);
  return rows;
}

async function getPantheonById(id) {
  const SQL = `SELECT * FROM pantheons
                WHERE id = $1`;
  const { rows } = await pool.query(SQL, [id]);
  return rows;
}

async function getPantheonByName(name) {
  const SQL = `SELECT * FROM pantheons
                WHERE name = $1`;
  const { rows } = await pool.query(SQL, [name]);
  return rows;
}

async function getGods(pantheonId) {
  const SQL = `SELECT * FROM gods
                WHERE pantheon_id = $1 ORDER BY LOWER(name) ASC`;
  const { rows } = await pool.query(SQL, [pantheonId]);
  return rows;
}

async function getGod(id, name) {
  const SQL = `SELECT g.*, p.name AS p_name FROM gods AS g
                INNER JOIN pantheons AS p 
                  ON g.pantheon_id = p.id
                    WHERE g.id = $1 AND g.name = $2`;
  const { rows } = await pool.query(SQL, [id, name]);
  return rows;
}

async function getGodSymbols(god_id) {
  const SQL = `SELECT symbols.symbol, symbols.id FROM symbols
                INNER JOIN god_symbols
                  ON symbols.id = god_symbols.symbol_id
                    INNER JOIN gods
                      ON god_symbols.god_id = gods.id
                       WHERE gods.id = $1`;
  const { rows } = await pool.query(SQL, [god_id]);
  return rows;
}

async function getGodDomains(god_id) {
  const SQL = `SELECT domains.name, domains.id FROM domains
                INNER JOIN god_domains
                  ON domains.id = god_domains.domain_id
                    INNER JOIN gods
                      ON god_domains.god_id = gods.id
                        WHERE gods.id = $1`;
  const { rows } = await pool.query(SQL, [god_id]);
  return rows;
}

async function getDomainGods(domain_id) {
  const SQL = `SELECT g.id, g.name, p.name AS p_name FROM gods AS g
                INNER JOIN god_domains
                  ON g.id = god_domains.god_id
                    INNER JOIN domains AS d
                      ON d.id = god_domains.domain_id
                        INNER JOIN pantheons AS p
                          ON p.id = g.pantheon_id
                            WHERE d.id = $1`;
  const { rows } = await pool.query(SQL, [domain_id]);
  return rows;
}

async function getDomain(id, name) {
  const SQL = `SELECT * FROM domains
                WHERE id = $1 AND name = $2`;
  const { rows } = await pool.query(SQL, [id, name]);
  return rows;
}

async function getDomainById(id) {
  const SQL = `SELECT * FROM domains
                WHERE id = $1`;
  const { rows } = await pool.query(SQL, [id]);
  return rows;
}

async function getDomains() {
  const SQL = `SELECT * FROM domains ORDER BY LOWER(name) ASC`;
  const { rows } = await pool.query(SQL);
  return rows;
}

async function getSymbolGods(symbol_id) {
  const SQL = `SELECT g.id, g.name, p.name AS p_name FROM gods AS g
                INNER JOIN god_symbols
                  ON g.id = god_symbols.god_id
                    INNER JOIN symbols AS s
                      ON s.id = god_symbols.symbol_id
                        INNER JOIN pantheons AS p
                          ON p.id = g.pantheon_id
                            WHERE s.id = $1`;
  const { rows } = await pool.query(SQL, [symbol_id]);
  return rows;
}

async function getSymbol(id, name) {
  const SQL = `SELECT * FROM symbols
                WHERE id = $1 AND symbol = $2`;
  const { rows } = await pool.query(SQL, [id, name]);
  return rows;
}

async function getSymbolById(id) {
  const SQL = `SELECT * FROM symbols
                WHERE id = $1`;
  const { rows } = await pool.query(SQL, [id]);
  return rows;
}

async function getSymbols() {
  const SQL = `SELECT * FROM symbols ORDER BY LOWER(symbol) ASC`;
  const { rows } = await pool.query(SQL);
  return rows;
}

async function createPantheon(pantheon) {
  const SQL = `INSERT INTO pantheons(name, origin, description)
                VALUES($1, $2, $3)`;
  return await pool.query(SQL, [
    pantheon.name,
    pantheon.origin,
    pantheon.description,
  ]);
}

async function createGod(god) {
  // Normalize domains and symbols to arrays.
  // This is necessary because select multiple returns an array,
  // but a single value returns a primitive.
  const domains = [].concat(god.domains || []);
  const symbols = [].concat(god.symbols || []);

  const godSQL = `INSERT INTO gods(pantheon_id, name,gender,description, status, img_url)
                    VALUES($1, $2, $3, $4, $5, $6)
                      RETURNING id`;
  const { rows } = await pool.query(godSQL, [
    god.pantheon_id,
    god.name,
    god.gender || null,
    god.description || null,
    god.status || null,
    god.img_url || null,
  ]);

  // God id is created by postgres in the previous query, so it can be used here.
  const godId = rows[0].id;

  // UNNEST is used like a forEach on the domains/symbols arrays
  const domainSQL = `INSERT INTO god_domains(god_id, domain_id)
  SELECT $1, UNNEST($2::int[])`;
  const symbolSQL = `INSERT INTO god_symbols(god_id, symbol_id)
  SELECT $1, UNNEST($2::int[])`;

  await pool.query(domainSQL, [godId, domains]);
  await pool.query(symbolSQL, [godId, symbols]);
  return;
}

async function deleteGod(id) {
  const SQL = `DELETE FROM gods WHERE id = $1`;
  await pool.query(SQL, [id]);
  return;
}

async function deletePantheon(id) {
  const SQL = `DELETE FROM pantheons WHERE id = $1`;
  await pool.query(SQL, [id]);
  return;
}

async function updatePantheon(id, pantheon) {
  const SQL = `UPDATE pantheons
                SET name = $1, origin = $2, description = $3
                  WHERE id = $4`;
  return await pool.query(SQL, [
    pantheon.name,
    pantheon.origin,
    pantheon.description,
    id,
  ]);
}

async function updateGod(id, god) {
  const domains = [].concat(god.domains || []);
  const symbols = [].concat(god.symbols || []);

  const godSQL = `UPDATE gods
                SET pantheon_id = $1, name = $2, gender = $3, description = $4, status = $5, img_url = $6
                  WHERE id = $7`;
  await pool.query(godSQL, [
    god.pantheon_id,
    god.name,
    god.gender,
    god.description,
    god.status,
    god.img_url,
    id,
  ]);

  const domainDelSQL = `DELETE FROM god_domains
                          WHERE god_id = $1`;
  const symbolDelSQL = `DELETE FROM god_symbols
                          WHERE god_id = $1`;
  const domainAddSQL = `INSERT INTO god_domains(god_id, domain_id)
                          SELECT $1, UNNEST($2::int[])`;
  const symbolAddSQL = `INSERT INTO god_symbols(god_id, symbol_id)
                          SELECT $1, UNNEST($2::int[])`;

  await pool.query(domainDelSQL, [id]);
  await pool.query(domainAddSQL, [id, domains]);
  await pool.query(symbolDelSQL, [id]);
  await pool.query(symbolAddSQL, [id, symbols]);
  return;
}

async function createDomain(name) {
  const SQL = `INSERT INTO domains(name)
  VALUES($1)`;
  return await pool.query(SQL, [name]);
}

async function updateDomain(id, name) {
  const SQL = `UPDATE domains
                SET name = $2
                  WHERE id = $1`;
  return await pool.query(SQL, [id, name]);
}

async function createSymbol(symbol) {
  const SQL = `INSERT INTO symbols(symbol)
                VALUES($1)`;
  return await pool.query(SQL, [symbol]);
}

async function updateSymbol(id, symbol) {
  const SQL = `UPDATE symbols
                SET symbol = $2
                  WHERE id = $1`;
  return await pool.query(SQL, [id, symbol]);
}

async function deleteDomain(id) {
  const SQL = `DELETE FROM domains
              WHERE id = $1`;
  return await pool.query(SQL, [id]);
}

async function deleteSymbol(id) {
  const SQL = `DELETE FROM symbols
              WHERE id = $1`;
  return await pool.query(SQL, [id]);
}

module.exports = {
  getPantheons,
  getPantheon,
  getPantheonByName,
  getPantheonById,
  getGod,
  getGods,
  getGodSymbols,
  getGodDomains,
  getDomainGods,
  getSymbolGods,
  getDomain,
  getDomainById,
  getDomains,
  getSymbol,
  getSymbolById,
  getSymbols,
  createPantheon,
  createGod,
  createDomain,
  createSymbol,
  updatePantheon,
  updateGod,
  updateDomain,
  updateSymbol,
  deletePantheon,
  deleteGod,
  deleteDomain,
  deleteSymbol,
};
