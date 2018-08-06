# LightButton
	Créez des boutons avec Processing avec cette classe simple d'utilisation ne nécessitant aucune librairie.

## Commencer

Pour commencer, téléchargez simplement le code source et copiez le code nécessaire dans votre projet.

## Création d'un bouton

	Un bouton n'est rien de plus qu'un objet, de type LightButton. Ainsi, vous pouvez le déclarer comme objet :
	
	```
	LightButton button;
	```
	
	Vous pouvez ensuite l'initialiser avec le constructeur de la classe :
	
	```
	button = new LightButton(x, y, largeur, hauteur, texte, action);
	```	

	Les paramètres x, y, largeur et hauteur sont des nombres réels, des [float]. "texte" et "action" sont des [String], des chaînes de caractères.
	"texte" représente le texte affiché dans votre bouton et "action" la fonction qui doit être exécutée lors d'un clic sur le bouton.
	
## Auteurs

* **Alcibiade Desprez** - *Développement* - (https://github.com/Albiciade)