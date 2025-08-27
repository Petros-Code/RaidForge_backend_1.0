create database EUREKA;
use EUREKA;

create table if not exists utilisateurs (
id UUID() primary key,
nom varchar(100) not null,
prenom varchar(100) not null,
email varchar(255) unique not null,
mot_de_passe varchar(255) not null,
date_de_creation date not null
);