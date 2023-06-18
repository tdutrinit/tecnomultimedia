/* 
Nombre: Tomás Dutrinit
Numero de Legajo: 93536/9
Comisión: 3
TP: #2 - Funciones y Ciclos FOR
*/

void opticalRect () {
noStroke();
   for (int i=2; i<15 ; i++ ) {
    // 15 cuadrados, concéntrico
    rectMode (CENTER);
              // mapeo, variable i que va de 0 a 14 (último cuadrado) primer valor 400 ultimo 0
    float tam = map (i, 0, 14, 400, 0);
    if (i%2 == 0) {

      fill ( lerpColor(startFade, endFade, map(i,0,14,0,1)) );
    } else {
      fill (255);
    }
    rect (0, 0, tam, tam);
    rotate ( radians (ang) );
    // rota todos los cuadrados dentro del for
  }
}
