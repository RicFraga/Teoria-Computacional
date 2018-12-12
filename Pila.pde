/* INSTITUTO POLITECNICO NACIONAL  
ESCUELA SUPERIOR DE COMPUTO
Teoría Computacional
Profesor Genaro Juárez Martínez

Clase Pila (Estructura de Datos)

Ricardo Alcaraz Fraga
2CV1 */

public class Pila {
  private ArrayList<String> pila;

  // Mediante este método se inicializa la pila para su uso
  public void initialize() {
    this.pila = new ArrayList<String>();
  }
  
  // Mediante este método se añade la cadena 'a' a la pila
  public void push(String a) {
    this.pila.add(a);
  }
  
  // Mediante este método se elimina el elemento del tope de la pila
  public void pop() {
    
    // Si el tamaño es 0, se subdesborda la pila
    if (this.pila.size() == 0) {
      System.out.println("Error // public void pop() // Subdesbordamiento de pila");
      exit();
    // Si el tamaño es diferente de 0, se procede a eliminar el elemento      
    } else {
      this.pila.remove(this.pila.size()-1);
    }
  }
  
  // Mediante este método se revisa el valor del tope de la pila
  public String peek() {
      return this.pila.get(this.pila.size()-1);       
  }
  
  // Mediante este método se obtiene el tamaño de la pila
  public int sizeof() {
    return this.pila.size();
  }
  
  // Mediante este método se eliminan todos los valores de la pila
  public void destroy() {
    for (int i = 0; i<this.pila.size(); i++) {
      this.pila.remove(i);
    }
  }
}
