# Database plan

### pantheons

- id
- name
- origin
- description

### gods

- id
- pantheon_id
- name
- gender
- description
- status (major/minor)
- img_url

### domains

- id
- name
- description

### symbols

- id
- god_id
- symbol

### god_domains

- god_id
- domain_id

### god_counterparts (Roman vs Greek)

- god_a_id
- god_b_id

### god_parents

- parent_id
- child_id

### god_peers

- god_a_id
- god_b_id
- relation (spouse, cousin, sibling)

## Could be added in a later version

### god_aliases

- id
- god_id
- alias
