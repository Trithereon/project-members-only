-- Placeholder data for users and messages.
-- NOTE: the password values are fake bcrypt-shaped strings.
INSERT INTO
  users (
    firstname,
    lastname,
    username,
    password,
    membership_status,
    admin_status
  )
VALUES
  (
    'Ada',
    'Lovelace',
    'ada_l',
    '$2b$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012345',
    true,
    true
  ),
  (
    'Grace',
    'Hopper',
    'grace_h',
    '$2b$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012345',
    true,
    false
  ),
  (
    'Alan',
    'Turing',
    'alan_t',
    '$2b$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012345',
    true,
    false
  ),
  (
    'Linus',
    'Torvalds',
    'linus_t',
    '$2b$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012345',
    false,
    false
  ),
  (
    'Margaret',
    'Hamilton',
    'mhamilton',
    '$2b$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012345',
    true,
    false
  ),
  (
    'Dennis',
    'Ritchie',
    'dritchie',
    '$2b$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012345',
    false,
    false
  );

INSERT INTO
  messages (author_id, title, text, created_at)
VALUES
  (
    (
      SELECT
        id
      FROM
        users
      WHERE
        username = 'ada_l'
    ),
    'Welcome to the club!',
    'Glad to have everyone here. Please keep things friendly and on topic. Admins will tidy up anything that drifts too far off course.',
    NOW() - INTERVAL '30 days'
  ),
  (
    (
      SELECT
        id
      FROM
        users
      WHERE
        username = 'ada_l'
    ),
    'Posting guidelines',
    'Keep titles short and descriptive, avoid spam, and be kind. Members can see who wrote each message; everyone else just sees the text.',
    NOW() - INTERVAL '29 days'
  ),
  (
    (
      SELECT
        id
      FROM
        users
      WHERE
        username = 'grace_h'
    ),
    'Found a bug in my morning routine',
    'Turns out the moth in the relay was not the real problem. The real problem was that I forgot to drink coffee before debugging.',
    NOW() - INTERVAL '21 days'
  ),
  (
    (
      SELECT
        id
      FROM
        users
      WHERE
        username = 'grace_h'
    ),
    'Book recommendations?',
    'Looking for something on the history of computing that is readable on a train. Bonus points if it has good diagrams.',
    NOW() - INTERVAL '14 days'
  ),
  (
    (
      SELECT
        id
      FROM
        users
      WHERE
        username = 'alan_t'
    ),
    'Can machines think?',
    'Probably a question for a longer thread, but I would love to hear what everyone thinks. Please keep it civil, and please cite sources.',
    NOW() - INTERVAL '12 days'
  ),
  (
    (
      SELECT
        id
      FROM
        users
      WHERE
        username = 'linus_t'
    ),
    'Is anyone else here a night owl?',
    'Most of my best commits happen after midnight. Most of my worst ones do too. Curious whether this is a universal experience.',
    NOW() - INTERVAL '9 days'
  ),
  (
    (
      SELECT
        id
      FROM
        users
      WHERE
        username = 'mhamilton'
    ),
    'Test everything twice',
    'Then test it a third time with the weirdest inputs you can think of. Users will always find the path you did not plan for.',
    NOW() - INTERVAL '6 days'
  ),
  (
    (
      SELECT
        id
      FROM
        users
      WHERE
        username = 'mhamilton'
    ),
    'Weekend project showcase',
    'Share what you are building this weekend! Half-finished ideas are welcome. I will start: a tiny tool that renames photos by date.',
    NOW() - INTERVAL '3 days'
  ),
  (
    (
      SELECT
        id
      FROM
        users
      WHERE
        username = 'dritchie'
    ),
    'Hello, world',
    'First post. Short and simple, the way it should be.',
    NOW() - INTERVAL '1 day'
  ),
  (
    (
      SELECT
        id
      FROM
        users
      WHERE
        username = 'ada_l'
    ),
    'Thanks for a great first month',
    'Thank you all for making this a welcoming place. Looking forward to seeing what everyone shares next.',
    NOW() - INTERVAL '2 hours'
  );
