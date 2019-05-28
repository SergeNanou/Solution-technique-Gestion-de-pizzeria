
CREATE DATABASE Pizzeria_base;
USE Pizzeria_base;

CREATE TABLE Client (
    id SMALLINT  UNSIGNED NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email TEXT NOT NULL,
    adresse TEXT 
)

ENGINE=InnoDB;


CREATE TABLE Commande (
    id SMALLINT  UNSIGNED NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    creation_date TIMESTAMP  NULL DEFAULT CURRENT_TIMESTAMP, 
    cooker BOOLEAN not null default 0,
    deliver BOOLEAN not null default 0,
    PRIX DECIMAL(6,2),
    client SMALLINT UNSIGNED NOT NULL,
    CONSTRAINT client_id          -- On donne un nom à notre clé
        FOREIGN KEY (client)             -- Colonne sur laquelle on crée la clé
        REFERENCES Client(id) 
    
)
ENGINE=InnoDB;


CREATE TABLE Pizzeria (
    id SMALLINT  UNSIGNED NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    Postal_code INT,
    adresse TEXT
)
ENGINE=InnoDB;

CREATE TABLE Pizza (
    id SMALLINT  UNSIGNED NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    prix DECIMAL(4,2),
    formule TEXT,
    pizzeria SMALLINT UNSIGNED NOT NULL,

    CONSTRAINT pizzeria_id          -- On donne un nom à notre clé
        FOREIGN KEY (pizzeria)             -- Colonne sur laquelle on crée la clé
        REFERENCES Pizzeria(id) 
)
ENGINE=InnoDB;

CREATE TABLE Selection (
    commande_id SMALLINT   REFERENCES Commande(id),
    pizzeria_id SMALLINT  REFERENCES pizzeria(id),
    PRIMARY KEY (commande_id, pizzeria_id)
)
ENGINE=InnoDB;

CREATE TABLE Ingredient (
    id SMALLINT  UNSIGNED NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    name VARCHAR(255) NOT NULL
    
)
ENGINE=InnoDB;

CREATE TABLE Recette (
    ingredient_id SMALLINT   REFERENCES Commande(id),
    pizza_id SMALLINT  REFERENCES pizza(id),
    qte_ingred DECIMAL(5,2),
    PRIMARY KEY (ingredient_id, pizza_id)
)
ENGINE=InnoDB;

CREATE TABLE Panier (
	
    commande_id SMALLINT REFERENCES Commande(id),
    pizza_id SMALLINT REFERENCES Pizza(id),
    qte_pizza SMALLINT,
    PRIMARY KEY (commande_id, pizza_id)
)
ENGINE=InnoDB;



CREATE TABLE stock (
	
    pizzeria_id SMALLINT REFERENCES Pizzeria(id),
    ingredient_id SMALLINT REFERENCES Ingredient(id),
    stock_ing DECIMAL(6,2),
    PRIMARY KEY (ingredient_id, pizzeria_id)
)
ENGINE=InnoDB;
