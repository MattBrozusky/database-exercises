USE codeup_test_db;


# SELECT * FROM albums;
# UPDATE albums SET sales = sales * 10;
# SELECT * FROM albums;

# SELECT * FROM albums WHERE release_date <= '1980-01-01 12:00:00';
# UPDATE albums SET release_date = '1800-01-01 12:00:00' WHERE release_date <= '1980-01-01 12:00:00';
# SELECT * FROM albums WHERE release_date = '1800-01-01 12:00:00';

SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';