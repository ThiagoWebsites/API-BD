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



CREATE DATABASE db_edutec_22c;
USE db_edutec_22c;

-- Armazenar usuários da APP
CREATE TABLE usuario(
	id_usuario BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    email varchar(100) NOT NULL UNIQUE,
    senha varchar(100) NOT NULL,
    nome varchar(100) NOT NULL,
    data_nascimento date,
    genero ENUM('M', 'F', 'O'),
    qtd_tentativa TINYINT DEFAULT 0 NOT NULL,
    bloqueado ENUM('S', 'N') DEFAULT 'N' NOT NULL
);
-- Usuário da APP para testes
INSERT INTO usuario(email, senha, nome)
VALUES('astro.gilda@gmail.com', '@_protegida', 'Astrogilda');

SELECT * FROM usuario;

-- Usuário de BD para o Server APP se conectar ao BD
CREATE USER usr_edutec_22c IDENTIFIED BY 'p@ssW0rd';

-- Conceder os acessos do usuário de BD
GRANT SELECT, INSERT, UPDATE, DELETE
ON db_edutec_22c.*
TO usr_edutec_22c;
