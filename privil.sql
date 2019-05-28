

# Description des privillèges
CREATE USER 'Livreur'@'localhost' IDENTIFIED BY 'livreur';
GRANT  UPDATE (deliver) ON Pizzeria_base.Commande TO 'Livreur'@'localhost';
CREATE USER 'CEO'@'localhost' IDENTIFIED BY 'ceo';
GRANT SELECT(deliver,id, cooker, client, prix), UPDATE(deliver,id, cooker, client, prix),INSERT(deliver,id, cooker, client, prix) ON Pizzeria_base.Commande TO 'CEO'@'localhost';
GRANT SELECT(pizzeria_id, ingredient_id, stock_ing), UPDATE(pizzeria_id, ingredient_id, stock_ing),INSERT(pizzeria_id, ingredient_id, stock_ing) ON Pizzeria_base.Stock TO 'CEO'@'localhost';
UPDATE Client SET adresse ='1 CHEMIN DU TERROIR , 32100 Caraibes',WHERE id=10;