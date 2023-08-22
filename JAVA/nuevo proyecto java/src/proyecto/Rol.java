package proyecto;

import java.util.ArrayList;

public class Rol extends Crud implements Mostrar {

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

    @Override
    public void agregar() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'agregar'");
    }

    @Override
    public void eliminar() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'eliminar'");
    }

    @Override
    public void modificar() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'modificar'");
    }

    //----------------------------------------------------------------------------------------------------------------------------------------------

}
