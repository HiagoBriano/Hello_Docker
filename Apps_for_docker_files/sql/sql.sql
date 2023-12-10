CREATE DATABASE IF NOT EXISTS nodedb;
USE nodedb;

CREATE TABLE people (
  id int AUTO_INCREMENT PRIMARY KEY,
  name varchar(50) NOT NULL,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP()
) ENGINE=InnoDB;