class Aventura {
  String estado;
  int delay;
  Fuego F;
  Pantalla P;
  Texto T;
  Personaje Pr;
  Boton B;
  color amarillo=color (220, 214, 41);
  Aventura() {
    colorMode(RGB);
    frameRate(10);
    F =new Fuego();
    P= new Pantalla();
    T= new Texto();
    Pr=new Personaje();
    B=new Boton();
    estado="presentacion";
  }
  void dibujar () {
    if (estado.equals("presentacion")) {
      background(100, 100, 255);
      P.dibujarImg (P.img[10], 550, 0, 245, 531);
      P.dibujarImg1 (P.img[11], 0, 0);
      F.dibujar(0, 400, 400, 200);
      T.dibujarTextos(25, 255, T.todostexto[0], 200, 200, 300, 400);
      T.textosC(20, 0, T.todostexto[1], 400, 550);
    }
    else if (estado.equals("casaincendiada")) {
      background(100, 100, 255);
      P.dibujarFondo(P.img[1]);
      F.dibujar(0, 50, 200, 100);
      F.dibujar (300, 300, 200, 100);
      F.dibujar (50, 280, 200, 100);
      F.dibujar (500, 10, 200, 100);
      F.dibujar1(500, 170);
      P.dibujarImg1 (P.img[12], 350, 235);
      T.dibujarTextos(25, 255, T.todostexto[2], 20, 450, 300, 550);
      T.textosC(20, 0, T.todostexto[3], 20, 570);
    }
    else if (estado.equals("direcciones")) {
      delay=delay+1; 
      background(100, 100, 255); 
      fill(0);
      ellipse(415, 550, 65, 65);
      P.dibujarFondo(P.img[2]);
      F.dibujarFlama (F.flama[1], 0, 250);
      F.dibujar(0, 390, 200, 100);
      F.dibujar(530, 100, 100, 50);
      B.dibujar(B.Bot[0], 500, 200);
      B.dibujar(B.Bot[1], 600, 370);
      B.dibujar(B.Bot[2], 100, 370);
      P.dibujarImg1(P.img [13], 205, 220);
      T.dibujarTextos(25, 255, T.todostexto[4], 200, 370, 400, 600);
      T.textosC(20, 0, T.todostexto[5], 10, 560);
      B.dibujarFlecha(B.Bot[0], 390, 520, 50, 61);
    }
    else if (estado.equals("comedor")) {
      background(100, 100, 255);
      fill (0);
      rect(600, 500, 80, 50);
      P.dibujarFondo(P.img[3]);
      F.dibujar (400, 320, 300, 150);
      F.dibujar (450, 320, 300, 150);
      P.dibujarImg(P.img[11], 600, 0, 200, 50);
      F.dibujarFlama (F.flama[1], -50, 170);
      F.dibujarFlama (F.flama[0], 300, 100);
      T.textosC(20, 0, T.todostexto[6], 10, 500);
      T.textosC(20, 0, T.todostexto[7], 600, 560);
      B.dibujarFlecha(B.Bot[1], 600, 500, 80, 50);
      Pr.dibujar(Pr.IM[1], 0, 200);
      Pr.salvar(Pr.IMA[2], 100, 50, Pr.salvado[0], 150, 90, T.todostexto[8], 190, 135, 150, 200);
    }
    else if (estado.equals("sala")) {
      background(100, 100, 255);
      P.dibujarFondo(P.img[5]);
      F.dibujarFlama1 (F.flama[2], 0, 0, 800, 480);
      Pr.dibujarPersonaje(Pr.IMA[3], 150, 440);
      B.dibujarBotones (410, 310, 60, 60);
      B.dibujarBotones (340, 310, 60, 60);
      T.textosC(25, 255, T.todostexto[9], 350, 500);
      T.textosC(50, 0, T.todostexto[10], 200, 300); 
      T.textosC(40, 0, T.todostexto[11], 420, 350);
      T.textosC(40, 0, T.todostexto[12], 345, 350);
    }
    else if (estado.equals("escaleras")) {
      delay=delay+1;
      background(100, 100, 255);
      B.dibujarEllipse (640, 550, 80, 80);
      P.dibujarFondo(P.img[6]);
      B.dibujar (B.Bot[4], 410, 300);
      B.dibujar (B.Bot[5], 255, 300);
      B.dibujar (B.Bot[5], 210, 360);
      B.dibujar (B.Bot[3], 335, 30);
      B.dibujarFlecha (B.Bot[3], 705, 115, 130, 130);
      B.dibujarFlecha (B.Bot[4], 600, 525, 80, 50);
      F.dibujarFlama (F.flama[1], 450, 300);
      F.dibujarFlama1 (F.flama[1], 190, 300, 100, 90);
      T.textosC(25, 255, T.todostexto[13], 100, 500);  
      T.textosC(20, 0, T.todostexto[14], 100, 550);
      T.textosC(20, 0, T.todostexto[7], 740, 250);
      F.dibujar (275, 190, 200, 100);
    }
    else if (estado.equals("baño")) {
      background(100, 100, 255);       
      delay=delay+1;
      P.dibujarFondo(P.img[14]);
      F.dibujarFlama1 (F.flama[2], 0, 0, 800, 480);
      Pr.dibujarPersonaje(Pr.IMA[3], 150, 440);
      B.dibujarBotones (410, 310, 60, 60);
      B.dibujarBotones (340, 310, 60, 60);
      T.textosC(25, 255, T.todostexto[9], 350, 500);
      T.textosC(50, 0, T.todostexto[10], 200, 300); 
      T.textosC(40, 0, T.todostexto[11], 420, 350);
      T.textosC(40, 0, T.todostexto[12], 345, 350);
    } 
    else if (estado.equals("habit1")) {
      background(100, 100, 255);
      delay=delay+1;
      P.dibujarFondo(P.img[4]);
      F.dibujarFlama (F.flama[1], 450, 200);
      F.dibujarFlama1 (F.flama[1], 405, 195, 100, 90);
      Pr.dibujar (Pr.IM[2], 150, 260);
      B.dibujarFlecha(B.Bot[1], 600, 500, 80, 50);
      F.dibujar (370, 325, 300, 150);
      F.dibujar (450, 325, 300, 150);
      F.dibujar (500, 325, 300, 150);      
      P.dibujarImg (P.img[11], 600, 0, 200, 50);
      T.textosC(20, 0, T.todostexto[6], 10, 500);
      T.textosC(20, 0, T.todostexto[7], 600, 560);
      Pr.salvar(Pr.IMA[1], 200, 100, Pr.salvado[1], 250, 150, T.todostexto[15], 290, 180, 300, 200);
    } 
    else if (estado.equals("habit2")) {
      background(100, 100, 255);
      fill(0);
      rect (10, 500, 80, 50);
      P.dibujarFondo(P.img[7]);
      F.dibujarFlama1 (F.flama[0], 130, 250, 500, 250);
      Pr.dibujarPersonaje (Pr.IMA[0], 200, 150);
      B.dibujarFlecha (B.Bot[2], 10, 500, 80, 50);
      T.textosC(20, 0, T.todostexto[6], 10, 500);
      T.textosC(20, 0, T.todostexto[7], 35, 560);
      Pr.salvar(Pr.IM[0], 300, 0, Pr.salvado[2], 330, 30, T.todostexto[16], 390, 70, 200, 100);
    } 
    else if (estado.equals("habit3")) {
      background(100, 100, 255);
      fill(100, 100, 255);
      rect(0, 500, 800, 600);
      delay=delay+1;
      P.dibujarFondo(P.img[8]);
      P.dibujarImg(P.img[11], 600, 0, 200, 50); 
      T.textosC(20, 0, T.todostexto[6], 0, 520);
      T.textosC(20, 0, T.todostexto[7], 600, 560);
      B.dibujarFlecha(B.Bot[1], 600, 500, 80, 50);
      F.dibujarFlama (F.flama[1], 590, 330);
      F.dibujarFlama1 (F.flama[0], 270, 105, 500, 250);
    } 
    else if (estado.equals("final1")) {
      delay=delay+1;
      background(100, 100, 255);
      P.dibujarFondo(P.img[0]);
      Pr.dibujarPersonaje (Pr.IMA[4], 540, 350);
      P.dibujarImg (P.img[11], 600, 0, 200, 50);
      T.textosC(20, 0, T.todostexto[17], 500, 590);
      T.dibujarTextos(25, 255, T.todostexto[18], 20, 400, 600, 600);
    } 
    else if (estado.equals("final2")) {
      delay=delay+1;
      background(100, 100, 255);
      T.textosC(20, 0, T.todostexto[19], 450, 590);
      T.dibujarTextos(30, amarillo, T.todostexto[20], 100, 50, 600, 200);
      T.dibujarTextos(25, 255, T.todostexto[21], 20, 100, 500, 400);
      P.dibujarImg1 (P.img[9], 100, 150);
    } 
    else if (estado.equals("creditos")) {
      delay=delay+1;
      background(100, 100, 255);
      P.dibujarFondo(P.img[11]);
      P.dibujarImg1 (P.img[15], 20, 300);
      T.Actualizar();
      T.dibujarTextos(35, amarillo, T.todostexto[22], 370, T.texX[0], 520, T.texX[1]);
      T.dibujarTextos(20, 255, T.todostexto[23], 450, T.texX[2], 550, T.texX[1]);
      T.dibujarTextos(20, 255, T.todostexto[24], 450, T.texX[3], 550, T.texX[1]);
      T.dibujarTextos(20, 255, T.todostexto[25], 450, T.texX[4], 550, T.texX[1]);
      T.dibujarTextos(20, 255, T.todostexto[26], 450, T.texX[5], 550, T.texX[1]);
      T.dibujarTextos(20, 255, T.todostexto[27], 450, T.texX[6], 550, T.texX[1]);
      T.dibujarTextos(25, 255, T.todostexto[28], 450, T.texX[7], 550, T.texX[1]);
      T.textosC(20, 0, T.todostexto[29], 10, 590);
    }
  }

  void teclas() {
    //cambio de : (presentacion) >> (casaincendiada)------------------------------
    if (keyCode==ENTER && estado.equals("presentacion")) {
      estado = "casaincendiada";
    }
    //cambio de : (casaincendiada) >> (direcciones)-------------------------------
    if (keyCode==CONTROL && estado.equals("casaincendiada")) {
      estado="direcciones";
    }
    //cambio de :(final1) >> (creditos)--------------------------------------------
    if (keyCode==ENTER && estado.equals("final1")) {
      estado="creditos";
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
      delay=0;
    }
    //cambio de :(final2) >> (creditos)--------------------------------------------
    if (keyCode==BACKSPACE && estado.equals("final2")) {
      estado="creditos";
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
      delay=0;
    } 
    //REINICIO ---cambio de :(creditos) >> (presentacion)--------------------------
    if (key==' '&& estado.equals("creditos")&& delay>5) {
      estado= "presentacion";
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
    }
  }
  void click(String b, int y1, int y2, int x1, int x2, int M, int M1) {
    pushStyle();
    if (mouseY>y1 && mouseY<y2+M && mouseX>x1 && mouseX<x2+M1 && delay>5) {
      estado = b;
      delay=0; 
      popStyle();
    }
  }
  void botones() {
    if (estado.equals("direcciones")) {
      click("comedor", 370, 370, 600, 600, 81, 100);
      click("sala", 370, 370, 100, 100, 81, 100);
      click("escaleras", 200, 200, 500, 500, 124, 100);
    }
    if (estado.equals("comedor")) {
      click("direcciones", 500, 500, 600, 600, 50, 80);
      if (mouseY>200 && mouseY< 200+223 && mouseX>0 && mouseX <0+150) {
        Pr.salvado[0]=true;
      }
    }
    if (estado.equals("sala")) {
      //FINAL DEL JUEGO
      if (mouseY>310 && mouseY<310+60 && mouseX>410 && mouseX<410+40) {
        estado="presentacion";
        Pr.salvado[0]=false;
        Pr.salvado[1]=false;
        Pr.salvado[2]=false;
      } else if (mouseY>310 && mouseY<310+60 && mouseX>340 && mouseX<340+60) {
        estado="final1"; 
        delay=0;
      }
    }
    if (estado.equals("escaleras")) {
      click("direcciones", 115, 115, 705, 705, 130, 130);
      click("habit1", 300, 300, 255, 255, 100, 100);
      click("habit2", 300, 300, 410, 410, 100, 100);
      click("habit3", 360, 360, 210, 210, 100, 100);
      click("baño", 30, 30, 335, 335, 100, 100);
    }
    if (estado.equals("baño")) {
      //FINAL DEL JUEGO
      click("presentacion", 310, 310, 410, 410, 60, 60);
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
      click("final1", 310, 310, 340, 340, 60, 60);
    }
    if (estado.equals("habit1")) {
      click("escaleras", 500, 500, 600, 600, 50, 80);
      if (mouseY>260 && mouseY< 260+185 && mouseX>150 && mouseX <150+185 &&  delay>5) {
        Pr.salvado[1]=true;
      }
    }
    if (estado.equals("habit2")) {
      click("escaleras", 500, 500, 10, 10, 50, 80);
      if (mouseY>150 && mouseY<150+162 && mouseX>200 && mouseX <200+150) {
        Pr.salvado[2]=true;
      }
    }
    if (estado.equals("habit3")) { 
      click("escaleras", 500, 500, 600, 600, 50, 80);
    }
  }
}
