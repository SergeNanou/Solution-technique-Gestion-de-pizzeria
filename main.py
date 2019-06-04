import mysql.connector
from decimal import *
from general_variable import *

# Connexion client
mdp = ''
user = ''
bd = GestionBD('localhost', 'Pizzeria_base','root', '' , 'utf8')

print(" \n  Bienvenu sur notre site  \n",
	  "\n 1- Je souhaite me connecter comme client\n",
	  "\n 2- je souhaite me connecter comme un livreur\n",
	  "\n 3-Je souhaite me connecter comme un Administrateur \n")
while True:
	choice_0 = input('Choisissez 1 ou 2 ou 3, SVP :')
	try:
		choice_0 = int(choice_0)
	except ValueError:
		print('Entrez un numero valide, SVP')
		continue
	if choice_0 == 1: 
		user = input('Entrez votre nom utilisateur :')
		user = str(user)
		mdp = input('Entrez votre mot de passe :')
		mdp = str(mdp)
		bd = GestionBD('localhost', 'Pizzeria_base', user, mdp , 'utf8')
		print(" \n  Voulez-vous faire une commande  \n",
			  "\n 1- Oui\n",
			  "\n 2- Non\n")
		price = 0
		while True:
			choice_1 = input('Choisissez 1 ou 2, SVP :')
			try:
				choice_1 = int(choice_1)
			except ValueError:
				print('Entrez un numero valide, SVP')
				continue
			if choice_1 == 1:
				bd.cursor.execute('insert into Commande (client) values (10)')
				
				
				print("\n Entrer le nombre de pizza "
					  "que vous souhaiterez  :\n")
				choice_2 = input('Entrer un nombre entier, SVP:')
				choice_2 = int(choice_2)
				print("\n Entrer le numero du  choix  de pizza "
					  "que vous souhaiterez  :\n",
					  "\n 1- Marguerita\n",
					  "\n 2- Reine\n",
					  "\n 3- Napolitaine\n",
					  "\n 4- Romaine\n",
					  "\n 5- Sicilienne\n",
					  "\n 6- Capricciosa\n",
					  "\n 7- Calzone\n",
					  "\n 8- Hawaienne\n",
					  )
				choice_3 = input('Entrer un nombre entier, SVP:')
				choice_3 = int (choice_3)
				com_id = bd.cursor.execute('SELECT LAST_INSERT_ID()')
				com_id = bd.cursor.fetchall()[0][0]
				print(com_id)
				req = 'Insert into Panier (commande_id, pizza_id, qte_pizza) values (%s,%s,%s)';
				bd.cursor.execute(req, (com_id,choice_3, choice_2))
				prix = 0
				piz_choice = 1
				if choice_3 == 1:

					liste=['UPDATE Stock SET stock_ing = stock_ing - 0.15 \
					WHERE pizzeria_id = 1 and ingredient_id = 1',
					       'UPDATE Stock SET stock_ing = stock_ing - 0.15 \
					       WHERE pizzeria_id = 1 and ingredient_id = 2',
					       'UPDATE Stock SET stock_ing = stock_ing - 0.55 \
					       WHERE pizzeria_id = 1 and ingredient_id = 3',
					       'UPDATE Stock SET stock_ing = stock_ing - 0.35 \
					       WHERE pizzeria_id = 1 and ingredient_id = 4']
					for s in liste:
						bd.cursor.execute(s)
					
					prix = 12.5
				if choice_3 == 2:
					prix = 15.00
				if choice_3 == 3:
					prix = 15.00
				if choice_3 == 4:
					prix = 15.00
				if choice_3 == 5:
					prix = 16.5
				if choice_3 == 6:
					prix = 14.5
				if choice_3 == 7:
					prix = 13
				if choice_3 == 8:
					prix = 12.00
				price = float(prix * choice_2)
				print(prix)
				print(price)
				bd.cursor.execute('REPLACE into Commande (id,client,prix) values (%s,%s,%s)',(com_id,10,price,))
				# result = bd.cursor.execute('SELECT * FROM Stock')
				# result = bd.cursor.fetchall()
				# for x in result:
				# 	print(x)
				print("le prix de votre commande est :", price , "£")
				
				
				break
			
					  
				# process to catch a user category choice 
		break
	elif choice_0 == 2:
		user = input('Entrez votre nom utilisateur :')
		user = str(user)
		mdp = input('Entrez votre mot de passe :')
		mdp = str(mdp)
		bd_1 = GestionBD('localhost', 'Pizzeria_base', user, mdp , 'utf8')
		if bd_1.echec:
			sys.exit()
		bd.cursor.execute('SELECT name, adresse,deliver FROM Client,commande WHERE client.id = commande.client and commande.cooker = 0 and client.id = 10')
		result_0 = bd.cursor.fetchall()
		print("nom_du_client:", result_0[0][0], '\n', "adresse: ", result_0[0][1], "etat_de_la_livrraison: ", result_0[0][2])
		if result_0[0][2] == 0:
			use = input('Tapez 1 si vous voulez enregistrez la livraison commande: ')
			use = int(use)
			if use == 0:
				bd.cursor.execute('UPDATE Commande SET deliver = 0 WHERE Commande.Client=10')
				print('la commande a bien été livré')
			
				break
			else:
				print("\n","Bon courage pour vos services de livraisons")
				break
		break
	elif choice_0 == 3:
		user = input('Entrez votre nom utilisateur :')
		user = str(user)
		mdp = input('Entrez votre mot de passe :')
		mdp = str(mdp)
		bd_2 = GestionBD('localhost', 'Pizzeria_base', user, mdp , 'utf8')
		if bd_2.echec:
			sys.exit()
		bd.cursor.execute('SELECT pizzeria.name,COUNT(*) FROM Commande \
		 INNER JOIN Selection ON commande.id = selection.commande_id\
		 INNER JOIN Pizzeria ON selection.pizzeria_id = pizzeria.id GROUP BY commande.deliver HAVING commande.deliver = 0')
		result_0 = bd.cursor.fetchall()
		for x in result_0:
			print('le nombre de commande à livrer est ', x[1], 'dans la pizzeria', x[0])
		bd.cursor.execute('SELECT pizzeria.name,COUNT(*) FROM Commande \
		 INNER JOIN Selection ON commande.id = selection.commande_id\
		 INNER JOIN Pizzeria ON selection.pizzeria_id = pizzeria.id GROUP BY commande.cooker HAVING commande.cooker = 0')
		resul_0 = bd.cursor.fetchall()
		for x in resul_0:
			print('le nombre de commande à cuisiner est ', x[1], 'dans la pizzeria', x[0])
		use_1 = input('Tapez 1 si vous voulez voir le stock des magasins: ')
		use_1 = int(use_1)
		if use_1 == 1:
			bd.cursor.execute('SELECT stock.stock_ing,pizzeria.name, ingredient.name From Stock\
			 LEFT JOIN Pizzeria ON stock.pizzeria_id = pizzeria.id\
			 LEFT JOIN Ingredient ON stock.ingredient_id = ingredient.id ')
			res_0 = bd.cursor.fetchall()
			for x in res_0:
				print("type d'ingredient: ", x[2],'\n', "quantite total d'ingredient restant: ", x[0], "\n",
					   "nom de la pizzeria: ", x[1],'\n'
					   "=================================")
		
			break 
		else:
			break

		break


bd.baseDonn.commit()
bd.cursor.close()
bd.baseDonn.close()