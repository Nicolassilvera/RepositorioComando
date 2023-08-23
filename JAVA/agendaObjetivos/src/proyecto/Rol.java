package proyecto;

import java.util.ArrayList;

public class Rol implements Mostrar {

    private String nombre;
    private ArrayList<Meta> metas;
    private int id;  /* identificador del rol */

    public Rol(String nombre, int id){
        this.nombre = nombre;
        this.metas = new ArrayList<Meta>();
        this.id = id;
    }

    //----------------------------------------------------------------------------------------------------------------------------------------------

    private String getNombre() {
        return this.nombre;
    }

    private void mostrarMetas() {
        for (Meta meta : metas) {
            meta.mostrar();
        }
    }

    //----------------------------------------------------------------------------------------------------------------------------------------------									

    @Override
    public void mostrar() {
        System.out.println("|:::::::::::::::::::::|");
        System.out.println(  "  " + getNombre() + "  ");
        System.out.println("|:::::::::::::::::::::|");
        mostrarMetas();
    }

    public void agregarMetas(Meta metas){
        this.metas.add(metas);
    }

    public void eliminarMetas(Meta meta){
        this.metas.remove(meta);
    }

    //----------------------------------------------------------------------------------------------------------------------------------------------

}
