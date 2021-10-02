DROP DATABASE IF EXISTS sql_fabrizio;
CREATE DATABASE sql_fabrizio;
USE sql_fabrizio;
CREATE TABLE users (
    id INT(10) NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE notes (
    id INT(10) NOT NULL AUTO_INCREMENT,
    userId INT(10),
    tile VARCHAR(100) NOT NULL,
    creationDate DATE NOT NULL,
    modificationDate DATE NULL DEFAULT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (userId) REFERENCES users (id)
);
CREATE TABLE category (
    id INT(10) NOT NULL AUTO_INCREMENT,
    category VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE note_category (
    id INT(10) NOT NULL AUTO_INCREMENT,
    noteId INT(10),
    categoryId INT(10),
    PRIMARY KEY (id),
    FOREIGN KEY (noteId) REFERENCES notes (id),
    FOREIGN KEY (categoryId) REFERENCES category (id)
); 
INSERT INTO users
VALUES(DEFAULT,"tomas.fabrizio02@gmail.com", "tomas", "fabrizio"),
(DEFAULT,"pepito@gmail.com", "Pedro", "Perez"),
(DEFAULT,"juantopo02@gmail.com", "juan", "topo"),
(DEFAULT,"mburns@gmail.com", "Montgomery", "Burns"),
(DEFAULT,"hutao@gmail.com", "hu", "tao"),
(DEFAULT,"sangonomiya_kokomi@gmail.com", "Sangonomiya", "kookomi"),
(DEFAULT,"elon@gmail.com", "Elon", "Musk"),
(DEFAULT,"duko@gmail.com", "Mauro", "Lombardo"),
(DEFAULT,"xXJesuXx@gmail.com", "Jesus", "de Nazaret"),
(DEFAULT,"steven.trabajos@gmail.com", "Steven", "Trabajos");
INSERT INTO notes
VALUES(DEFAULT,2,"Lorem",NOW(), NULL,"Una nota aburrida"),
(DEFAULT,2,"Lorem",NOW(), NULL,"Una nota ingeniosa"),
(DEFAULT,1,"Lorem",NOW(), NULL,"Una nota de programación"),
(DEFAULT,4,"Lorem",NOW(), NULL,"Una nota sobre la planta nuclear"),
(DEFAULT,10,"Lorem",NOW(), NULL,"Una nota sobre un nuevo producto"),
(DEFAULT,9,"Lorem",NOW(), NULL,"Una nota sobre una religion"),
(DEFAULT,8,"Lorem",NOW(), NULL,"Una nota sobre una nueva cancion"),
(DEFAULT,8,"Lorem",NOW(), NULL,"Una nota sobre un buen beat"),
(DEFAULT,7,"Lorem",NOW(), NULL,"Una nota sobre una nave espacial"),
(DEFAULT,1,"Lorem",NOW(), NULL,"Una nota sobre una idea para el proyecto");
INSERT INTO category
VALUES(DEFAULT,"Programación"),
(DEFAULT,"Musica"),
(DEFAULT,"Religion"),
(DEFAULT,"Trabajo"),
(DEFAULT,"General"),
(DEFAULT,"Ciencia"),
(DEFAULT,"Tecnologia"),
(DEFAULT,"Proyectos"),
(DEFAULT,"Naves espaciales"),
(DEFAULT,"Economia");
INSERT INTO note_category
VALUES(DEFAULT,1,5),
(DEFAULT,2,5),
(DEFAULT,3,1),
(DEFAULT,4,4),
(DEFAULT,5,6),
(DEFAULT,6,3),
(DEFAULT,7,2),
(DEFAULT,8,2),
(DEFAULT,9,8),
(DEFAULT,10,7);