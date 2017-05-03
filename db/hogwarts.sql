DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE students (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  house VARCHAR(255),
  age INT4
);

CREATE TABLE houses (
  id SERIAL4 PRIMARY KEY,
  house_name VARCHAR(255),
  logo VARCHAR(255)
);
