/* INSTITUTO POLITECNICO NACIONAL  
ESCUELA SUPERIOR DE COMPUTO
Teoría Computacional
Profesor Genaro Juárez Martínez

Autómata ANSI C

Ricardo Alcaraz Fraga
2CV1 */

float posx,posy;

void setup()
{  
    fullScreen();
    background(0);
    
    int fila,columna,estado;
    int aut=0;
    int brea=0;
    int cas=0;
    int cha=0;
    int cons=0;
    int continu=0;
    int defaul=0;
    int d=0;
    int doubl=0;
    int els=0;
    int enu=0;
    int exter=0;
    int floa=0;
    int fo=0;
    int got=0;
    int i=0;
    int in=0;
    int lon=0;
    int registe=0;
    int retur=0;
    int shor=0;
    int signe=0;
    int sizeo=0;
    int stati=0;
    int struc=0;
    int switc=0;
    int typede=0;
    int unio=0;
    int unsigne=0;
    int voi=0;
    int volatil=0;
    int whil=0;
   
    String line;
    PrintWriter encontradas = createWriter("Encontradas.txt");
    String[] lines = loadStrings("Lectura.txt");
    
    encontradas = createWriter("Encontradas.txt");
    encontradas.flush();
    
    for(int j=0;j<lines.length;j++)
    {
        line = lines[j];
        estado = 0;
        fila = j+1;
        
        for(int k =0;k<line.length();k++)
        {                   
          columna = k+1;
          
          switch(line.charAt(k))
          {
                  case 'a':
                  
                  if(estado == 0)
                  {
                      estado = 1;
                  }
                  
                  else if(estado == 7)
                  {
                      estado = 8;
                  }
                  
                  else if(estado == 10)
                  {
                      estado = 11;
                  }
                  
                  else if(estado == 14)
                  {
                      estado = 15;
                  }
                  
                  else if(estado == 28)
                  {
                      estado = 29;
                  }
                  
                  else if(estado == 52)
                  {
                      estado = 53;
                  }
                  
                  else if(estado == 95)
                  {
                      estado = 96;
                  }
                  
                  else if(estado == 131)
                  {
                      estado = 132;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                                    
                  break;
                  
                  case 'b':
                  
                  if(estado == 0)
                  {
                      estado = 5;
                  }
                  
                  else if(estado == 34)
                  {
                      estado = 35;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'c':
                  
                  if(estado == 0)
                  {
                      estado = 10;
                  }
                  
                  else if(estado == 98)
                  {
                      estado = 99;
                  }
                  
                  else if(estado == 101)
                  {
                      estado = 102;
                  }
                  
                  else if(estado == 106)
                  {
                      estado = 107;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'd':
                  
                  if(estado == 0)
                  {
                      estado = 26;
                  }
                  
                  else if(estado == 89)
                  {
                      estado = 90;
                  }
                  
                  else if(estado == 112)
                  {
                      estado = 113;
                  }
                  
                  else if(estado == 125)
                  {
                      estado = 126;
                  }
                  
                  else if(estado == 129)
                  {
                      estado = 130;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'e':
                  
                  if(estado == 0)
                  {
                      estado = 38;
                  }
                  
                  else if(estado == 6)
                  {
                      estado = 7;
                  }
                  
                  else if(estado == 12)
                  {
                      estado = 13;
                  }
                  
                  else if(estado == 24)
                  {
                      estado = 25;
                  }
                  
                  else if(estado == 26)
                  {
                      estado = 27;
                  }
                  
                  else if(estado == 36)
                  {
                      estado = 37;
                  }
                  
                  else if(estado == 40)
                  {
                      estado = 41;
                  }
                  
                  else if(estado == 46)
                  {
                      estado = 47;
                  }
                  
                  else if(estado == 69)
                  {
                      estado = 70;
                  }
                  
                  else if(estado == 74)
                  {
                      estado = 75;
                  }
                  
                  else if(estado == 88)
                  {
                      estado = 89;
                  }
                  
                  else if(estado == 91)
                  {
                      estado = 92;
                  }
                  
                  else if(estado == 111)
                  {
                      estado = 112;
                  }
                  
                  else if(estado == 113)
                  {
                      estado = 114;
                  }
                  
                  else if(estado == 124)
                  {
                      estado = 125;
                  }
                  
                  else if(estado == 135)
                  {
                      estado = 136;
                  }
                  
                  else if(estado == 140)
                  {
                      estado = 141;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'f':
                  
                  if(estado == 0)
                  {
                      estado = 50;
                  }
                  
                  else if(estado == 27)
                  {
                      estado = 28;
                  }
                  
                  else if(estado == 61)
                  {
                      estado = 62;
                  }
                  
                  else if(estado == 93)
                  {
                      estado = 94;
                  }
                  
                  else if(estado == 114)
                  {
                      estado = 115;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                                    
                  break;
                  
                  case 'g':
                  
                  if(estado == 0)
                  {
                      estado = 57;
                  }
                  
                  else if(estado == 67)
                  {
                      estado = 68;
                  }
                  
                  else if(estado == 70)
                  {
                      estado = 71;
                  }
                  
                  else if(estado == 86)
                  {
                      estado = 87;
                  }
                  
                  else if(estado == 122)
                  {
                      estado = 123;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'h':
                  
                  if(estado == 10)
                  {
                      estado = 14;
                  }
                  
                  else if(estado == 81)
                  {
                      estado = 82;
                  }
                  
                  else if(estado == 107)
                  {
                      estado = 108;
                  }
                  
                  else if(estado == 137)
                  {
                      estado = 138;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                                                     
                  break;
                  
                  case 'i':
                  
                  if(estado == 0)
                  {
                      estado = 61;
                  }
                  
                  else if(estado == 21)
                  {
                      estado = 22;
                  }
                  
                  else if(estado == 71)
                  {
                      estado = 72;
                  }
                  
                  else if(estado == 97)
                  {
                      estado = 98;
                  }
                  
                  else if(estado == 104)
                  {
                      estado = 105;
                  }
                  
                  else if(estado == 117)
                  {
                      estado = 118;
                  }
                  
                  else if(estado == 121)
                  {
                      estado = 122;
                  }
                  
                  else if(estado == 128)
                  {
                      estado = 129;
                  }
                  
                  else if(estado == 133)
                  {
                      estado = 134;
                  }
                  
                  else if(estado == 138)
                  {
                      estado = 139;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                                    
                  break;
                  
                  case 'j':
                  
                  estado = 0;
                  
                  break;
                  
                  case 'k':
                  
                  if(estado == 8)
                  {
                      estado = 9;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                                    
                  break;
                  
                  case 'l':
                  
                  if(estado == 0)
                  {
                      estado = 65;
                  }
                  
                  else if(estado == 35)
                  {
                      estado = 36;
                  }
                  
                  else if(estado == 38)
                  {
                      estado = 39;
                  }
                  
                  else if(estado == 50)
                  {
                      estado = 51;
                  }
                  
                  else if(estado == 128)
                  {
                      estado = 131;
                  }
                  
                  else if(estado == 134)
                  {
                      estado = 135;
                  }
                  
                  else if(estado == 139)
                  {
                      estado = 140;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'm':
                  
                  if(estado == 43)
                  {
                      estado = 44;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'n':
                  
                  if(estado == 17)
                  {
                      estado = 18;
                  }
                  
                  else if(estado == 38)
                  {
                      estado = 42;
                  }
                  
                  else if(estado == 48)
                  {
                      estado = 49;
                  }
                  
                  else if(estado == 61)
                  {
                      estado = 63;
                  }
                  
                  else if(estado == 66)
                  {
                      estado = 67;
                  }
                  
                  else if(estado == 79)
                  {
                      estado = 80;
                  }
                  
                  else if(estado == 87)
                  {
                      estado = 88;
                  }
                  
                  else if(estado == 116)
                  {
                      estado = 117;
                  }
                  
                  else if(estado == 119)
                  {
                      estado = 120;
                  }
                  
                  else if(estado == 123)
                  {
                      estado = 124;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                                                      
                  break;
                  
                  case 'o':
                  
                  if(estado == 3)
                  {
                      estado = 4;
                  }
                  
                  else if(estado == 10)
                  {
                      estado = 17;
                  }
                  
                  else if(estado == 26)
                  {
                      /*if(k >= 3)
                      {                      
                          estado = 0;
                      }
                      
                      else if(k == 2)
                      {
                          estado = 0;
                      }
                      
                      else if(k == 1)
                      {
                          estado = 33;
                      }
                      
                      if(k > 1)
                      {
                          if( (line.charAt(k-1) >=65 && line.charAt(k-1) <= 90) || (line.charAt(k-1) >=97 && line.charAt(k-1) <= 122) || (line.charAt(k-1) >=48 || line.charAt(k-1) <= 57) )
                              estado = 0;
                      }
                      
                      else
                          estado = 33;*/
                      
                      estado = 33;
                      
                      
                  }
                  
                  else if(estado == 51)
                  {
                      estado = 52;
                  }
                  
                  else if(estado == 50)
                  {
                      estado = 55;
                  }
                  
                  else if(estado == 57)
                  {
                      estado = 58;
                  }
                  
                  else if(estado == 59)
                  {
                      estado = 60;
                  }
                  
                  else if(estado == 65)
                  {
                      estado = 66;
                  }
                  
                  else if(estado == 82)
                  {
                      estado = 83;
                  }
                  
                  else if(estado == 92)
                  {
                      estado = 93;
                  }
                  
                  else if(estado == 118)
                  {
                      estado = 119;
                  }
                  
                  else if(estado == 127)
                  {
                      estado = 128;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'p':
                  
                  if(estado == 110)
                  {
                      estado = 111;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                                    
                  break;
                  
                  
                  case 'q':
                  
                  estado = 0;  
                
                  break;
                  
                  case 'r':
                  
                  if(estado == 0)
                  {
                      estado = 69;
                  }
                  
                  else if(estado == 5)
                  {
                      estado = 6;
                  }
                  
                  else if(estado == 15)
                  {
                      estado = 16;
                  }
                  
                  else if(estado == 47)
                  {
                      estado = 48;
                  }
                  
                  else if(estado == 55)
                  {
                      estado = 56;
                  }
                  
                  else if(estado == 75)
                  {
                      estado = 76;
                  }
                  
                  else if(estado == 78)
                  {
                      estado = 79;
                  }
                  
                  else if(estado == 83)
                  {
                      estado = 84;
                  }
                  
                  else if(estado == 95)
                  {
                      estado = 100;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                                    
                  break;
                  
                  case 's':
                  
                  if(estado == 0)
                  {
                      estado = 81;
                  }
                  
                  else if(estado == 11)
                  {
                      estado = 12;
                  }
                  
                  else if(estado == 18)
                  {
                      estado = 19;
                  }
                  
                  else if(estado == 39)
                  {
                      estado = 40;
                  }
                  
                  else if(estado == 72)
                  {
                      estado = 73;
                  }
                  
                  else if(estado == 117)
                  {
                      estado = 121;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 't':
                  
                  if(estado == 0)
                  {
                      estado = 109;
                  }
                  
                  else if(estado == 2)
                  {
                      estado = 3;
                  }
                  
                  else if(estado == 19)
                  {
                      estado = 20;
                  }
                  
                  else if(estado == 18)
                  {
                      estado = 21;
                  }
                  
                  else if(estado == 31)
                  {
                      estado = 32;
                  }
                  
                  else if(estado == 45)
                  {
                      estado = 46;
                  }
                  
                  else if(estado == 53)
                  {
                      estado = 54;
                  }
                  
                  else if(estado == 58)
                  {
                      estado = 59;
                  }
                  
                  else if(estado == 63)
                  {
                      estado = 64;
                  }
                  
                  else if(estado == 73)
                  {
                      estado = 74;
                  }
                  
                  else if(estado == 70)
                  {
                      estado = 77;
                  }
                  
                  else if(estado == 84)
                  {
                      estado = 85;
                  }
                  
                  else if(estado == 81)
                  {
                      estado = 95;
                  }
                  
                  else if(estado == 96)
                  {
                      estado = 97;
                  }
                  
                  else if(estado == 102)
                  {
                      estado = 103;
                  }
                  
                  else if(estado == 105)
                  {
                      estado = 106;
                  }
                  
                  else if(estado == 132)
                  {
                      estado = 133;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'u':
                  
                  if(estado == 0)
                  {
                      estado = 116;
                  }
                  
                  else if(estado == 1)
                  {
                      estado = 2;
                  }
                  
                  else if(estado == 23)
                  {
                      estado = 24;
                  }
                  
                  else if(estado == 29)
                  {
                      estado = 30;
                  }
                  
                  else if(estado == 33)
                  {
                      estado = 34;
                  }
                  
                  else if(estado == 42)
                  {
                      estado = 43;
                  }
                  
                  else if(estado == 77)
                  {
                      estado = 78;
                  }
                  
                  else if(estado == 100)
                  {
                      estado = 101;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'v':
                  
                  if(estado == 0)
                  {
                      estado = 127;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'w':
                  
                  if(estado == 0)
                  {
                      estado = 137;
                  }
                  
                  else if(estado == 81)
                  {
                      estado = 104;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'x':
                  
                  if(estado == 38)
                  {
                      estado = 45;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'y':
                  
                  if(estado == 109)
                  {
                      estado = 110;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  case 'z':
                  
                  if(estado == 86)
                  {
                      estado = 91;
                  }
                  
                  else
                  {
                      estado = 0;
                  }
                  
                  break;
                  
                  default:
                  
                  estado = 0;
                  
                  break;
            }
            
            if(estado == 4)
            {
                aut++;
                System.out.println("auto en la línea: "+fila +" columna: "+(columna-3));
            }
            
            else if(estado == 9)
            {
                brea++;
                System.out.println("break en la línea: "+fila +" columna: "+(columna-4));
            }
            
            else if(estado == 13)
            {
                cas++;
                System.out.println("case en la línea: "+fila +" columna: "+(columna-3));
            }
            
            else if(estado == 16)
            {
                cha++;
                System.out.println("char en la línea: "+fila +" columna: "+(columna-3));
            }
            
            else if(estado == 20)
            {
                cons++;
                System.out.println("const en la línea: "+fila +" columna: "+(columna-4));
            }
            
            else if(estado == 25)
            {
                continu++;
                System.out.println("continue en la línea: "+fila +" columna: "+(columna-7));
            }
            
            else if(estado == 32)
            {
                defaul++;
                System.out.println("default en la línea: "+fila +" columna: "+(columna-6));
            }
            
            else if(estado == 33)
            {
                d++;
                System.out.println("do en la línea: "+fila +" columna: "+(columna-1));
            }
            
            else if(estado == 37)
            {
                doubl++;
                System.out.println("double en la línea: "+fila +" columna: "+(columna-5));
            }
            
            else if(estado == 41)
            {
                els++;
                System.out.println("else en la línea: "+fila +" columna: "+(columna-3));
            }
            
            else if(estado == 44)
            {
                enu++;
                System.out.println("enum en la línea: "+fila +" columna: "+(columna-3));
            }
            
            else if(estado == 49)
            {              
                exter++;
                System.out.println("extern en la línea: "+fila +" columna: "+(columna-5));
            }
            
            else if(estado == 54)
            {
                floa++;
                System.out.println("float en la línea: "+fila +" columna: "+(columna-4));
            }
            
            else if(estado == 56)
            {
                fo++;
                System.out.println("for en la línea: "+fila +" columna: "+(columna-2));
            }
            
            else if(estado == 60)
            {
                got++;
                System.out.println("goto en la línea: "+fila +" columna: "+(columna-3));
            }
            
            else if(estado == 62)
            {
                i++;
                System.out.println("if en la línea: "+fila +" columna: "+(columna-1));
            }
            
            else if(estado == 64)
            {
                in++;
                System.out.println("int en la línea: "+fila +" columna: "+(columna-2));
            }
            
            else if(estado == 68)
            {
                lon++;
                System.out.println("long en la línea: "+fila +" columna: "+(columna-3));
            }
            
            else if(estado == 76)
            {
                registe++;
                System.out.println("register en la línea: "+fila +" columna: "+(columna-7));
            }
            
            else if(estado == 80)
            {
                retur++;
                System.out.println("return en la línea: "+fila +" columna: "+(columna-5));
            }
            
            else if(estado == 85)
            {
                shor++;
                System.out.println("short en la línea: "+fila +" columna: "+(columna-4));
            }
            
            else if(estado == 90)
            {
                signe++;
                System.out.println("signed en la línea: "+fila +" columna: "+5);
            }
            
            else if(estado == 94)
            {
                sizeo++;
                System.out.println("sizeof en la línea: "+fila +" columna: "+5);
            }
            
            else if(estado == 99)
            {
                stati++;
                System.out.println("static en la línea: "+fila +" columna: "+(columna-5));
            }
            
            else if(estado == 103)
            {
                struc++;
                System.out.println("struct en la línea: "+fila +" columna: "+(columna-5));
            }
            
            else if(estado == 108)
            {
                switc++;
                System.out.println("switch en la línea: "+fila +" columna: "+(columna-5));
            }
            
            else if(estado == 115)
            {
                typede++;
                System.out.println("typedef en la línea: "+fila +" columna: "+(columna-6));
            }
            
            else if(estado == 120)
            {
                unio++;
                System.out.println("union en la línea: "+fila +" columna: "+(columna-4));
            }
            
            else if(estado == 126)
            {
                unsigne++;
                System.out.println("unsigned en la línea: "+fila +" columna: "+(columna-7));
            }
            
            else if(estado == 130)
            {
                voi++;
                System.out.println("void en la línea: "+fila +" columna: "+(columna-3));
            }
            
            else if(estado == 136)
            {
                volatil++;
                System.out.println("volatile en la línea: "+fila +" columna: "+(columna-7));
            }
            
            else if(estado == 141)
            {
                whil++;
                System.out.println("while en la línea: "+fila +" columna: "+(columna-4));
            }            
        }
       
    }
    
    encontradas.println("auto: "+aut+" veces");
    encontradas.println("break: "+brea+" veces");
    encontradas.println("case: "+cas+" veces");
    encontradas.println("char: "+cha+" veces");
    encontradas.println("const: "+cons+" veces");
    encontradas.println("continue: "+continu+" veces");
    encontradas.println("default: "+defaul+" veces");
    encontradas.println("do: "+d+" veces");
    encontradas.println("double: "+doubl+" veces");
    encontradas.println("else: "+els+" veces");
    encontradas.println("enum: "+enu+" veces");
    encontradas.println("extern: "+exter+" veces");
    encontradas.println("float: "+floa+" veces");
    encontradas.println("for: "+fo+" veces");
    encontradas.println("goto: "+got+" veces");
    encontradas.println("if: "+i+" veces");
    encontradas.println("int: "+in+" veces");
    encontradas.println("long: "+lon+" veces");
    encontradas.println("register: "+registe+" veces");
    encontradas.println("return: "+retur+" veces");
    encontradas.println("short: "+shor+" veces");
    encontradas.println("signed: "+signe+" veces");
    encontradas.println("sizeof: "+sizeo+" veces");
    encontradas.println("static: "+stati+" veces");
    encontradas.println("struct: "+struc+" veces");
    encontradas.println("switch: "+switc+" veces");
    encontradas.println("typedef: "+typede+" veces");
    encontradas.println("union: "+unio+" veces");
    encontradas.println("unsigned: "+unsigne+" veces");
    encontradas.println("void: "+voi+" veces");
    encontradas.println("volatile: "+volatil+" veces");
    encontradas.println("while: "+whil+" veces");
           
    encontradas.close();
}

void draw()
{
    fill(255);
    stroke(255);
    
    // Estado "raíz"
    ellipse(width/2,25,30,30);
    
    /* COLUMNAS
    Las columnas comienzan en la izquierda */
    
    // Columna 1
    ellipse(54,127,30,30);
    ellipse(54,189,30,30);
    ellipse(54,251,30,30);
    ellipse(54,313,30,30);
    ellipse(54,375,30,30);
    
    // Columna 2
    ellipse(180,127,30,30);
    ellipse(180,189,30,30);
    ellipse(120,251,30,30);
    ellipse(120,313,30,30);
    ellipse(120,375,30,30);
    ellipse(120,437,30,30);
    ellipse(120,499,30,30);
    ellipse(120,561,30,30);
    ellipse(240,251,30,30);
    ellipse(240,313,30,30);
    
    // Columna 3
    ellipse(356,127,30,30);
    ellipse(356,189,30,30);
    ellipse(296,251,30,30);
    ellipse(296,313,30,30);
    ellipse(296,251,30,30);
    ellipse(296,313,30,30);
    ellipse(296,375,30,30);
    ellipse(296,437,30,30);
    ellipse(296,499,30,30);
    ellipse(296,561,30,30);
    ellipse(416,251,30,30);
    ellipse(416,313,30,30);
    ellipse(416,375,30,30);
    
    // Columna 4    
    ellipse(532,127,30,30);
    ellipse(532,189,30,30);
    ellipse(532,189,30,30);
    ellipse(532,251,30,30);
    ellipse(532,313,30,30);
    ellipse(532,375,30,30);
    ellipse(532,437,30,30);
    
    // Columna 5
    ellipse(796,127,30,30);
    ellipse(616,189,30,30);
    ellipse(616,251,30,30);
    ellipse(616,313,30,30);
    ellipse(616,375,30,30);
    ellipse(616,437,30,30);
    ellipse(726,189,30,30); // REF
    ellipse(686,251,30,30);
    ellipse(686,313,30,30);
    ellipse(686,375,30,30);
    ellipse(686,437,30,30);
    ellipse(766,251,30,30);
    ellipse(766,313,30,30);
    ellipse(766,375,30,30);
    ellipse(766,437,30,30);    
    ellipse(846,189,30,30); // REF
    ellipse(806,251,30,30);
    ellipse(806,313,30,30);
    ellipse(806,375,30,30);
    ellipse(806,437,30,30);
    ellipse(886,251,30,30);
    ellipse(886,313,30,30);
    ellipse(886,375,30,30);
    ellipse(886,437,30,30);    
    ellipse(946,189,30,30);
    ellipse(946,251,30,30);
    ellipse(946,313,30,30);
    ellipse(946,375,30,30);
    
    // Columna 6
    ellipse(1066,127,30,30); //REF
    ellipse(1066,189,30,30);
    ellipse(1006,251,30,30);
    ellipse(1006,313,30,30);
    ellipse(1006,375,30,30);
    ellipse(1006,437,30,30);
    ellipse(1126,251,30,30);
    ellipse(1126,313,30,30);
    ellipse(1126,375,30,30);
    ellipse(1126,437,30,30);
    ellipse(1126,497,30,30);
    ellipse(1126,557,30,30);
    
    // Columna 7
    ellipse(1196,127,30,30);
    ellipse(1196,189,30,30);
    ellipse(1196,251,30,30);
    ellipse(1196,313,30,30);
    
    // Columna 8
    ellipse(1296,127,30,30); //REF
    ellipse(1246,189,30,30);
    ellipse(1246,251,30,30);
    ellipse(1346,189,30,30);
    
    // LINEAS DE LOS ESTADOS
    line(671,26,52,113);
    line(53,130,53,375);
    line(671,26,179,114);
    line(179,114,179,186);
    line(179,186,120,239);
    line(179,186,240,239);
    line(119,250,119,558);
    line(242,250,242,312);
    line(671,26,356,117);
    line(356,117,356,188);
    line(356,188,295,245);
    line(296,245,296,556);
    line(356,188,415,244);
    line(418,246,418,377);
    line(677,30,533,120);
    line(533,120,533,435);
    line(682,26,797,123);
    line(797,123,615,181);
    line(615,181,615,431);
    line(797,123,727,184);
    line(727,184,687,252);
    line(687,252,687,433);
    line(730,191,766,247);
    line(766,247,766,438);
    line(800,129,850,186);
    line(850,186,809,246);
    line(809,246,805,435);
    line(848,187,888,244);
    line(888,244,888,434);
    line(800,125,947,186);
    line(947,186,947,374);
    line(686,25,1065,127);
    line(1065,127,1065,185);
    line(1065,185,1008,247);
    line(1008,247,1008,434);
    line(1065,185,1125,249);
    line(1125,249,1125,556);
    line(685,22,1197,120);
    line(1197,120,1197,312);
    line(694,20,1298,116);
    line(1298,116,1250,181);
    line(1250,181,1250,247);
    line(1298,116,1347,182);
    
    save("automata.jpg");
            
}
