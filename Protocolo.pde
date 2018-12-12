/* INSTITUTO POLITECNICO NACIONAL  
ESCUELA SUPERIOR DE COMPUTO
Teoría Computacional
Profesor Genaro Juárez Martínez

Automata de Protocolo

Ricardo Alcaraz Fraga
2CV1 */

PrintWriter generadas,aceptadas;
int num=10,lon=10;

void setup()
{
    // Se piensa en una pantalla gráfica de 630 x 600
    textSize(15);
    strokeWeight(4);
    size(630,600);
    background(0);
    noLoop();
    generadas = createWriter("Cadenas Generadas.txt");
    aceptadas = createWriter("Cadenas Aceptadas.txt");
    
    aceptadas.flush();
    generadas.flush();
}

void draw()
{
    int op;
    int cadena[] = new int [lon];
    
     // --> CICLOS
    
    // El ciclo de time
    fill(0);
    noStroke();
    stroke(255);
    ellipse(470,90,26,26);
    
    // --> ESTADOS
    
    fill(255);
    // Estado de I/O
    ellipse(180,110,50,50);
    // Estado de time
    ellipse(450,110,50,50);
    // Estado Qo
    ellipse(320,200,50,50);
    // Estado Q1
    ellipse(450,300,50,50);
    // Estado Q2
    ellipse(180,300,50,50);
    // Estado Q3
    ellipse(320,400,50,50);
    
    // --> LINEAS
    
    // Línea de start
    line(100,102,153,102);
    // Linea de data
    line(180,100,450,100);
    // La conexión con el autómata imparidad
    line(460,110,330,180);
    // Q0 -> Q1
    line(320,180,450,290);
    // Q1 -> Q0
    line(320, 210,450,320);
    // Q0 -> Q2
    line(320,180,180,290);
    // Q2 -> Q0
    line(320,210,180,320);
    // Q2 -> Q3
    line(180,280,320,390);
    // Q3 -> Q2
    line(180,310,320,420);
    // Q1 -> Q3
    line(450,280,320,380);
    // Q3 -> Q1
    line(450,310,320,410);
    // Q2 a I/0
    line(176,276,176,134);
    // Q3 a I/0
    line(319,428,318,447);
    line(318,447,141,447);
    line(141,447,141,155);
    line(141,155,162,131);
    // Q1 a I/0
    line(451,324,451,469);
    line(451,469,112,469);
    line(112,469,112,154);
    line(112,154,154,121);
    
    // --> FLECHAS
    
    // Triángulo de Start
    line(146,94,155,101);
    line(144,113,155,101);
    // Triángulo de I/0 a data
    line(405,90,425,100);
    line(405,110,425,100);
    // Triángulo de time
    line(480,90,470,110);
    line(490,100,465,105);
    // Triángulo de time a Qo
    line(325,190,340,160);
    line(325,180,355,180);
    // Triángulo de Qo a Q1
    line(430,260,443,300);
    line(415,270,450,285);
    // Triángulo de Q1 a Qo
    line(335,221,350,220);
    line(332,220,345,240);
    // Triángulo de Q1 a Q3
    line(335,400,358,370);
    line(335,390,358,400);
    // Triángulo de Q3 a Q1
    line(420,314,423,301);
    line(401,298,423,301);
    // Triángulo de Q2 a Q3
    line(276,404,294,400);
    line(288,381,294,397);
    // Triángulo de Q3 a Q2
    line(210,314,207,303);
    line(226,300,207,301);
    // Triángulo de Q2 a Q0
    line(285,225,304,223);
    line(304,234,305,222);
    // Triángulo de Q0 a Q2
    line(192,267,195,278);
    line(208,278,196,278);
    // Triángulo de Q1 a I/0
    line(146,117,154,120);
    line(152,127,154,121);
    // Triángulo de Q3 a I/0
    line(156,131,161,131);
    line(165,139,163,131);
    // Triángulo de Q2 a I/0
    line(170,142,175,136);
    line(184,140,175,136);
    
    // --> ESTADOS FINALES
    stroke(200,2,160);
    noFill();
    strokeWeight(4);
    ellipse(180,300,40,40);
    ellipse(450,300,40,40);
    ellipse(320,400,40,40);
    
    // --> NOMBRES DE ESTADOS
    
    fill(130,0,143);
    text("START",111,87);
    text("I/O",175,115);
    text("data",300,90);
    text("time",490,90);
    text("Qo",313,200);
    text("Q1",443,300);
    text("Q2",173,300);
    text("Q3",313,400);
    text("1",393,230);
    text("1",358,266);
    text("0",239,221);
    text("0",272,269);
    text("1",267,334);
    text("1",228,366);
    text("0",367,327);
    text("0",406,366);
    
   // Generamos un número aleatorio entre 0 y 1 para saber si está encendido o apagado
   op = int(random(2));
   
   if(op == 0)
   {
       System.out.println("El autómata no se inicializó");       
       exit();
   }
   
   while(true)
   {
     for(int i=0;i<num;i++)
     {
         for(int j=0;j<lon;j++)
         {
             op = int(random(2));
             generadas.print(op);
             cadena[j] = op;
         }
         generadas.println();
         
       op = 0;
       for(int k=0;k<lon;k++)
       { 
           switch(cadena[k])
           {
               case 1:
                   
                  if(op == 0)
                     op = 1;                    

                  else if(op == 1)
                    op = 0;
                    
                  else if(op == 2)
                    op = 3;
                    
                   else if(op == 3)
                     op = 2;
                   
               break;
               
               case 0:
                 
                  if( op == 0)
                    op = 2;
                    
                  else if(op == 2)
                    op = 0;
                    
                  else if(op == 3)
                    op = 1;
                    
                  else if(op == 1)
                     op = 3;
          
               break;
           }
       }
       
       if(op!=0)
       {
           for(int k=0;k<lon;k++)
           {
             aceptadas.print(cadena[k]);
           }
           
           aceptadas.println("");
       }
     }
     
     generadas.println(", ");
     aceptadas.println(", ");
    
     op = int(random(2));
     
     if(op == 0)
       break;
   }
   
   generadas.close();
   aceptadas.close();
}
