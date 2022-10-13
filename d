https://github.com/L4UTY161603/CursoJava/blob/master/RepasoParcialLabCine/src/Salas.java

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        // write your code here


        //agregacion
        IntegrantesDeLaCompañiaAntivillanos integrantesAgregacion = new IntegrantesDeLaCompañiaAntivillanos();

        integrantesAgregacion.superheroe = new superheroes[2];

        superheroes s1 = new superheroes("Iron Man");
        superheroes s2 = new superheroes("Capitan America");

        integrantesAgregacion.superheroe[0] = s1;
        integrantesAgregacion.superheroe[1] = s2;
        integrantesAgregacion.mostraragrega();


        // composicion
        IntegrantesDeLaCompañiaAntivillanos integrantesComposicion = new IntegrantesDeLaCompañiaAntivillanos();
        integrantesComposicion.mostraCompor();


        //polimorfimos
        superheroes superpoli = new superheroes("thor", "tirar Rayitos", 10);

        System.out.println(superpoli.getPotencia());

        IntegrantesDeLaCompañiaAntivillanos intepoli = new IntegrantesDeLaCompañiaAntivillanos("ricardo", "ninguna", 12);

        System.out.println(intepoli.getPotencia());

        Scanner s = new Scanner(System.in);
        System.out.println("posee traje especial?");
        int traje = s.nextInt();

        superpoli.TrajeEspecial(traje);

        IntegrantesDeLaCompañiaAntivillanos[] integrantes = new IntegrantesDeLaCompañiaAntivillanos[3];

        integrantes[0] = new IntegrantesDeLaCompañiaAntivillanos("richard", "mimir");

        //upCasting

        integrantes[1] = new superheroes("thor","rallos",2);
        integrantes[2] = new IntegrantesDeLaCompañiaAntivillanos("marcos","soler");

        for (IntegrantesDeLaCompañiaAntivillanos integran : integrantes) {
            System.out.println(integran.toString());
        }

        //down casting

        superheroes[] supers = new superheroes[3];

        supers[0] = new superheroes("thor","rallos",2);
        IntegrantesDeLaCompañiaAntivillanos integrants = new superheroes("rich","mc",1);

        supers[1]= (superheroes)integrants;
        supers[2] = new superheroes("pipe","tomate",4);

        for (IntegrantesDeLaCompañiaAntivillanos superhero : supers) {
            System.out.println(superhero.toString());
        }

    }
}
--------------------------------
public interface a {
public void ataqueespecial();
}
------------------------------
public class IntegrantesDeLaCompañiaAntivillanos {
    private String nombre;
    private String habilidad;
    private double potencia=4;

    //constructorees
    public IntegrantesDeLaCompañiaAntivillanos(String nombre){
        this.nombre=nombre;
    }

    public IntegrantesDeLaCompañiaAntivillanos(String nombre,String habilidades){
        this.nombre=nombre;
        this.habilidad=habilidades;
    }
    public IntegrantesDeLaCompañiaAntivillanos(String nombre,String habilidades,double potencia){
        this.nombre=nombre;
        this.habilidad=habilidades;
        this.potencia =potencia;
    }


    //principio de ocultamiento
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getHabilidad() {
        return habilidad;
    }

    public void setHabilidad(String habilidad) {
        this.habilidad = this.habilidad;
    }

    public double getPotencia() {
        return potencia;
    }

    public void setPotencia(int potencia) {
        this.potencia = potencia;
    }


    //agregacion
    superheroes[] superheroe;

    public void mostraragrega(){
        for(int i = 0;i<2;i++){
            System.out.println("nombre del super heroe: "+  superheroe[i].getNombre());
        }
    }

    // composicion
    public superheroes avengers[];
    public IntegrantesDeLaCompañiaAntivillanos(){
        avengers = new superheroes[2];
        avengers[0]= new superheroes("Iron Man");
        avengers[1]= new superheroes("Capitan America");

    }

    public void mostraCompor(){
        for(int i = 0;i<2;i++){
            System.out.println("nombre del super heroe: "+  avengers[i].getNombre());
        }
    }

    @Override
    public String toString() {
        return "IntegrantesDeLaCompañiaAntivillanos{" +
                "nombre='" + nombre + '\'' +
                ", habilidad='" + habilidad + '\'' +
                '}';
    }

}
---------------------------------------------------------------

//herencia entre clases

public class superheroes extends IntegrantesDeLaCompañiaAntivillanos implements a{
    private double potenciadelAtacaqueExtra=50;


    public superheroes(String nombre){
        super(nombre);
    }

    public superheroes(String nombre,String habilidades){
        super(nombre,habilidades);

    }
    public superheroes(String nombre,String habilidades,double potencia){
        super(nombre,habilidades,potencia);
    }



    @Override
    public double getPotencia() {
        return super.getPotencia()*this.potenciadelAtacaqueExtra;
    }

    //metodo de una clase
    public void TrajeEspecial(int poseetraje){
        double potenciaextra=1.5;
        double poderactual=getPotencia();
        if (poseetraje==1){
            poderactual=poderactual*potenciaextra;
            System.out.println("potencia actual con el traje especial: "+ poderactual);
        }else {
            System.out.println("potencia actual sin el traje "+poderactual);
        }
    }

    @Override
    public String toString() {
        return "superheroes{" +
                "nombre='" + super.getNombre() + '\'' +
                ", habilidad='" + super.getHabilidad() + '\'' +
                '}';
    }

    @Override
    public void ataqueespecial() {
        System.out.println("activo el ataque especial");
    }
}
