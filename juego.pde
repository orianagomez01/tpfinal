class Juego {
  // PROPIEDADES (variables)
  Pantalla P;
  Homero jugador;
  Fuego F;
  Bart B;
  Texto T;
  Canon C;
  boolean elalto, jugar;
  boolean c= false;
  String estado;
  float posy; 

  Juego() { 
    P = new Pantalla();
    jugador=new Homero();
    F = new Fuego();
    B=new Bart();
    C=new Canon();
    posy=550;

    estado ="jugar";
  }

  // METODOS (funciones)
  void play() {
    if (estado.equals("menu")) {
      background(100, 100, 255);
      F.dibujar (0, 400, 400, 200);
      P.dibujarImg (0, 550, 0, 245, 531);
      P.dibujarFondo (11); 
      T.dibujarTextos(25, 255, 0, 200, 200, 300, 400);
      T.textosC(20, 0, 1, 400, 550);
      //av.cambiarEstado( "juego" );
    } else if (estado.equals("jugar")) {
      P.actualizar();
      P.dibujarComedor();
      P.dibujar();     
      C.actualizar();
      C.dibujarBolaF();
      B.dibujar();
        // DEBUG ----------------------------------------------------------------
      pushStyle();
      noFill();
      stroke( 255, 0, 0 );
      strokeWeight( 5 );
      //circle( x, y-t/4, t/4 );
      rect( jugador.x, jugador.y, C.x, C.y );     
      strokeWeight( 2 );
      line( jugador.x, jugador.y, C.x, C.y );
      //println( "x: " + x + " | y-t/4: " + (y-t/4) ); 
      //println( "co[i].x: " + co[i].x + " | co[i].y: " + co[i].y ); 
      popStyle(); 
    } 
  }

  void perderJuego(Aventura av) {  
    //boolean c=false;
    float d =dist(jugador.x, jugador.y, C.x, C.y);
    if (d<55) {
      c=true;
        av.cambiarEstado("final1");
        //sonidosalto.play();
        println (c);
        println("d:",d);
    }
  }
  void ganarJuego(Aventura av) {  
    //boolean c=false;
    float d= dist(jugador.x, jugador.y, B.bx, B.y);
    if (d<40) {
      c=true;
      av.cambiarEstado("direcciones");
    }
  }
  
  void reset () {
    if (jugar == false) {
   C.actualizar();
   P.actualizar(); 
  }
  }  
  void teclas() {
    if (keyCode==ENTER && estado.equals("menu")) {
      estado = "jugar";
    }
  }
}
