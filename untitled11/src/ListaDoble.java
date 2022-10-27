public class ListaDoble implements Comparable<ListaDoble> {
    private  NodoDoble inicio,fin;


    public String getProvincias() {
        return  super.;
    }

    public void setProvincias(String provincias) {
        this.provincias = super.provincias;
    }

    public int getCantidaddeANalfabetos() {
        return cantidaddeANalfabetos;
    }

    public void setCantidaddeANalfabetos(int cantidaddeANalfabetos) {
        this.cantidaddeANalfabetos = cantidaddeANalfabetos;
    }
    public ListaDoble(){
        inicio=fin=null;
    }
    public  boolean vacia(){
        return inicio==null;
    }
    public void  agregarFinal(String provincia,String capi,int habitantes,int analfabetos){
        if(!vacia()){
            fin=new NodoDoble(provincia,capi,habitantes,analfabetos,null,fin);
            fin.anterior.siguiente=fin;
        }else{
            inicio=fin=new NodoDoble(provincia,capi,habitantes,analfabetos);
        }
    }
    public void  agregarinicio(String provincia,String capi,int habitantes,int analfabetos){
        if(!vacia()){
            inicio=new NodoDoble(provincia,capi,habitantes,analfabetos,inicio,null);
            inicio.siguiente.anterior=inicio;
        }else{
            inicio=fin=new NodoDoble(provincia,capi,habitantes,analfabetos);
        }
    }
    //mostrar Lista inicio fin


    public  void Ordenarporanalfabetos(){
        if (!vacia()){
            String datos= "<>";
            NodoDoble auxiliar = fin;
            while (auxiliar!=null){
                datos = datos+ auxiliar.getProvincias();
                auxiliar=auxiliar.anterior;
            }
            System.out.println(datos+"=>");
        }

    }
    public  void OrdenarAlbaeticamente(){
        if (!vacia()){
            String datos= "<>";
            NodoDoble auxiliar = inicio;
            while (auxiliar!=null){
                datos = datos+ auxiliar.getProvincias();
                auxiliar=auxiliar.siguiente;
            }
            System.out.println(datos+"=>");
        }

    }

    @Override
    public int compareTo(ListaDoble o) {
        int salida;
        if (o.)
        return 0;
    }
}
/* public int compareTo(Estudiante o) {
        int salida;
        if (o.getApellido().compareToIgnoreCase(this.apellido)==0) {
            if (o.getNombre().compareToIgnoreCase(this.nombre) > 0) {
                salida = -1;
            } else if (o.getNombre().compareToIgnoreCase(this.nombre) < 0) {
                salida = 1;
            } else {
                salida = 0;
            }
        }else if (o.getApellido().compareToIgnoreCase(this.apellido)>0){
            salida= -1;
        }else {
            salida = 1;
        }
            return salida;
    }*/
