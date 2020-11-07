class Boton {
  Personaje Pr;
  PImage[]Bot=new PImage [6];

  Boton() {
    Pr=new Personaje();
    Bot[0]=loadImage("flecha1.png");
    Bot[1]=loadImage("flechaD.png");
    Bot[2]=loadImage("flechaH.png");
    Bot[3]=loadImage("flechaab.png");
    Bot[4]=loadImage("th(1).png");
    Bot[5]=loadImage("th(2).png");
  }
  void dibujar(PImage Bot, float x, float y) {
    image(Bot, x, y);
  }
  void dibujarFlecha (PImage Bot, float x, float y, float tam, float tam1) {
    image (Bot, x, y, tam, tam1);
  }

  void dibujarBotones (float x, float y, float tam, float tam1) {
    noStroke();
    fill (255);
    rect (x, y, tam, tam1);
  }
  
  void dibujarEllipse (float x, float y, float tam, float tam1) {
   fill(0);
      ellipse(x,y,tam,tam1); 
  }
}
