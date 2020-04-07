DROP DATABASE IF EXISTS astorm;
CREATE DATABASE astorm;

GRANT ALL PRIVILEGES ON astorm.* TO 'asuser'@'localhost' IDENTIFIED BY 'asuser';

use astorm;

DROP TABLE IF EXISTS clients;
CREATE TABLE clients
(
    clientid integer unsigned auto_increment primary key,
    name varchar(255) not null,
    active tinyint default 0,
    created datetime,
    updated datetime
) engine=InnoDB AUTO_INCREMENT=1 default charset=utf8;

INSERT INTO clients (name, active, created, updated) 
VALUES
('Daily Mail', 1, now(), now()),
('Guardian', 1, now(), now()),
('Shutterstock', 0, now(), now());

DROP TABLE IF EXISTS suppliers;
CREATE TABLE suppliers
(
    supplierid integer unsigned auto_increment primary key,
    name varchar(255) not null,
    active tinyint default 0,
    created datetime,
    updated datetime
) engine=InnoDB AUTO_INCREMENT=1 default charset=utf8;

INSERT INTO suppliers (name, active, created, updated) 
VALUES
('Ricardo Joven', 1, now(), now()),
('Deportes Directo', 1, now(), now()),
('Sepia', 1, now(), now());


DROP TABLE IF EXISTS people;
CREATE TABLE people
(
    personid integer unsigned auto_increment primary key,
    name varchar(255) not null,
    username varchar(32) not null,
    password varchar(64) not null,
    clientid integer default 0,
    supplierid integer default 0,
    staff tinyint default 0,
    created datetime,
    updated datetime,
    active tinyint default 0
) engine=InnoDB AUTO_INCREMENT=1 default charset=utf8;


INSERT INTO people (name, username, password, clientid, supplierid, staff, active) 
VALUES
('Daily Mail - User 001', 'dm001', 'passw0rd', 1, 0, 0, 1),
('Guardian - User 001', 'g001', 'passw0rd', 2, 0, 0, 1),
('Shutterstock - User 001', 'passw0rd', 'ss001', 3, 0, 0, 1),
('Ricardo Joven - User 001', 'passw0rd', 'dm001', 0, 1, 0, 1),
('Deportes Directo - User 001', 'passw0rd', 'g001', 0, 2, 0, 1),
('Sepia - User 001', 'passw0rd', 'ss001', 0, 3, 0, 1),
('Staff - User 001', 'passw0rd', 'staff001', 0, 0, 1, 1),
('Staff - User 002', 'passw0rd', 'staff002', 0, 0, 1, 1),
('Staff - User 003', 'passw0rd', 'staffimages003', 0, 0, 1, 1);

DROP TABLE IF EXISTS images;
CREATE TABLE images
(
    imageid integer unsigned auto_increment primary key,
    supplierid integer not null,
    created datetime,    WHERE imageid = iImageid;
    inserted datetime,
    updated datetime,    
    title varchar(255) not null,
    description varchar(32) not null,
    location varchar(1024) not null,
    status tinyint default 0
) engine=InnoDB AUTO_INCREMENT=1 default charset=utf8;


DROP TABLE IF EXISTS images_purchased;
CREATE TABLE images_purchased
(
    imageid integer unsigned auto_increment primary key,
    clientid integer unsigned not null,
    purchase_date datetime
) engine=InnoDB AUTO_INCREMENT=1 default charset=utf8;

DROP TABLE IF EXISTS collections;
CREATE TABLE collections
(
    collectionid integer unsigned auto_increment primary key,
    created datetime,
    updated datetime,
    title varchar(255) not null,
    description varchar(1024) not null,
    status tinyint default 0
) engine=InnoDB AUTO_INCREMENT=1 default charset=utf8;

DROP TABLE IF EXISTS collection_images;
CREATE TABLE collection_images
(
    collectionid integer unsigned,
    imageid integer unsigned,
    position integer unsigned,
    primary key (collectionid, imageid),
    foreign key collection_fk(collectionid) references collections(collectionid),
    foreign key image_fk(imageid) references images(imageid)
) engine=InnoDB AUTO_INCREMENT=1 default charset=utf8;
