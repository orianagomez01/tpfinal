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
  void dibujar(int index, float x, float y) {
    image(Bot[index], x, y);
  }
  void dibujarFlecha (int index, float x, float y, float tam, float tam1) {
    image (Bot[index], x, y, tam, tam1);
  }

  void dibujarBotones (float x, float y, float tam, float tam1) {
    noStroke();
    fill (255);
    rect (x, y, tam, tam1);
  }
}
