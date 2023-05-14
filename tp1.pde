/* 
Nombre: Tomás Dutrinit
Numero de Legajo: 93536/9
Comisión: 3
TP: #1 - Variables y Condicionales, Obra de arte electrónico
*/

// declaracion con asignacion
int estado;
int cuentaFotograma = 0;
PFont miFuente;
PImage obra1;
PImage obra2;
PImage obra3;
PImage replay;

float x, despX;
float cuentaF;

void setup(){
  // 60 fps por defecto
  size(640,480);
  // cargamos los datos
  estado = 0;
  // texto
  miFuente = loadFont ("Georgia-Bold-48.vlw");
  // imágenes
  obra1 = loadImage ("data/obra1.jpg");
  obra2 = loadImage ("data/obra2.jpg");
  obra3 = loadImage ("data/obra3.jpg");
  replay = loadImage ("data/replay.jpg");
  frameRate (30); // establecemos en 30
  
  x = 0;
  despX = 2;
  cuentaF = 0;
}

void draw(){
  println ( frameRate );
  background(255);
// establezco una condicional para la pantalla de inicio
  if ( estado == 0 ) {
  // inicio
  noStroke();
  fill(0);
  ellipse(320,240,150,150);
  fill(255);
  triangle(360, 250, 300, 210, 300, 280);
  fill (0);
  textSize (1);
  // establecemos la tipografía
  textFont ( miFuente);
  text ("PLAY", 260,390);
} else if ( estado == 1 ) {
// MUESTRA PANTALLA 1
  background (187,188,173);
  image (obra1, 170, 50, 310, 372);
  textSize(20);
  text ("hyperultramegaconnected,",x,100);
  text ("by Filip Custic", x, 120);
  
  // texto en movimiento
  x+=despX;
  if ( x>400-120 ) {
    despX = -2;
  }
  if ( x<0 ) {
    despX = 2;
  }
  
  //incremento del contador
  cuentaFotograma++;
  if (cuentaFotograma>= 150){
    estado = 2 ;
  }
  
} else if ( estado == 2 ) {
// MUESTRA PANTALLA 2
  background (143,144,131);
  image (obra2, 170, 50, 310, 372);
  text ("árbol genealógico, by Filip Custic",x,100);
  
  
 // texto en movimiento
    x+=despX;
  if ( x>400-120 ) {
    despX = -2;
  }
  if ( x<0 ) {
    despX = 2;
  }
  
  //incremento del contador
  cuentaFotograma++;
  if (cuentaFotograma>= 150){
    estado = 3 ;
  }
 
} else if ( estado == 3 ) {

  // MUESTRA PANTALLA 3
  background (189,193,148);
  image (obra3, 170, 50, 310, 372);
  text ("mujer pájaro, by Filip Custic",x,100);
  
    // texto en movimiento
  x+=despX;
  if ( x>400-120 ) {
    despX = -2;
  }
  if ( x<0 ) {
    despX = 2;
  }
  
    //incremento del contador
  cuentaFotograma++;
  if (cuentaFotograma>= 150){
    estado = 4;
  }
} else if ( estado == 4 ) {
// MUESTRA PANTALLA 4
  text ("Restart",250,400);
  image (replay, 230, 100, 200, 200);
}

}

void mousePressed () {
  if ( estado == 0 ) {
    estado = 1 ;
  } else if ( estado == 1 ) {
    estado = 2 ;
  } else if ( estado == 2 ) {
    estado = 3 ;
  } else if ( estado == 3 ) {
    estado = 4 ;
  } else if ( estado == 4 ) {
    estado = 0 ;
  }
}
