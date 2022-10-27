import javax.swing.*;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	// write your code here
        ListaDoble listita = new ListaDoble();
        int opcion = 0;
        String elemento;
        Scanner s = new Scanner(System.in);
        do {
            try {
                System.out.println("que deseas hacer? \n 1 agregar nodo al inicio \n2 agregar nodo al final,\n 3 mostrar lista de inicio a fin,\n 4 mostrar la lista de fin a inicio,\n 5 salir,\n  ");
                opcion= s.nextInt();
                switch ( opcion){
                    case 1:
                        System.out.println("ingrese el elemeto del nodo");
                        elemento= s.next();
                        listita.agregarinicio(elemento);
                        break;
                    case 2:
                        System.out.println("ingrese el elemeto del nodo");
                        elemento= s.next();
                        listita.agregarinicio(elemento);
                        break;
                    case 3:
                        if(!listita.vacia()){
                            listita.OrdenarAlbaeticamente();
                        }else {
                            System.out.println("no hay nodos");
                        }
                        break;
                    case 4:
                        if(!listita.vacia()){
                            listita.Ordenarporanalfabetos();
                        }else {
                            System.out.println("no hay nodos");
                        }
                        break;
                    case 5:
                         System.out.println("aplicacion finalizada");
                        break;
                    default:
                      System.out.println("La opcion no es en el menu");

                }

            }catch (NumberFormatException n){
                System.out.println("error");
            }

        }while (opcion !=5);
    }
}
