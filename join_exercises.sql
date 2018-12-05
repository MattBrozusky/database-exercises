CREATE DATABASE join_test_db;

USE join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
#   ('bob', 'bob@example.com', 1),
#   ('joe', 'joe@example.com', 2),
#   ('sally', 'sally@example.com', 3),
#   ('adam', 'adam@example.com', 3),
#   ('jane', 'jane@example.com', null),
#   ('mike', 'mike@example.com', null),
  ('mia', 'mia@example.com', 2),
  ('tony', 'tony@example.com', 2),
  ('jack', 'jack@example.com', 2),
  ('nick', 'nick@example.com', null);


SELECT * FROM users;
SELECT * FROM roles;

SELECT users.name, roles.name FROM users
  LEFT JOIN roles
  on roles.id = users.role_id;


USE employees;


SELECT dept_name AS Department_Name,
CONCAT(e.first_name, ' ', e.last_name) AS Manager_Name FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date > NOW() AND e.gender = 'F'
ORDER BY d.dept_name;