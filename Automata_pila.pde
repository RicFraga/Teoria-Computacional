/* INSTITUTO POLITECNICO NACIONAL  
 ESCUELA SUPERIOR DE COMPUTO
 Teoría Computacional
 Profesor Genaro Juárez Martínez
 
 Autómata a Pila
 
 Ricardo Alcaraz Fraga
 2CV1 */

String cadena = "0000111100";  // Aquí se pone la cadena que se quiera procesar
char estado = 'p', auxiliar = 'p';
String copia = cadena;
float ycad,y;
int cont=0,indice;

void setup() {
  background(0);
  //size(800, 600);
  fullScreen();
}

void draw() {
  background(0);
  noLoop();
  
  //Dibujo de la pila
  stroke(201,197,197);
  strokeWeight(8);
  line(76,116,76,468);
  line(76,468,289,468);
  line(289,468,289,116);
  textSize(50);

  Pila a = new Pila();
  a.initialize();
  
  a.push("Zo");
  fill(79,48,224);
  text("Zo",169,442);
  text(copia,width/2,332);
  y = 442;
  
  save("Captura "+cont+".jpg");
  cont++;
  
  // Si la cadena tiene tamaño 0 o 1, se rechaza
  if (cadena.length() <= 1) {
    System.out.println("Cadena rechazada");
    auxiliar = 'm';
  }
  // Si la cadena tiene dos o más caracteres,se procesa
  else {
    for (int i=0; i<cadena.length(); i++) {
      // Si se encuentra en el estado p y llega un 0, se hace push a una X a la pila
      if (cadena.charAt(i) == '0' && auxiliar == 'p') {
        a.push("X");
        y -= 40;
        text("X",169+4,y);
        indice++;
        save("Captura "+cont+".jpg");
        cont++;
      }
      // Si se encuentra en el estado q y llega un 0, no se reconoce la cadena
      else if (cadena.charAt(i) == '0' && auxiliar == 'q') {
        System.out.println("Cadena rechazada");
        // Se mueve a un estado que no exista para que no vuelva a entrar a ninguna condición
        auxiliar = 'm';
        // Si se encuentra un 1 y está en p, hace pop y se mueve a q
      } else if (cadena.charAt(i) == '1' && auxiliar == 'p') {
        a.pop();
        
        fill(0);
        text("X",169+4,y);
        indice++;
        save("Captura "+cont+".jpg");
        y += 40;
        cont++;
        estado = 'q';
        auxiliar = 'q';
        // Si se encuentra un 1 y está en q, hace pop
      } else if (cadena.charAt(i) == '1' && auxiliar == 'q') {
        a.pop();
        text("X",169+4,y);
        y += 40;
        save("Captura "+cont+".jpg");
        cont++;
      }
    }
    if (a.sizeof() == 1 && auxiliar == 'q') {
      System.out.println("Cadena aceptada");
      background(0);
      textSize(60);
      fill(10,200,90);
      text("CADENA ACEPTADA",width/4,90);
      PImage img;
      img = loadImage("apusi.jpg");
      image(img, 40, 100);
      
    } else {
      System.out.println("Cadena rechazada");
      background(0);
      textSize(40);
      fill(10,200,90);
      text("CADENA RECHAZADA",(width/4) + 90,90);
      PImage img;
      img = loadImage("apuno.jpg");
      image(img, width/4, 200);
    }
  }  
  // Aquí termina el programa
}
