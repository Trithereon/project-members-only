-- ============================================================
-- USERS
-- ============================================================
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
    'Alice',
    'Anderson',
    'alice_a',
    'hashed_pw_alice',
    true,
    true
  ),
  (
    'Bob',
    'Brown',
    'bobby_b',
    'hashed_pw_bob',
    true,
    false
  ),
  (
    'Carol',
    'Clark',
    'carolc',
    'hashed_pw_carol',
    false,
    false
  ),
  (
    'Dave',
    'Davis',
    'dave_d',
    'hashed_pw_dave',
    true,
    false
  ),
  (
    'Eve',
    'Evans',
    'eve_e',
    'hashed_pw_eve',
    false,
    false
  ),
  (
    'Frank',
    'Foster',
    'frankf',
    'hashed_pw_frank',
    true,
    true
  ),
  (
    'Grace',
    'Green',
    'grace_g',
    'hashed_pw_grace',
    false,
    false
  ),
  (
    'Hank',
    'Hill',
    'hank_h',
    'hashed_pw_hank',
    true,
    false
  );

-- ============================================================
-- MESSAGES
-- (author_id references users.id, assumes IDs 1-8 in insert order)
-- ============================================================
INSERT INTO
  messages (author_id, title, created_at, text)
VALUES
  -- Alice (admin, member)
  (
    1,
    'Welcome to the Message Board!',
    NOW() - INTERVAL '10 days',
    'Hello everyone! This is the first post on our new message board. Feel free to introduce yourselves and start posting.'
  ),
  (
    1,
    'Community Guidelines',
    NOW() - INTERVAL '9 days',
    'A few ground rules: be respectful, no spam, keep it on-topic. Admins reserve the right to remove posts that violate these rules.'
  ),
  -- Bob (member)
  (
    2,
    'What is everyone working on?',
    NOW() - INTERVAL '8 days',
    'Curious what projects people have going on this week. I just finished setting up a new home server.'
  ),
  (
    2,
    'Best coffee shops in town?',
    NOW() - INTERVAL '6 days',
    'Looking for recommendations. I need a good spot with wifi to work from on weekends.'
  ),
  -- Carol (non-member)
  (
    3,
    'Question about membership',
    NOW() - INTERVAL '7 days',
    'How does one become a member here? I see some posts are locked behind membership.'
  ),
  (
    3,
    'Hello from a newcomer',
    NOW() - INTERVAL '5 days',
    'Just signed up! Nice to meet everyone. Looking forward to participating in the discussions.'
  ),
  -- Dave (member)
  (
    4,
    'Book club, any interest?',
    NOW() - INTERVAL '6 days',
    'Thinking about starting a monthly book club. Drop a reply if you would be interested and what genres you like.'
  ),
  (
    4,
    'Weekend hiking trip recap',
    NOW() - INTERVAL '3 days',
    'Went up to the ridge trail on Saturday. Weather was perfect. Photos coming soon, highly recommend it.'
  ),
  -- Eve (non-member)
  (
    5,
    'Lost and found, a set of keys',
    NOW() - INTERVAL '4 days',
    'Found a set of keys near the entrance yesterday. If they are yours, describe them and I will return them.'
  ),
  -- Frank (admin, member)
  (
    6,
    'Site maintenance scheduled',
    NOW() - INTERVAL '3 days',
    'We will be doing maintenance this Sunday from 2-4 AM. Expect brief downtime. Apologies for the inconvenience.'
  ),
  (
    6,
    'Feature request thread',
    NOW() - INTERVAL '2 days',
    'Have an idea for the board? Post it here. We are considering adding reactions and a search feature.'
  ),
  -- Grace (non-member)
  (
    7,
    'Any recommendations for a good podcast?',
    NOW() - INTERVAL '2 days',
    'I have a long commute and need something to listen to. Open to any topic, tech, history, comedy.'
  ),
  -- Hank (member)
  (
    8,
    'Poll: best pizza in the city',
    NOW() - INTERVAL '1 day',
    'Vote in the replies. I am partial to the place on 5th, but I want to hear your favorites.'
  ),
  (
    8,
    'Anyone up for a board game night?',
    NOW() - INTERVAL '6 hours',
    'Thinking of hosting a board game night next Friday. Reply if you are interested and what games you would like to play.'
  ),
  -- Alice (admin) again
  (
    1,
    'Thank you for 100 members!',
    NOW() - INTERVAL '2 hours',
    'We just hit 100 registered members. Thank you all for making this a great community. Here is to the next 100!'
  );
