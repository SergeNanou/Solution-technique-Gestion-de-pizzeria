import mysql.connector





class GestionBD:

	"""Espace de noms pour les variables et fonctions <pseudo-globales"""
	
	"""Mise en place et interfaçage d'une base de données MySQL"""
	def __init__(self, host, database, user, password,charset):
		"Établissement de la connexion - Création du curseur"
		self.host = host
		self.database = database
		self.user = user
		self.password = password
		self.charset = charset
		try:
			self.baseDonn =  mysql.connector.connect(host = self.host, database = self.database,user = self.user,password = self.password,charset = self.charset)

			print('\n','Vous etes bien connecté à votre compte')
		except Exception as err:
			print ('Vous n''avez pas encore de compte utilisateur chez nous.Creer si vous le souhaitez:\n'\
			'Erreur détectée :\n%s' % err)
			self.echec =1
		else:    
			self.cursor = self.baseDonn.cursor(buffered=True)   # création du curseur
			
			self.echec =0