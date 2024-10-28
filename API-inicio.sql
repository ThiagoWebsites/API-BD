CREATE DATABASE db_todolist;
USE db_todolist;

CREATE TABLE tarefa(
  id INT unsigned,
  descricao VARCHAR(50) NOT NULL,
  status enum('S', 'N') DEFAULT 'N' NOT NULL,
  CONSTRAINT PRIMARY KEY (id)
);

CREATE USER usr_todolist IDENTIFIED BY '@Pp_22c';
GRANT SELECT, INSERT, UPDATE, DELETE
   on db_todolist.*
   TO usr_todolist@'%';