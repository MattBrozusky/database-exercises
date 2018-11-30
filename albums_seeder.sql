USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (id, artist, name, release_date, genre, sales)
VALUES
      (3, 'AC/DC', 'Back in Black', '1980-01-01 12:00:00', 'Hard rock', 2600000),
      (4, 'Pink Floyd', 'The Dark Side of the Moon',	'1973-01-01 12:00:00', 'Progressive rock', 8000000),
      (5, 'The Beatles', 'Sgt. Pepper\'s Lonely Hearts Club Band', '1967-01-01 12:00:00', 'Rock', 3400000),
      (6, 'Nirvana', 'Nevermind',	'1991-01-01 12:00:00', 'Alternative rock', 2900000),
      (7, 'Madonna', 'The Immaculate Collection',	'1990-01-01 12:00:00', 'Pop', 1200000);