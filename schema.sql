DROP DATABASE IF EXISTS EMS_db;

CREATE DATABASE EMS_db;

CREATE TABLE department (
id INT NOT NULL auto_increment,
name VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE employeeRole(
id INT NOT NULL auto_increment,
title VARCHAR(30) NOT NULL,
salary decimal(10,2) NOT NULL,
department_id INT NULL,
PRIMARY KEY (id),
FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
id INT NOT NULL auto_increment,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT NULL,
manager_id INT NULL,
PRIMARY KEY (id),
FOREIGN KEY (role_id) REFERENCES employeeRole(id),
FOREIGN KEY (manager_id) REFERENCES employee(id)
);

