/* Démonstration d'utilisation de la classe LightButton
  
  'LightButtonClass.pde'
    
  Informations, mises à jour et feedback @ https://github.com/Albiciade/LightButton
  
  Développé par Alcibiade Desprez
 */


LightButton[] listButtons = new LightButton[0];

class LightButton {
  float x, y, w, h;
  String label;
  int a;
  int ts = 250;
  String action;
  
  LightButton(float xpos, float ypos, float bwidth, float bheight, String l, String act) {
    x = xpos;
    y = ypos;
    w = bwidth;
    h = bheight;
    label = l;
    action = act;
    a = 255;
    
    listButtons = (LightButton[]) append(listButtons, this);
  }

  void display() {
    pushMatrix();
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      a = 151;
    } else {
      a = 255;
    }
    fill(255, 255, 255, a);
    stroke(0);
    rect(x, y, w, h);
    fill(0);
    textSize(ts);
    while (textWidth(label) > w*0.7 || (textAscent() + textDescent() > h*0.7)) {
      ts--;
      textSize(ts);
    }
    text(label, x, y);

    popMatrix();
  }
}
