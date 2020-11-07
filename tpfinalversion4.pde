import ddf.minim.*;
Minim minim;
AudioPlayer music_fondo;

Aventura aventura;


void setup() {
  size(800, 600);
  aventura= new Aventura();
  minim= new Minim(this);
  music_fondo= minim.loadFile("television-simpsons.mp3");
  music_fondo.loop();
}

void draw() {
  aventura.dibujar();
}
void keyPressed () {
  aventura.teclas();
}

void mouseClicked() {
  aventura.botones();
}
