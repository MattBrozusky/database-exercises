USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT * FROM albums WHERE release_date = '1990-01-01 12:00:00';

SELECT * FROM albums WHERE sales <= 20000000;

SELECT * From albums WHERE genre = 'rock';
