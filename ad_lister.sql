CREATE DATABASE adlister;



use adlister;

CREATE TABLE user (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE category (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL ,
  PRIMARY KEY (id)
);

CREATE TABLE ad (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  user_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES user (id)
);

INSERT INTO ad (title, description, user_id) VALUES
    ('Cats food', 'Nutritious food for cats', 1),
    ('Eye shadow', 'Best makeup ever', 3),
    ('CAR parts for sale', 'Best parts for your vehicle!', 1),
    ('Dog toys', 'Make your dog happy', 2),
    ('Lipstick', 'Best shades of colors', 3),
    ('Looking for hot singles?', 'Lonely, call 1-888-400-5555', 2);

SELECT * FROM ad;

CREATE TABLE ad_category (
  ad_id INTEGER UNSIGNED NOT NULL,
  cat_id INTEGER UNSIGNED NOT NULL,
  FOREIGN KEY (ad_id) REFERENCES ad (id),
  FOREIGN KEY (cat_id) REFERENCES category(id)
);

INSERT INTO ad_category (ad_id, cat_id) VALUES
  (1, 1),
  (2, 5),
  (3, 3),
  (4, 1),
  (5, 5),
  (6, 4);

SELECT * FROM ad_category;

INSERT INTO user (email, password) VALUES
  ('justin.reich@gmail.com', 'password1'),
  ('joe.blow@gmail.com', 'password2'),
  ('maximus@gmail.com', 'password3');

SELECT * from user;

INSERT INTO category (name) VALUES
  ('animals'),
  ('food'),
  ('cars'),
  ('dating'),
  ('makeup');

