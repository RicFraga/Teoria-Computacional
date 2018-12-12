/* INSTITUTO POLITECNICO NACIONAL  
 ESCUELA SUPERIOR DE COMPUTO
 Teoría Computacional
 Profesor Genaro Juárez Martínez
 
 Strange Planet
 
 Ricardo Alcaraz Fraga
 2CV1 */

int especies = 10;
int factor_escala=35;
int a, b, c;
String poblacion = "";
float ant_x;
float ant_y;
float primx;
float primy;
ArrayList<String> generadas = new ArrayList<String>();

void setup()
{
  fullScreen();
  background(0);
}

void draw()
{
  background(0);
  translate(50, height/2);
  noLoop();
  //scale(width/(especies*100));

  a = 1;
  b = 1;
  c = especies-(a+b);
  ant_x = (a+0.35)*factor_escala;
  ant_y = b*factor_escala;
  primx = ant_x;
  primy = ant_y;
  dibujo(); 

  while (!planetaFallido(a, b, c) && !generada())
  {
    if (c>=1 && b>=1) {
      c--;
      b--;
      a+=2;
      dibujo();
    } else if (a>=1 && b>=1) {
      a--;
      b--;
      c+=2;
      dibujo();
    } else if (a>=1 && c>=1) {
      a--;
      c--;
      b+=2;
      dibujo();
    }
  }

  a = 1;
  b = 1;
  c = especies - (a+b);

  a--;
  b--;
  c+=2;
  ant_x = primx;
  ant_y = primy;
  dibujo();
}

boolean planetaFallido(int a, int b, int c) {  
  if (a == 0 && b == 0 && c != 0)
    return true;

  else if (a == 0 && b != 0 && c == 0)
    return true;

  else if (a != 0 && b == 0 && c == 0)
    return true;

  return false;
}

boolean generada() {
  for (int i=0; i<generadas.size(); i++) {
    if (poblacion.equals(generadas.get(i))) 
      return true;
  }

  generadas.add(poblacion);

  return false;
}

void dibujo() {
  poblacion = "";
  poblacion += a;
  poblacion += " ";
  poblacion += b;
  poblacion += " ";
  poblacion += c;

  fill(84, 40, 232);
  stroke(84, 40, 232);
  ellipse((a+0.35)*factor_escala, b*factor_escala, 40, 40);

  line((a+0.35)*factor_escala, b*factor_escala, ant_x, ant_y);
  ant_x = (a+0.35)*factor_escala;
  ant_y = b*factor_escala;

  fill(0);
  textSize(9);
  text(poblacion, a*factor_escala, b*factor_escala);
}
