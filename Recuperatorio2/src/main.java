public class main {

    public static void main(String[] args) {

        NodoABinario nodo = new NodoABinario("15");
        Arbolbinario arbol = new Arbolbinario();
        Arbolbinario arbol2 = new Arbolbinario();

        arbol.construir(nodo);
        arbol.agregar("9");
        arbol.agregar("6");
        arbol.agregar("13");
        arbol.agregar("14");
        arbol.agregar("17");
        arbol.agregar("26");
        arbol.agregar("72");
        arbol.agregar("64");
        arbol.agregar("20");

        arbol.imprimirInOrder();


        arbol2.agregarIterativo("15");
        arbol2.agregarIterativo("9");
        arbol2.agregarIterativo("6");
        arbol2.agregarIterativo("13");
        arbol2.agregarIterativo("14");
        arbol2.agregarIterativo("17");
        arbol2.agregarIterativo("26");
        arbol2.agregarIterativo("72");
        arbol2.agregarIterativo("64");
        arbol2.agregarIterativo("20");
    }
}
