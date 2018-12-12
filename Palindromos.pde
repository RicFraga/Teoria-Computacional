/* INSTITUTO POLITECNICO NACIONAL  
 ESCUELA SUPERIOR DE COMPUTO
 Teoría Computacional
 Profesor Genaro Juárez Martínez
 
 Generación de Palíndromos
 
 Ricardo Alcaraz Fraga
 2CV1 */

int longitud = (23) - 3;
void setup() 
{
  fullScreen();
  background(0);
}

void draw()
{ 
  String cadena = "", auxiliar = "";
  int regla;
  PrintWriter camino = createWriter("Camino.txt");
  camino.flush();

  noLoop();
  stroke(255);
  translate(30, height/2);

  // Se elige aleatoriamente con que regla se comenzará
  regla = (int)random(2);

  if (regla == 0) {
    cadena = "0";    // OPO
    camino.println("0P0");
  } else {
    cadena = "1";    // 1P1
    camino.println("1P1");
  }

  // Se suistituirán reglas hasta que se llegue a la longitud deseada
  for (int i=0; i < (int)longitud / 2; i++) {
    // Se elige aleatoriamente con que regla se seguirá
    regla = (int)random(2);

    if (regla == 0) { 
      cadena += "0";
      camino.println("0P0");
    } else {
      cadena += "1";
      camino.println("1P1");
    }
  }

  // Se elige aleatoriamente con que regla se terminará
  regla = (int)random(3);

  if (regla == 0) {
    cadena += "ε";
    camino.println("ε");
  } else if (regla == 1) { 
    cadena += "0";
    camino.println("0");
  } else if (regla == 2) { 
    cadena += "1";
    camino.println("1");
  }

  for (int i=(cadena.length()) - 2; i >= 0; i--)
    auxiliar += cadena.charAt(i);

  cadena += auxiliar;  
  textSize(50);
  fill(255);
  text(cadena, 0, 300);

  // Dibujo del palíndromo
  for (int i = 0; i <cadena.length(); i++) {
    if (cadena.charAt(i) == '0') {
      fill(#F21820);
      stroke(#F21820);
      ellipse(i*60, 0, 60, 60);
    } else if (cadena.charAt(i) == '1') {
      fill(#1825F2);
      stroke(#1825F2);
      ellipse(i*60, 0, 60, 60);
    } else if (cadena.charAt(i) == 'ε') {
      fill(247, 245, 240);
      stroke(247, 245, 240);
      ellipse(i*60, 0, 60, 60);
    }
  }
  camino.close();
}
