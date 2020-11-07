class Texto {
  //PROPIEDADES 
 String [] todostexto=new String [34];
  int[] texX= new int [8];
  //TIPOGRAFÍA
  PFont tipog1;

  //CONSTRUCTOR
  Texto() {
    //PONER LA TIPOGRAFÍA
    tipog1=loadFont("ComicSansMS-48.vlw");
   cargarTextos();
   cargarTextosMovimiento ();
  }
  //MÉTODOS
  void Actualizar(){
     for (int i =0; i <8; i++) {
      texX[i]=texX[i]-4;
     }
  }
  void dibujarTextos(int tam, int c,String todostexto, int x, int y, int diam, int diam1) {
    pushStyle();
    textFont(tipog1);
    textSize(tam);
    fill(c);
    text(todostexto, x, y, diam, diam1);
    popStyle();
  }

  void textosC(int tam, int c, String todostexto, int x, int y) {
    pushStyle();
    textFont(tipog1);
    textSize(tam);
    fill(c);
    text(todostexto, x, y);
    popStyle();
  }
  
  void cargarTextos () {
    todostexto[0]="La casa Simpsons se esta incendiando, los bomberos no llegaran a tiempo. Homero debera salvar a los tres personajes que se encuentran atrapados en la casa...";
    todostexto[1]="[Presione enter para comenzar]";
    todostexto[2]="Homero tendra que tener mucho cuidado! es muy peligroso...";
    todostexto[3]="[Presiona Control para ingresar]";
    todostexto[4]="Debe buscar rapido, antes de que el fuego se propague por toda la casa.";
    todostexto[5]="[Presione con mouse una de las flechas]";
    todostexto[6]="[¡Busque personajes!, si encuentras haz click en el o ellos]";
    todostexto[7]="Volver";
    todostexto[8]="¡Ay caramba! gracias viejo...";
    todostexto[9]="¡Se quemó!";
    todostexto[10]="¿Volver a empezar?";
    todostexto[11]="Si";
    todostexto[12]="No";
    todostexto[13]="¡Homero tendra que revisarlas una por una y con cuidado!";
    todostexto[14]="[Haz click en las flecha para ingresar a la habitacion]";
    todostexto[15]="¡@ah ahia@!...";
    todostexto[16]="¡Hijo!    Pensé que se olvidarian de mi...";
    todostexto[17]="[Presiona enter para finalizar]";
    todostexto[18]="Al dia siguiente Lisa Simpsons les brindo un homenaje a sus seres queridos por el tragico desenlace del incendio, debido a que homero se quemo al intentar rescatar a sus familiares.";
    todostexto[19]="[Presiona Backspace para finalizar]";
    todostexto[20]="¡Homero logro salvar a su familia!" ;
    todostexto[21]="El grandioso acto de Homero se difundio por todo Springfield, lo que genero que homero sea considerado un heroe para la ciudad pero, principalmente para su familia.";
    todostexto[22]="¡La aventura ha finalizado!";
    todostexto[23]="Facultad de Arte UNLP";
    todostexto[24]="Tecno Multimedia_1";
    todostexto[25]="Prof: Matias Jauregui";
    todostexto[26]="Alumna: Castro Denise";
    todostexto[27]="Comisión 2";
    todostexto[28]="¡GRACIAS!";
    todostexto[29]= "[Presiona barra espaciadora para reiniciar]";
  }
  
  void cargarTextosMovimiento () {
  texX[0]=700;
  texX[1]=0;
  texX[2]=750;
  texX[3]=780;
  texX[4]=810;
  texX[5]=840;
  texX[6]=870;
  texX[7]=900;
  }
}
