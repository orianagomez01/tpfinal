 Aventura aventura;


void setup(){
  size(800,600);
  aventura= new Aventura();
 }

void draw(){
  aventura.dibujar();
 }
 void keyPressed (){
  aventura.teclas();
 }
 
 void mouseClicked(){
  aventura.botones();
 }
 
