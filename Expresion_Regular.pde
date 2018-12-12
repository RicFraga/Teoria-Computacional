/* INSTITUTO POLITECNICO NACIONAL  
ESCUELA SUPERIOR DE COMPUTO
Teoría Computacional
Profesor Genaro Juárez Martínez

Expresión Regular

Ricardo Alcaraz Fraga
2CV1 */

int x = 0;
int total = 100;

void setup()
{
    background(30);
    size(700,300);
    colorMode(HSB);
    
    int rand,rand2,rand3,rand4,indice=0,hechas=0;
    String cadena_gen;
    String generadas [] = new String[total];
    PrintWriter cadenas_lenguaje = createWriter("Cadenas del lenguaje.txt");
    
    cadenas_lenguaje.flush();
    
    while(hechas < total)
    {
        cadena_gen = "";
        rand = (int)random(2);
        
        // La primera opción es que elijas la parte derecha de la ER
        if(rand == 1)
        {
            cadena_gen = "00";
            // La agregas al archivo si no la has generado anteriormente
            if(!repetida(cadena_gen,generadas,indice) && indice< total)
            {
                cadenas_lenguaje.println(cadena_gen);
                generadas[indice] = cadena_gen;
                hechas++;
                indice++;
            }
        }
        
        else
        {
            // En caso contrario, se usa la parte izquierda de la expresión regular
            cadena_gen="0";
            // Generas un número aleatorio entre 0 y 1 para ver si concatenarás 11
            rand = (int)random(2);
            // Se concatena 11 hasta que el número aleatorio deje de ser 0
            while(rand==0)
            {
                cadena_gen+="11";
                rand = (int)random(2);
            }
            
            // Si el aleatorio es 0, no toma en cuenta la parte de enmedio de la ER
            rand = (int)random(2);
            if(rand == 0)
            {
                // Si no se ha generado la cadena se agrega al archivo
                if(!repetida(cadena_gen,generadas,indice) && indice < total)
                {
                  cadenas_lenguaje.println(cadena_gen);
                  generadas[indice] = cadena_gen;
                  hechas++;
                  indice++;
                }
                
            }
            
            // En caso contrario realizas la parte de enmedio de la ER
            else
            {   
                while(rand == 1)
                {
                rand4 = (int)random(2);
                
                // Si rand = 0, trabaja con (00 + 01)*
                if(rand4 == 0)
                {                  
                    rand2 = (int)random(2);
                    //Si rand2 = 0, 00 + 01 = E
                    if(rand2 == 0);
     
                    // Si rand2 = 1, se ve si se usará 00 o 01
                    else
                    {
                        while(rand2 == 1)
                        {
                            rand3 = (int)random(2);
                            // Si rand3 = 0, se concatena 00
                            if(rand3 == 0)
                                cadena_gen+="00";
                            
                            //Si es 1, se concatena 01
                            if(rand3 == 1)
                                cadena_gen+="01";
                            
                            // Si no se ha generado la cadena se agrega al archivo
                            if(!repetida(cadena_gen,generadas,indice) && indice < total)
                            {
                                cadenas_lenguaje.println(cadena_gen);
                                generadas[indice] = cadena_gen;
                                hechas++;
                                indice++;
                            }
                            
                         rand2 = (int)random(2);
                         
                        }
                    }
   
                }
                
                //Si rand = 1, se trabaja con (E+0+01)*
                else
                {
                    rand2 = (int)random(2);
                    // Si rand2 = 0, E + 0 + 01 = E
                    if(rand2 == 0);
                    
                    // Si rand2 = 1, se trabajará con E + 0 +01
                    else    
                    {  
                        // Se seguirá concatenando mientras rand2 = 1
                        while(rand2 == 1)
                        {
                            rand3 = (int)random(4);
                            // Si rand3 = 0 o rand3 = 1, se tomará E
                            if(rand3 == 0 || rand3 == 1);
                            
                            // Si rand3 = 2, se toma 0
                            else if(rand3 == 1)
                                cadena_gen+="0";
                            
                            // Si rand3 = 3, se toma 01
                            else
                                cadena_gen+="01";
                            
                             // Si no se ha generado la cadena se agrega al archivo
                            if(!repetida(cadena_gen,generadas,indice) && indice < total)
                            {
                                cadenas_lenguaje.println(cadena_gen);
                                generadas[indice] = cadena_gen;
                                hechas++;
                                indice++;
                            }
                            
                        rand2 = (int)random(2);
                       
                        }
                    }
                    
                }
                
                rand = (int)random(2);
              }  
                
                
            }       
        }
    }
    
    cadenas_lenguaje.close();
}

/* Recibe: Un string y un arreglo de Strings
   Regresa: True en caso de que la string se encuentre en el arreglo de strings, False en caso de que no se encuentre en el arreglo de strings */
boolean repetida(String buscar, String[] donde,int index)
{
    for(int i=0;i<index;i++)
    {
        if(donde[i].equals(buscar))
          return true;
    }
  
    return false;
}

void draw()
{    
    translate(width/2,height/2);
    fill(x,223,223);
    textSize(34);
    text("0(11)*[(00+01)* + (ε + 0 + 01)*]*+00",-320,0);
    
    x+=1;
    
    if(x>255)
    {
        while(x>=0)
          x--;
    }  
}
