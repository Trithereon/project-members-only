# Brainstorm

## Database

- I want to populate the db with a few polytheistic religions that have a pantheon of gods, so Greek, Roman, Egyptian, and Norse.

- For family relation mapping, I think I'll have to have both directions, most of the time. For example: god_id=X related_id=Y relation=mother would also have to include god_id=Y related_id=X relation=son
  - Otherwise, I can have parents, siblings, spouses, cousins as separate tables.
  - Or parents and peers, where peers includes siblings, cousins and spouses, since parenthood is top-down, but everything else is lateral.

### God page

- Need the following columns from the db:
  - god (pantheon_id, name, gender, description, status, img_url)
  - pantheon (name)
  - domains (name, description)
  - symbols (god_id, symbol)
  - god_domains (god_id, domain_id)
  - god_counterparts (god_a_id, god_b_id)
  - god_parents (parent_id, child_id)
  - god_peers (god_a_id, god_b_id, relation)

## Content

Borrowing assets and text content.

- https://roman-empire.net/
- https://www.theoi.com/
- https://medium.com/@nyxshadowhawk/an-absolutely-massive-list-of-gods-the-norse-pantheon-7a5262ce2cdc
- wikipedia egyptian gods

## Theme

- casino zeus slot machine: clouds, blue sky, gold colors, divine look
- age of mythology
- valheim
- hercules
- clash of titans
- marvel thor, loki

## App architecture

- Probably will need a controller and router for domains, gods, and pantheons. Or maybe the app is simple enough for me to use just one router and controller.

## TODO LIST:

- [x] Add edit/update to pantheons and gods
- [x] Make views for domains and symbols
- [x] Implement server-side input validation
- [x] Fix: invalid form input should trigger a re-render of the form and display the validation error messages, allowing the user to fix the input and retry submitting.
- [ ] Add ability to create domains/symbols
- [ ] Add fields for assigning domains/symbols to god creation form
- [x] Add automatic scroll to form ID on validation errors. (Need render() to pass an argument that my script.js picks up and uses element.scrollIntoView)
- [ ] Add counterparts for Roman/Greek gods
- [ ] Add family data

## Free form thoughts

- Trying to implement validation on god edits. I can't figure out how to re-render the page with errors when validation fails. For the pantheon edit failure, I render index which is easy, since there is only one. For a god edit, however, I need to render the appropriate pantheon view, but which reference can I use?
  - I wish I could just reload the page with new res.locals but I don't think that's possible.
  - I can't use req.params.name to get the pantheon, since that's not part of the URL and shouldn't be.
  - The core problem, I think, is that a god can move from one pantheon to another. The god entries are independent from pantheon entries.
- Solution: pull pantheon_id from god entry, pull pantheon name from a db function that returns the name based on id. Render pantheon/id/name on success
