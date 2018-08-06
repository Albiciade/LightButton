/* Démonstration d'utilisation de la classe LightButton

  'LightButtonDemo.pde'
  
  Informations, mises à jour et feedback @ https://github.com/Albiciade/LightButton
  
  Développé par Alcibiade Desprez
 */


boolean displayText = false;

LightButton button; // Création d'un objet LightButton

void setup() {
  // Code du setup, exécuté une fois

  size(500, 500);

  button = new LightButton(width/2, height/2, 250, 100, "Texte affiché", "maMethode");
}

void draw() {
  // Code du draw, exécuté indéfiniment
  background(51);
  button.display(); // Affichage du bouton précédemment créé


  if (displayText) {
    fill(255);
    textSize(40);
    text("Hello word !", width/2, height/1.3);
  }
  
}


// IMPORTANT : Il vous faut insérer ce morceau de programme dans votre projet, autrement vous ne pourrez pas effectuer d'action avec vos boutons !
void mousePressed() {
  for (int i = 0; i < listButtons.length; i++) {
    LightButton cB = listButtons[i];
    if (mouseX > cB.x - cB.w/2 && mouseX < cB.x + cB.w/2 && mouseY > cB.y - cB.h/2 && mouseY < cB.y + cB.h/2) {
      method(cB.action);
    }
  }
}

void maMethode() { // Code exécuté lors de la pression de votre bouton
  displayText = !displayText;
}
