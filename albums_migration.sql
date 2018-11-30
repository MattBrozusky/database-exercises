USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
  id INT UNSIGNED,
  artist VARCHAR(50),
  name VARCHAR(50),
  release_date DATETIME,
  sales FLOAT,
  genre VARCHAR(25)
);
