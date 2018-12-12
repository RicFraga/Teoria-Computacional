/* INSTITUTO POLITECNICO NACIONAL  
 ESCUELA SUPERIOR DE COMPUTO
 Teoría Computacional
 Profesor Genaro Juárez Martínez
 
 Máquina de Turing
 
 Ricardo Alcaraz Fraga
 2CV1 */

int a = 0;
int j=1, estado=0, m=0, indice=-1;
String cadena = "0000011111";
PrintWriter f;
void setup()
{
  size(800, 500);
  f = createWriter("Escritura.txt");
  f.flush();
  f.println(cadena);
  cadena += 'B';
}

void draw()
{
  if (cadena.length() == 11) {
    background(0);
    noStroke();
    fill(#F50F0F);  
    rect(70, 284, 660, 116);
    noStroke();
    fill(80);
    rect(294, 34, 170, 90, 18);
    stroke(0);
    for (int i=1; i<11; i++)
      line(i*66, 284, i*66, 400);

    noStroke();
    fill(#FA6914);
    triangle(70+j, 213, 140+j, 213, 105+j, 274);
    fill(255);
    textSize(40);
    text(cadena.charAt(0), 90, 354);
    text(cadena.charAt(1), 155, 354);
    text(cadena.charAt(2), 220, 354);
    text(cadena.charAt(3), 285, 354);
    text(cadena.charAt(4), 350, 354);
    text(cadena.charAt(5), 415, 354);
    text(cadena.charAt(6), 480, 354);
    text(cadena.charAt(7), 545, 354);
    text(cadena.charAt(8), 610, 354);
    text(cadena.charAt(9), 675, 354);

    char[]aux = cadena.toCharArray();
    if (estado == 0 && cadena.charAt(m) == '0') {
      estado = 1;
      stroke(255);
      text("q1", 351, 93);
      aux[m] = 'X';          
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);   
      save("Captura"+a+".jpg");
      a++;
    } else if (estado == 1 && cadena.charAt(m) == '0') {
      estado = 1;
      stroke(255);
      text("q1", 351, 93);
      aux[m] = '0';
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);
      save("Captura"+a+".jpg");
      a++;
    } else if (estado == 2 && cadena.charAt(m) == '0') {
      estado = 2;
      stroke(255);
      text("q2", 351, 93);
      aux[m] = '0';
      cadena = String.valueOf(aux);
      MoverCabezaIzq();
      f.println(aux);
      save("Captura"+a+".jpg");
      a++;
    } else if (estado == 1 && cadena.charAt(m) == '1') {
      estado = 2;
      stroke(255);
      text("q2", 351, 93);
      aux[m] = 'Y';
      cadena = String.valueOf(aux);
      MoverCabezaIzq();
      f.println(aux);
      save("Captura"+a+".jpg");
      a++;
    } else if (estado == 2 && cadena.charAt(m) == 'X') {
      estado = 0;
      stroke(255);
      text("q0", 351, 93);
      aux[m] = 'X';
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);        
      save("Captura"+a+".jpg");
      a++;
    } else if (estado == 0 && cadena.charAt(m) == 'Y') {
      estado = 3;
      stroke(255);
      text("q3", 351, 93);
      aux[m] = 'Y';
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);        
      save("Captura"+a+".jpg");
      a++;
    } else if (estado == 1 && cadena.charAt(m) == 'Y') {
      estado = 1;
      stroke(255);
      text("q3", 351, 93);
      aux[m] = 'Y';
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);        
      save("Captura"+a+".jpg");
      a++;
    } else if (estado == 2 && cadena.charAt(m) == 'Y') {
      estado = 2;
      stroke(255);
      text("q3", 351, 93);
      aux[m] = 'Y';
      cadena = String.valueOf(aux);
      MoverCabezaIzq();
      f.println(aux);        
      save("Captura"+a+".jpg");
      a++;
    } else if (estado == 3 && cadena.charAt(m) == 'Y') {
      estado = 3;
      stroke(255);
      text("q3", 351, 93);
      aux[m] = 'Y';
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);
      save("Captura"+a+".jpg");
      a++;
    } else if (estado == 3 && cadena.charAt(m) == 'B') {
      estado = 4;
      fill(0, 180, 30);
      text("q4", 351, 93);
      aux[m] = 'B';
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);  
      save("Captura"+a+".jpg");
      a++;
    } else {      
      noLoop();
      f.println("Cadena Rechazada");
      delay(2000);
      f.close();
      save("Captura"+a+".jpg");
      a++;
    }
    if (estado == 4) { 
      //delay(3000);
      f.println("Cadena Aceptada");
      noLoop();
      f.close();
      save("Captura"+a+".jpg");
      a++;
    }
    //delay(1000);
  }

  // Si la cadena es muy larga para animarse
  else {            
    char[]aux = cadena.toCharArray();
    if (estado == 0 && cadena.charAt(m) == '0') {
      estado = 1;      
      aux[m] = 'X';          
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);        
    } else if (estado == 1 && cadena.charAt(m) == '0') {
      estado = 1;      
      aux[m] = '0';
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);        
    } else if (estado == 2 && cadena.charAt(m) == '0') {
      estado = 2;      
      aux[m] = '0';
      cadena = String.valueOf(aux);
      MoverCabezaIzq();
      f.println(aux);        
    } else if (estado == 1 && cadena.charAt(m) == '1') {
      estado = 2;      
      aux[m] = 'Y';
      cadena = String.valueOf(aux);
      MoverCabezaIzq();
      f.println(aux);        
    } else if (estado == 2 && cadena.charAt(m) == 'X') {
      estado = 0;      
      aux[m] = 'X';
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);        
    } else if (estado == 0 && cadena.charAt(m) == 'Y') {
      estado = 3;      
      aux[m] = 'Y';
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);        
    } else if (estado == 1 && cadena.charAt(m) == 'Y') {
      estado = 1;      
      aux[m] = 'Y';
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);        
    } else if (estado == 2 && cadena.charAt(m) == 'Y') {
      estado = 2;      
      aux[m] = 'Y';
      cadena = String.valueOf(aux);
      MoverCabezaIzq();
      f.println(aux);        
    } else if (estado == 3 && cadena.charAt(m) == 'Y') {
      estado = 3;      
      aux[m] = 'Y';
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);        
    } else if (estado == 3 && cadena.charAt(m) == 'B') {
      estado = 4;     
      aux[m] = 'B';
      cadena = String.valueOf(aux);
      MoverCabezaDer();
      f.println(aux);  
    } else {      
      noLoop();
      f.println("Cadena Rechazada");      
      f.close();
    }
    if (estado == 4) {       
      f.println("Cadena Aceptada");
      noLoop();
      f.close();
    }
  }
}

void MoverCabezaDer()
{
  j+=65;
  indice++;
  m++;
}

void MoverCabezaIzq() 
{
  j-=65;
  indice--;
  m--;
}
