INSERT INTO
  pantheons (name, origin, description)
VALUES
  (
    'Roman',
    'Rome, 1000 BC',
    'Ancient Romans worshipped many gods, including Jupiter, Juno, Mars, and Minerva, believing the survival of the state depended on keeping their favor. Religion was practical and ritual-focused: public sacrifices, festivals, and omens, led by priests and magistrates. Households honored their own spirits, the Lares and Penates. Rome also adopted foreign gods, often matching them to its own deities.'
  ),
  (
    'Greek',
    'Greece, 2000 BC',
    'The Greeks worshipped anthropomorphic gods led by Zeus and the Olympians, including Athena, Apollo, and Poseidon. Each city had patron deities, temples, and festivals. Worship centered on sacrifice, prayer, and offerings, with oracles like Delphi offering guidance. Myths explained nature, heroes, and human fate.'
  ),
  (
    'Norse',
    'Scandinavia, 500 AD',
    'Norse pagans honored the Aesir and Vanir, including Odin, Thor, Freyja, and Frey, through feasts, sacrifices, and oaths. Their cosmos centered on the world tree Yggdrasil and was fated to end at Ragnarok. Fate, honor, and the favor of gods and ancestors shaped daily life.'
  ),
  (
    'Egyptian',
    'Egypt, 4000 BC',
    'Egyptians worshipped many gods, such as Ra, Osiris, Isis, and Horus, who embodied natural and cosmic forces. Pharaoh was the divine link to the gods, maintaining ma''at, or cosmic order. Temples held daily rituals, and elaborate burial practices aimed to secure a successful afterlife.'
  );

INSERT INTO
  gods (
    pantheon_id,
    name,
    gender,
    description,
    status,
    img_url
  )
VALUES
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Roman'
    ),
    'Apollo',
    'Male',
    'An eternally youthful, beardless man crowned with laurel, usually holding a lyre or bow. He slew the serpent Python at Delphi and chased the nymph Daphne, who escaped by turning into a laurel tree.',
    'Major',
    '/assets/Roman/apollo.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Roman'
    ),
    'Ceres',
    'Female',
    'A mature, matronly woman wearing a crown of wheat ears and carrying a sheaf of grain, a torch, or a cornucopia. When her daughter Proserpina was abducted by Pluto, she searched the earth in grief and let the crops fail.',
    'Major',
    '/assets/Roman/ceres.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Roman'
    ),
    'Diana',
    'Female',
    'A young huntress in a short tunic with a bow and quiver, often with a crescent moon on her brow and hounds or a deer at her side. She turned the hunter Actaeon into a stag after he stumbled upon her bathing.',
    'Major',
    '/assets/Roman/diana.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Roman'
    ),
    'Juno',
    'Female',
    'A regal, stately woman wearing a diadem and veil, holding a scepter, with a peacock as her companion. She relentlessly persecuted Jupiter''s lovers and their children, and she tormented Aeneas and the Trojans.',
    'Major',
    '/assets/Roman/juno.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Roman'
    ),
    'Jupiter',
    'Male',
    'A powerful, bearded man in his prime, seated on a throne with an eagle beside him and a thunderbolt in hand. He overthrew his father Saturn to take power and was known for descending to earth in disguise to pursue mortals.',
    'Major',
    '/assets/Roman/jupiter.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Roman'
    ),
    'Mars',
    'Male',
    'A muscular warrior in full armor, with a crested helmet, spear, and shield, sometimes accompanied by a wolf. He fathered Romulus and Remus with the priestess Rhea Silvia and was famously caught in an affair with Venus.',
    'Major',
    '/assets/Roman/mars.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Roman'
    ),
    'Mercury',
    'Male',
    'A swift, youthful figure wearing winged sandals and a winged cap, carrying the snake-entwined caduceus. As a newborn he stole Apollo’s cattle, and he led the souls of the dead down to the underworld.',
    'Major',
    '/assets/Roman/mercury.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Roman'
    ),
    'Minerva',
    'Female',
    'A stern, helmeted woman in armor, carrying a spear and a shield bearing the aegis, with an owl as her companion. She burst fully armed from Jupiter’s forehead and turned Arachne into a spider after losing a weaving contest.',
    'Major',
    '/assets/Roman/minerva.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Roman'
    ),
    'Neptune',
    'Male',
    'A bearded, muscular man holding a trident and riding a chariot pulled by sea horses. He struck the ground to create springs and was said to have created the horse.',
    'Major',
    '/assets/Roman/neptune.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Roman'
    ),
    'Venus',
    'Female',
    'A strikingly beautiful woman, often nude or lightly draped, born from sea foam and shown rising on a scallop shell, accompanied by doves and her son Cupid. She won the Judgment of Paris by promising him Helen, which set the Trojan War in motion.',
    'Major',
    '/assets/Roman/venus.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Roman'
    ),
    'Vulcan',
    'Male',
    'A brawny, bearded smith in a work tunic, holding a hammer and tongs, and usually shown lame. He was hurled from Olympus (by Jupiter or Juno, depending on the version) and later forged weapons for Aeneas and Achilles.',
    'Major',
    '/assets/Roman/vulcan.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Aphrodite',
    'Female',
    'Goddess of love, beauty, pleasure, and procreation. Born from the sea foam, she was married to Hephaestus but had numerous affairs, most famously with Ares.',
    'Major',
    '/assets/Greek/aphrodite.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Apollo',
    'Male',
    'God of music, poetry, art, oracles, archery, plague, medicine, sun, light, and knowledge. Twin brother of Artemis and son of Zeus and Leto.',
    'Major',
    '/assets/Greek/apollo.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Ares',
    'Male',
    'God of war, bloodshed, and violence. Son of Zeus and Hera, he is often depicted as a brutal and bloody fighter and was the lover of Aphrodite.',
    'Major',
    '/assets/Greek/ares.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Artemis',
    'Female',
    'Goddess of the hunt, the wilderness, wild animals, the Moon, and chastity. Twin sister of Apollo and daughter of Zeus and Leto.',
    'Major',
    '/assets/Greek/artemis.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Athena',
    'Female',
    'Goddess of wisdom, courage, inspiration, civilization, law and justice, strategic warfare, mathematics, strength, strategy, the arts, crafts, and skill. Born fully grown and armored from the head of Zeus.',
    'Major',
    '/assets/Greek/athena.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Dionysos',
    'Male',
    'God of wine, winemaking, grape cultivation, fertility, ritual madness, theater, and religious ecstasy. Son of Zeus and the mortal princess Semele.',
    'Major',
    '/assets/Greek/dionysos.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Hephaistos',
    'Male',
    'God of fire, metalworking, stone masonry, forges, and the art of sculpture. Son of Zeus and Hera, he is the lame smith of the gods and husband of Aphrodite.',
    'Major',
    '/assets/Greek/hephaistos.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Hera',
    'Female',
    'Goddess of marriage, women, childbirth, and family. Daughter of the Titans Cronus and Rhea, she is the sister and wife of Zeus, and the queen of the Olympian gods.',
    'Major',
    '/assets/Greek/hera.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Hermes',
    'Male',
    'God of trade, heralds, merchants, commerce, roads, thieves, trickery, sports, travelers, and athletes. The swift messenger of the gods and son of Zeus and Maia.',
    'Major',
    '/assets/Greek/hermes.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Hestia',
    'Female',
    'Goddess of the hearth, the right ordering of domesticity, the family, the home, and the state. Daughter of Cronus and Rhea, she is the firstborn of the Olympians.',
    'Major',
    '/assets/Greek/hestia.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Ploutos',
    'Male',
    'God of wealth, agricultural bounty, and material prosperity. Son of Demeter and Iasion, he is often depicted as a child holding a cornucopia of grain and fruit.',
    'Major',
    '/assets/Greek/ploutos.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Poseidon',
    'Male',
    'God of the sea, storms, earthquakes, and horses. Son of Cronus and Rhea, he is the brother of Zeus and Hades, and wields the powerful trident.',
    'Major',
    '/assets/Greek/poseidon.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Greek'
    ),
    'Zeus',
    'Male',
    'God of the sky, lightning, thunder, law, order, and justice. Son of Cronus and Rhea, he is the king of the Olympian gods and wields the master thunderbolt.',
    'Major',
    '/assets/Greek/zeus.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Norse'
    ),
    'Baldur',
    'Male',
    'God of light, beauty, purity, and joy. Beloved by the gods for his kindness and radiance, he became nearly invulnerable after his mother Frigg obtained promises from almost everything in existence not to harm him, overlooking only the mistletoe that Loki would use to bring about his death.',
    'Major',
    '/assets/Norse/baldur.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Norse'
    ),
    'Bragi',
    'Male',
    'God of poetry, eloquence, and song. Renowned for his wisdom and skill with words, he was associated with skaldic poetry and served as a divine inspiration to poets and storytellers. He was the husband of Idunn, guardian of the gods’ rejuvenating apples.',
    'Minor',
    '/assets/Norse/bragi.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Norse'
    ),
    'Freyja',
    'Female',
    'Goddess of love, beauty, fertility, magic, and war. A prominent member of the Vanir, she practiced the magical art of seidr and received half of the warriors slain in battle in her hall, Sessrumnir, while the other half went to Odin in Valhalla. She traveled in a chariot drawn by cats and wore the treasured necklace Brisingamen.',
    'Major',
    '/assets/Norse/freyja.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Norse'
    ),
    'Frigg',
    'Female',
    'Queen of the Aesir and goddess associated with marriage, motherhood, and foresight. Wife of Odin, she was renowned for her wisdom and knowledge of fate. She attempted to protect her son Baldur by securing promises from all things not to harm him, but mistletoe escaped her attention.',
    'Major',
    '/assets/Norse/frigg.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Norse'
    ),
    'Heimdall',
    'Male',
    'Guardian of the gods and watchman of Bifrost, the rainbow bridge connecting Asgard to the world of humans. Possessing extraordinary sight and hearing, he kept watch for approaching enemies and would sound the Gjallarhorn to announce the beginning of Ragnarok.',
    'Major',
    '/assets/Norse/heimdall.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Norse'
    ),
    'Jord',
    'Female',
    'Personification and goddess of the Earth, whose name means earth or land. Associated with the natural world and its fertility, she is identified in Norse tradition as the mother of Thor and a partner of Odin.',
    'Minor',
    '/assets/Norse/jord.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Norse'
    ),
    'Loki',
    'Both',
    'A cunning and unpredictable figure associated with trickery, deception, and transformation. Able to change shape and often assisting the gods through clever schemes, he also caused them great trouble. Father of several formidable beings, including Fenrir, Jormungandr, and Hel, he would become an enemy of the gods during Ragnarok.',
    'Major',
    '/assets/Norse/loki.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Norse'
    ),
    'Njord',
    'Male',
    'God of the sea, seafaring, fishing, wind, and wealth. A member of the Vanir who joined the Aesir as part of a peace settlement between the divine groups, he was invoked by sailors and those seeking prosperity. He was the father of Freyr and Freyja.',
    'Major',
    '/assets/Norse/njord.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Norse'
    ),
    'Odin',
    'Male',
    'King of the Aesir and god of wisdom, war, poetry, magic, and the dead. A one-eyed wanderer who sacrificed an eye for wisdom and hung himself on Yggdrasil to gain knowledge of the runes, he was accompanied by ravens Huginn and Muninn and wolves Geri and Freki. He gathered fallen warriors in Valhalla in preparation for Ragnarok.',
    'Major',
    '/assets/Norse/odin.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Norse'
    ),
    'Sif',
    'Female',
    'Goddess associated with the harvest, fertility, and family. Wife of Thor, she was famed for her beautiful golden hair, which Loki once cut off as a malicious prank. The dwarves later crafted magical replacement hair of gold that grew like natural hair.',
    'Minor',
    '/assets/Norse/sif.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Norse'
    ),
    'Thor',
    'Male',
    'God of thunder, lightning, storms, strength, and protection. Son of Odin and Jord, he wielded the mighty hammer Mjolnir, which returned to his hand after being thrown. Riding in a chariot drawn by goats, he defended gods and humans against giants and was destined to fight the world serpent Jormungandr during Ragnarok.',
    'Major',
    '/assets/Norse/thor.jpg'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Norse'
    ),
    'Tyr',
    'Male',
    'God associated with law, oaths, courage, and single combat. Known for his bravery, he placed his hand in the jaws of the monstrous wolf Fenrir as a pledge of good faith while the gods bound the beast. When Fenrir discovered the deception, he bit off Tyr’s hand.',
    'Major',
    '/assets/Norse/tyr.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Amun',
    'Male',
    'God of air, hidden power, and creation, who became one of the most important deities in ancient Egypt. Worshipped alongside Ra as Amun-Ra, he was associated with kingship and the divine authority of the pharaohs. He was often depicted wearing a tall crown with two plumes.',
    'Major',
    '/assets/Egyptian/amun.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Anubis',
    'Male',
    'God of mummification, funerary rites, and the protection of the dead. Depicted as a man with the head of a black jackal or as a reclining jackal, he oversaw the preparation of the deceased and guided souls through the afterlife, including the weighing of the heart against the feather of Ma’at.',
    'Major',
    '/assets/Egyptian/anubis.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Bastet',
    'Female',
    'Goddess of protection, domestic harmony, fertility, and cats. Originally depicted as a fierce lioness and later commonly as a woman with the head of a domestic cat, she protected households and was associated with music, celebration, and the well-being of families.',
    'Major',
    '/assets/Egyptian/bastet.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Hathor',
    'Female',
    'Goddess of love, beauty, music, dance, motherhood, and joy. Often depicted as a woman with cow horns enclosing a sun disk or as a sacred cow, she welcomed the dead into the afterlife and was revered as a nurturing and protective divine mother.',
    'Major',
    '/assets/Egyptian/hathor.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Horus',
    'Male',
    'God of the sky, kingship, and divine protection. Commonly depicted as a falcon or a man with a falcon head, he was the son of Osiris and Isis and the legendary rival of Set. Egyptian pharaohs were regarded as earthly embodiments of Horus, whose victory over Set symbolized rightful rule and cosmic order.',
    'Major',
    '/assets/Egyptian/horus.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Isis',
    'Female',
    'Goddess of magic, healing, motherhood, and protection. Wife of Osiris and mother of Horus, she restored Osiris after his murder by Set and protected her son from danger. Often depicted wearing a throne-shaped crown or cow horns surrounding a sun disk, she became one of the most widely worshipped goddesses of the ancient world.',
    'Major',
    '/assets/Egyptian/isis.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Nephthys',
    'Female',
    'Goddess associated with mourning, protection, and funerary rites. Sister of Isis and wife of Set in many traditions, she assisted Isis in mourning and restoring Osiris and protected the dead alongside other funerary deities. She was often depicted wearing a crown bearing the hieroglyphs of her name.',
    'Major',
    '/assets/Egyptian/nephthys.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Osiris',
    'Male',
    'God of the afterlife, resurrection, fertility, and the renewal of life. Murdered and dismembered by his brother Set, he was restored through the magic of Isis and became ruler of the underworld and judge of the dead. He was usually depicted as a mummified king wearing the atef crown and holding a crook and flail.',
    'Major',
    '/assets/Egyptian/osiris.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Ptah',
    'Male',
    'God of craftsmen, architects, builders, and creation. Worshipped especially at Memphis, he was believed to bring the world into existence through thought and speech. He was commonly depicted as a mummiform figure wearing a close-fitting cap and holding a staff combining symbols of stability, life, and power.',
    'Major',
    '/assets/Egyptian/ptah.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Ra',
    'Male',
    'God of the sun, creation, and cosmic order. One of the most important Egyptian deities, he traveled across the sky by day and through the underworld by night, renewing the sun each morning. He was often depicted as a man with the head of a falcon crowned by a solar disk and was frequently united with other gods, including Amun.',
    'Major',
    '/assets/Egyptian/ra.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Sekhmet',
    'Female',
    'Goddess of war, destruction, healing, and divine retribution. Depicted as a lioness or a woman with a lioness head crowned by a sun disk, she embodied the fierce power of the sun and could bring disease or protect against it. According to myth, her destructive rage was halted when she drank beer dyed red to resemble blood.',
    'Major',
    '/assets/Egyptian/sekhmet.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Set',
    'Male',
    'God associated with storms, deserts, disorder, and foreign lands. Depicted with the distinctive head of an unidentified animal known as the Set animal, he murdered his brother Osiris and battled Horus for control of Egypt. Although often portrayed as an adversary, he also defended the solar barque of Ra against the serpent Apophis.',
    'Major',
    '/assets/Egyptian/set.webp'
  ),
  (
    (
      SELECT
        id
      FROM
        pantheons
      WHERE
        name = 'Egyptian'
    ),
    'Thoth',
    'Male',
    'God of wisdom, writing, knowledge, mathematics, and the measurement of time. Commonly depicted as a man with the head of an ibis or as a baboon, he was the divine scribe who recorded judgments and maintained cosmic balance. He was closely associated with the invention of hieroglyphic writing and the workings of divine law.',
    'Major',
    '/assets/Egyptian/thoth.webp'
  );

INSERT INTO
  domains (name)
VALUES
  ('Agriculture'),
  ('Arts'),
  ('Beauty'),
  ('Childbirth'),
  ('Commerce'),
  ('Crafts'),
  ('Desire'),
  ('Earthquakes'),
  ('Eloquence'),
  ('Fertility'),
  ('Fire'),
  ('Forge'),
  ('Grain'),
  ('Harvest'),
  ('Healing'),
  ('Horses'),
  ('Hunt'),
  ('Laws'),
  ('Love'),
  ('Marriage'),
  ('Moon'),
  ('Music'),
  ('Poetry'),
  ('Prophecy'),
  ('Protection of young women'),
  ('Roman state'),
  ('Sea'),
  ('Sky'),
  ('Sun'),
  ('Thunder'),
  ('Travelers'),
  ('Thieves'),
  ('Volcanoes'),
  ('War'),
  ('Wild nature'),
  ('Wisdom'),
  ('Afterlife'),
  ('Air'),
  ('Architecture'),
  ('Creation'),
  ('Death'),
  ('Disorder'),
  ('Divination'),
  ('Domestic life'),
  ('Earth'),
  ('Fishing'),
  ('Funerary rites'),
  ('Kingship'),
  ('Knowledge'),
  ('Magic'),
  ('Metalworking'),
  ('Mummification'),
  ('Revelry'),
  ('Resurrection'),
  ('Seafaring'),
  ('Storms'),
  ('Theater'),
  ('Time'),
  ('Underworld'),
  ('Wealth'),
  ('Wine'),
  ('Writing');

INSERT INTO
  symbols (symbol)
VALUES
  ('Lyre'),
  ('Laurel wreath'),
  ('Bow and arrow'),
  ('Sun chariot'),
  ('Bundle of wheat'),
  ('Cornucopia'),
  ('Torch'),
  ('Poppy'),
  ('Crescent moon'),
  ('Deer'),
  ('Hunting hound'),
  ('Peacock'),
  ('Diadem'),
  ('Scepter'),
  ('Pomegranate'),
  ('Thunderbolt'),
  ('Eagle'),
  ('Oak tree'),
  ('Spear'),
  ('Shield'),
  ('Helmet'),
  ('Wolf'),
  ('Woodpecker'),
  ('Caduceus'),
  ('Winged sandals'),
  ('Winged cap'),
  ('Purse'),
  ('Owl'),
  ('Aegis'),
  ('Olive tree'),
  ('Trident'),
  ('Horse'),
  ('Dolphin'),
  ('Sea chariot'),
  ('Dove'),
  ('Scallop shell'),
  ('Rose'),
  ('Myrtle'),
  ('Apple'),
  ('Hammer'),
  ('Anvil'),
  ('Tongs'),
  ('Volcano'),
  ('Sea foam'),
  ('War helmet'),
  ('Thyrsus'),
  ('Grapevine'),
  ('Wine cup'),
  ('Hearth fire'),
  ('Traveler''s hat'),
  ('Golden apples'),
  ('Cat'),
  ('Moon'),
  ('Golden necklace'),
  ('Falcon'),
  ('Rainbow bridge'),
  ('Gjallarhorn'),
  ('Earth'),
  ('Ravens'),
  ('Runes'),
  ('Chariot'),
  ('Ship'),
  ('Fishing net'),
  ('Jackal'),
  ('Scales'),
  ('Mummy wrappings'),
  ('Sistrum'),
  ('Cow horns'),
  ('Sun disk'),
  ('Ankh'),
  ('Feather of Ma''at'),
  ('Crook and flail'),
  ('Eye of Horus'),
  ('Was scepter'),
  ('Solar barque'),
  ('Lioness'),
  ('Set animal'),
  ('Ibis'),
  ('Writing palette'),
  ('Spindle'),
  ('Distaff'),
  ('Serpent'),
  ('Flame'),
  ('Hearth'),
  ('Flowers'),
  ('Seashell'),
  ('Wheat'),
  ('Ram'),
  ('Throne'),
  ('Wings'),
  ('Atef crown'),
  ('Djed pillar'),
  ('Harp');

INSERT INTO
  god_symbols (god_id, symbol_id)
VALUES
  -- Apollo
  (
    (
      SELECT
        gods.id
      FROM
        gods
        INNER JOIN pantheons ON gods.pantheon_id = pantheons.id
      WHERE
        gods.name = 'Apollo'
        AND pantheons.name = 'Roman'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Lyre'
    )
  ),
  (
    (
      SELECT
        gods.id
      FROM
        gods
        INNER JOIN pantheons ON gods.pantheon_id = pantheons.id
      WHERE
        gods.name = 'Apollo'
        AND pantheons.name = 'Roman'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Laurel wreath'
    )
  ),
  (
    (
      SELECT
        gods.id
      FROM
        gods
        INNER JOIN pantheons ON gods.pantheon_id = pantheons.id
      WHERE
        gods.name = 'Apollo'
        AND pantheons.name = 'Roman'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Bow and arrow'
    )
  ),
  (
    (
      SELECT
        gods.id
      FROM
        gods
        INNER JOIN pantheons ON gods.pantheon_id = pantheons.id
      WHERE
        gods.name = 'Apollo'
        AND pantheons.name = 'Roman'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Sun chariot'
    )
  ),
  -- Ceres
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Ceres'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Bundle of wheat'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Ceres'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Cornucopia'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Ceres'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Torch'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Ceres'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Poppy'
    )
  ),
  -- Diana
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Diana'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Bow and arrow'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Diana'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Crescent moon'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Diana'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Deer'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Diana'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Hunting hound'
    )
  ),
  -- Juno
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Juno'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Peacock'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Juno'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Diadem'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Juno'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Scepter'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Juno'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Pomegranate'
    )
  ),
  -- Jupiter
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Jupiter'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Thunderbolt'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Jupiter'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Eagle'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Jupiter'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Scepter'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Jupiter'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Oak tree'
    )
  ),
  -- Mars
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mars'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Spear'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mars'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Shield'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mars'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Helmet'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mars'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Wolf'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mars'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Woodpecker'
    )
  ),
  -- Mercury
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mercury'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Caduceus'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mercury'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Winged sandals'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mercury'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Winged cap'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mercury'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Purse'
    )
  ),
  -- Minerva
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Minerva'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Owl'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Minerva'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Helmet'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Minerva'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Aegis'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Minerva'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Olive tree'
    )
  ),
  -- Neptune
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Neptune'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Trident'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Neptune'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Horse'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Neptune'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Dolphin'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Neptune'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Sea chariot'
    )
  ),
  -- Venus
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Venus'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Dove'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Venus'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Scallop shell'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Venus'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Rose'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Venus'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Myrtle'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Venus'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Apple'
    )
  ),
  -- Vulcan
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Vulcan'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Hammer'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Vulcan'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Anvil'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Vulcan'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Tongs'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Vulcan'
    ),
    (
      SELECT
        id
      FROM
        symbols
      WHERE
        symbol = 'Volcano'
    )
  );

-- Greek, Norse, Egyptian symbol associations
INSERT INTO
  god_symbols (god_id, symbol_id)
SELECT
  gods.id,
  symbols.id
FROM
  (
    VALUES
      -- Greek gods
      ('Greek', 'Aphrodite', 'Dove'),
      ('Greek', 'Aphrodite', 'Rose'),
      ('Greek', 'Aphrodite', 'Sea foam'),
      ('Greek', 'Apollo', 'Lyre'),
      ('Greek', 'Apollo', 'Laurel wreath'),
      ('Greek', 'Apollo', 'Bow and arrow'),
      ('Greek', 'Ares', 'Spear'),
      ('Greek', 'Ares', 'Shield'),
      ('Greek', 'Ares', 'War helmet'),
      ('Greek', 'Artemis', 'Bow and arrow'),
      ('Greek', 'Artemis', 'Deer'),
      ('Greek', 'Artemis', 'Moon'),
      ('Greek', 'Athena', 'Owl'),
      ('Greek', 'Athena', 'Olive tree'),
      ('Greek', 'Athena', 'Shield'),
      ('Greek', 'Dionysos', 'Thyrsus'),
      ('Greek', 'Dionysos', 'Grapevine'),
      ('Greek', 'Dionysos', 'Wine cup'),
      ('Greek', 'Hephaistos', 'Hammer'),
      ('Greek', 'Hephaistos', 'Anvil'),
      ('Greek', 'Hephaistos', 'Tongs'),
      ('Greek', 'Hera', 'Peacock'),
      ('Greek', 'Hera', 'Scepter'),
      ('Greek', 'Hera', 'Crown'),
      ('Greek', 'Hermes', 'Winged sandals'),
      ('Greek', 'Hermes', 'Caduceus'),
      ('Greek', 'Hermes', 'Traveler''s hat'),
      ('Greek', 'Hestia', 'Hearth fire'),
      ('Greek', 'Hestia', 'Flame'),
      ('Greek', 'Hestia', 'Hearth'),
      ('Greek', 'Ploutos', 'Cornucopia'),
      ('Greek', 'Ploutos', 'Golden apples'),
      ('Greek', 'Ploutos', 'Grain'),
      ('Greek', 'Poseidon', 'Trident'),
      ('Greek', 'Poseidon', 'Horse'),
      ('Greek', 'Poseidon', 'Dolphin'),
      ('Greek', 'Zeus', 'Thunderbolt'),
      ('Greek', 'Zeus', 'Eagle'),
      ('Greek', 'Zeus', 'Scepter'),
      -- Norse gods
      ('Norse', 'Baldur', 'Mistletoe'),
      ('Norse', 'Baldur', 'Sun'),
      ('Norse', 'Baldur', 'Golden apples'),
      ('Norse', 'Bragi', 'Lyre'),
      ('Norse', 'Bragi', 'Harp'),
      ('Norse', 'Bragi', 'Runes'),
      ('Norse', 'Freyja', 'Cat'),
      ('Norse', 'Freyja', 'Golden necklace'),
      ('Norse', 'Freyja', 'Falcon'),
      ('Norse', 'Frigg', 'Spindle'),
      ('Norse', 'Frigg', 'Distaff'),
      ('Norse', 'Frigg', 'Crown'),
      ('Norse', 'Heimdall', 'Gjallarhorn'),
      ('Norse', 'Heimdall', 'Rainbow bridge'),
      ('Norse', 'Heimdall', 'Sword'),
      ('Norse', 'Jord', 'Earth'),
      ('Norse', 'Jord', 'Grain'),
      ('Norse', 'Jord', 'Flowers'),
      ('Norse', 'Loki', 'Wolf'),
      ('Norse', 'Loki', 'Serpent'),
      ('Norse', 'Loki', 'Fire'),
      ('Norse', 'Njord', 'Ship'),
      ('Norse', 'Njord', 'Fishing net'),
      ('Norse', 'Njord', 'Seashell'),
      ('Norse', 'Odin', 'Ravens'),
      ('Norse', 'Odin', 'Runes'),
      ('Norse', 'Odin', 'Spear'),
      ('Norse', 'Sif', 'Golden hair'),
      ('Norse', 'Sif', 'Grain'),
      ('Norse', 'Sif', 'Wheat'),
      ('Norse', 'Thor', 'Hammer'),
      ('Norse', 'Thor', 'Thunderbolt'),
      ('Norse', 'Thor', 'Chariot'),
      ('Norse', 'Tyr', 'Wolf'),
      ('Norse', 'Tyr', 'Spear'),
      ('Norse', 'Tyr', 'Shield'),
      -- Egyptian gods
      ('Egyptian', 'Amun', 'Crown'),
      ('Egyptian', 'Amun', 'Was scepter'),
      ('Egyptian', 'Amun', 'Ram'),
      ('Egyptian', 'Anubis', 'Jackal'),
      ('Egyptian', 'Anubis', 'Scales'),
      ('Egyptian', 'Anubis', 'Mummy wrappings'),
      ('Egyptian', 'Bastet', 'Cat'),
      ('Egyptian', 'Bastet', 'Sistrum'),
      ('Egyptian', 'Bastet', 'Ankh'),
      ('Egyptian', 'Hathor', 'Cow horns'),
      ('Egyptian', 'Hathor', 'Sun disk'),
      ('Egyptian', 'Hathor', 'Sistrum'),
      ('Egyptian', 'Horus', 'Falcon'),
      ('Egyptian', 'Horus', 'Eye of Horus'),
      ('Egyptian', 'Horus', 'Crown'),
      ('Egyptian', 'Isis', 'Ankh'),
      ('Egyptian', 'Isis', 'Throne'),
      ('Egyptian', 'Isis', 'Wings'),
      ('Egyptian', 'Nephthys', 'Crown'),
      ('Egyptian', 'Nephthys', 'Wings'),
      ('Egyptian', 'Nephthys', 'Mummy wrappings'),
      ('Egyptian', 'Osiris', 'Crook and flail'),
      ('Egyptian', 'Osiris', 'Mummy wrappings'),
      ('Egyptian', 'Osiris', 'Atef crown'),
      ('Egyptian', 'Ptah', 'Was scepter'),
      ('Egyptian', 'Ptah', 'Ankh'),
      ('Egyptian', 'Ptah', 'Djed pillar'),
      ('Egyptian', 'Ra', 'Sun disk'),
      ('Egyptian', 'Ra', 'Falcon'),
      ('Egyptian', 'Ra', 'Solar barque'),
      ('Egyptian', 'Sekhmet', 'Lioness'),
      ('Egyptian', 'Sekhmet', 'Sun disk'),
      ('Egyptian', 'Sekhmet', 'Ankh'),
      ('Egyptian', 'Set', 'Set animal'),
      ('Egyptian', 'Set', 'Was scepter'),
      ('Egyptian', 'Set', 'Spear'),
      ('Egyptian', 'Thoth', 'Ibis'),
      ('Egyptian', 'Thoth', 'Writing palette'),
      ('Egyptian', 'Thoth', 'Moon')
  ) AS associations (pantheon_name, god_name, symbol_name)
  INNER JOIN gods ON gods.name = associations.god_name
  INNER JOIN pantheons ON pantheons.id = gods.pantheon_id
  AND pantheons.name = associations.pantheon_name
  INNER JOIN symbols ON symbols.symbol = associations.symbol_name;

INSERT INTO
  god_domains (god_id, domain_id)
VALUES
  -- Apollo
  (
    (
      SELECT
        gods.id
      FROM
        gods
        INNER JOIN pantheons ON gods.pantheon_id = pantheons.id
      WHERE
        gods.name = 'Apollo'
        AND pantheons.name = 'Roman'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Sun'
    )
  ),
  (
    (
      SELECT
        gods.id
      FROM
        gods
        INNER JOIN pantheons ON gods.pantheon_id = pantheons.id
      WHERE
        gods.name = 'Apollo'
        AND pantheons.name = 'Roman'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Music'
    )
  ),
  (
    (
      SELECT
        gods.id
      FROM
        gods
        INNER JOIN pantheons ON gods.pantheon_id = pantheons.id
      WHERE
        gods.name = 'Apollo'
        AND pantheons.name = 'Roman'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Poetry'
    )
  ),
  (
    (
      SELECT
        gods.id
      FROM
        gods
        INNER JOIN pantheons ON gods.pantheon_id = pantheons.id
      WHERE
        gods.name = 'Apollo'
        AND pantheons.name = 'Roman'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Prophecy'
    )
  ),
  (
    (
      SELECT
        gods.id
      FROM
        gods
        INNER JOIN pantheons ON gods.pantheon_id = pantheons.id
      WHERE
        gods.name = 'Apollo'
        AND pantheons.name = 'Roman'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Healing'
    )
  ),
  -- Ceres
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Ceres'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Agriculture'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Ceres'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Grain'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Ceres'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Harvest'
    )
  ),
  -- Diana
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Diana'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Hunt'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Diana'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Moon'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Diana'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Wild nature'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Diana'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Protection of young women'
    )
  ),
  -- Juno
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Juno'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Marriage'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Juno'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Childbirth'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Juno'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Roman state'
    )
  ),
  -- Jupiter
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Jupiter'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Sky'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Jupiter'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Thunder'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Jupiter'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Laws'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Jupiter'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Roman state'
    )
  ),
  -- Mars
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mars'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'War'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mars'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Agriculture'
    )
  ),
  -- Mercury
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mercury'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Commerce'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mercury'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Travelers'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mercury'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Thieves'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Mercury'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Eloquence'
    )
  ),
  -- Minerva
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Minerva'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Wisdom'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Minerva'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'War'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Minerva'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Crafts'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Minerva'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Arts'
    )
  ),
  -- Neptune
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Neptune'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Sea'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Neptune'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Earthquakes'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Neptune'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Horses'
    )
  ),
  -- Venus
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Venus'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Love'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Venus'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Beauty'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Venus'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Desire'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Venus'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Fertility'
    )
  ),
  -- Vulcan
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Vulcan'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Fire'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Vulcan'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Volcanoes'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        gods
      WHERE
        name = 'Vulcan'
    ),
    (
      SELECT
        id
      FROM
        domains
      WHERE
        name = 'Forge'
    )
  );

-- Greek, norse, egyptian domain associations
INSERT INTO
  god_domains (god_id, domain_id)
SELECT
  gods.id,
  domains.id
FROM
  (
    VALUES
      -- Greek gods
      ('Greek', 'Aphrodite', 'Love'),
      ('Greek', 'Aphrodite', 'Beauty'),
      ('Greek', 'Aphrodite', 'Desire'),
      ('Greek', 'Aphrodite', 'Fertility'),
      ('Greek', 'Apollo', 'Sun'),
      ('Greek', 'Apollo', 'Music'),
      ('Greek', 'Apollo', 'Poetry'),
      ('Greek', 'Apollo', 'Prophecy'),
      ('Greek', 'Apollo', 'Healing'),
      ('Greek', 'Apollo', 'Arts'),
      ('Greek', 'Ares', 'War'),
      ('Greek', 'Artemis', 'Hunt'),
      ('Greek', 'Artemis', 'Moon'),
      ('Greek', 'Artemis', 'Wild nature'),
      ('Greek', 'Artemis', 'Childbirth'),
      ('Greek', 'Artemis', 'Protection of young women'),
      ('Greek', 'Athena', 'Wisdom'),
      ('Greek', 'Athena', 'War'),
      ('Greek', 'Athena', 'Crafts'),
      ('Greek', 'Athena', 'Arts'),
      ('Greek', 'Dionysos', 'Fertility'),
      ('Greek', 'Dionysos', 'Wine'),
      ('Greek', 'Dionysos', 'Revelry'),
      ('Greek', 'Dionysos', 'Theater'),
      ('Greek', 'Dionysos', 'Arts'),
      ('Greek', 'Hephaistos', 'Fire'),
      ('Greek', 'Hephaistos', 'Forge'),
      ('Greek', 'Hephaistos', 'Crafts'),
      ('Greek', 'Hephaistos', 'Metalworking'),
      ('Greek', 'Hera', 'Marriage'),
      ('Greek', 'Hera', 'Childbirth'),
      ('Greek', 'Hermes', 'Commerce'),
      ('Greek', 'Hermes', 'Travelers'),
      ('Greek', 'Hermes', 'Thieves'),
      ('Greek', 'Hermes', 'Eloquence'),
      ('Greek', 'Hestia', 'Fire'),
      ('Greek', 'Hestia', 'Domestic life'),
      ('Greek', 'Ploutos', 'Wealth'),
      ('Greek', 'Ploutos', 'Agriculture'),
      ('Greek', 'Ploutos', 'Grain'),
      ('Greek', 'Poseidon', 'Sea'),
      ('Greek', 'Poseidon', 'Earthquakes'),
      ('Greek', 'Poseidon', 'Horses'),
      ('Greek', 'Zeus', 'Sky'),
      ('Greek', 'Zeus', 'Thunder'),
      ('Greek', 'Zeus', 'Laws'),
      -- Norse gods
      ('Norse', 'Baldur', 'Beauty'),
      ('Norse', 'Baldur', 'Sun'),
      ('Norse', 'Bragi', 'Poetry'),
      ('Norse', 'Bragi', 'Arts'),
      ('Norse', 'Bragi', 'Eloquence'),
      ('Norse', 'Freyja', 'Love'),
      ('Norse', 'Freyja', 'Beauty'),
      ('Norse', 'Freyja', 'Fertility'),
      ('Norse', 'Freyja', 'War'),
      ('Norse', 'Freyja', 'Magic'),
      ('Norse', 'Frigg', 'Marriage'),
      ('Norse', 'Frigg', 'Childbirth'),
      ('Norse', 'Frigg', 'Divination'),
      ('Norse', 'Heimdall', 'Protection of young women'),
      ('Norse', 'Heimdall', 'Sky'),
      ('Norse', 'Jord', 'Earth'),
      ('Norse', 'Jord', 'Agriculture'),
      ('Norse', 'Jord', 'Fertility'),
      ('Norse', 'Loki', 'Fire'),
      ('Norse', 'Loki', 'Magic'),
      ('Norse', 'Loki', 'Disorder'),
      ('Norse', 'Njord', 'Sea'),
      ('Norse', 'Njord', 'Seafaring'),
      ('Norse', 'Njord', 'Fishing'),
      ('Norse', 'Njord', 'Wealth'),
      ('Norse', 'Odin', 'Wisdom'),
      ('Norse', 'Odin', 'War'),
      ('Norse', 'Odin', 'Poetry'),
      ('Norse', 'Odin', 'Magic'),
      ('Norse', 'Odin', 'Prophecy'),
      ('Norse', 'Odin', 'Death'),
      ('Norse', 'Sif', 'Agriculture'),
      ('Norse', 'Sif', 'Fertility'),
      ('Norse', 'Sif', 'Grain'),
      ('Norse', 'Thor', 'Thunder'),
      ('Norse', 'Thor', 'Sky'),
      ('Norse', 'Thor', 'War'),
      ('Norse', 'Tyr', 'War'),
      ('Norse', 'Tyr', 'Laws'),
      -- Egyptian gods
      ('Egyptian', 'Amun', 'Air'),
      ('Egyptian', 'Amun', 'Creation'),
      ('Egyptian', 'Amun', 'Kingship'),
      ('Egyptian', 'Anubis', 'Death'),
      ('Egyptian', 'Anubis', 'Mummification'),
      ('Egyptian', 'Anubis', 'Funerary rites'),
      ('Egyptian', 'Anubis', 'Afterlife'),
      ('Egyptian', 'Bastet', 'Protection of young women'),
      ('Egyptian', 'Bastet', 'Fertility'),
      ('Egyptian', 'Bastet', 'Domestic life'),
      ('Egyptian', 'Hathor', 'Love'),
      ('Egyptian', 'Hathor', 'Beauty'),
      ('Egyptian', 'Hathor', 'Music'),
      ('Egyptian', 'Hathor', 'Fertility'),
      ('Egyptian', 'Horus', 'Sky'),
      ('Egyptian', 'Horus', 'Kingship'),
      ('Egyptian', 'Horus', 'Protection of young women'),
      ('Egyptian', 'Isis', 'Magic'),
      ('Egyptian', 'Isis', 'Healing'),
      ('Egyptian', 'Isis', 'Fertility'),
      ('Egyptian', 'Nephthys', 'Death'),
      ('Egyptian', 'Nephthys', 'Funerary rites'),
      (
        'Egyptian',
        'Nephthys',
        'Protection of young women'
      ),
      ('Egyptian', 'Osiris', 'Afterlife'),
      ('Egyptian', 'Osiris', 'Death'),
      ('Egyptian', 'Osiris', 'Resurrection'),
      ('Egyptian', 'Osiris', 'Agriculture'),
      ('Egyptian', 'Ptah', 'Creation'),
      ('Egyptian', 'Ptah', 'Crafts'),
      ('Egyptian', 'Ptah', 'Architecture'),
      ('Egyptian', 'Ptah', 'Metalworking'),
      ('Egyptian', 'Ra', 'Sun'),
      ('Egyptian', 'Ra', 'Creation'),
      ('Egyptian', 'Ra', 'Time'),
      ('Egyptian', 'Sekhmet', 'War'),
      ('Egyptian', 'Sekhmet', 'Healing'),
      ('Egyptian', 'Sekhmet', 'Fire'),
      ('Egyptian', 'Set', 'Storms'),
      ('Egyptian', 'Set', 'Disorder'),
      ('Egyptian', 'Set', 'War'),
      ('Egyptian', 'Thoth', 'Wisdom'),
      ('Egyptian', 'Thoth', 'Writing'),
      ('Egyptian', 'Thoth', 'Knowledge'),
      ('Egyptian', 'Thoth', 'Time'),
      ('Egyptian', 'Thoth', 'Divination')
  ) AS associations (pantheon_name, god_name, domain_name)
  INNER JOIN gods ON gods.name = associations.god_name
  INNER JOIN pantheons ON pantheons.id = gods.pantheon_id
  AND pantheons.name = associations.pantheon_name
  INNER JOIN domains ON domains.name = associations.domain_name;
