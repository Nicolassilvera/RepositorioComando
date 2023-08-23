package proyecto;
import java.util.ArrayList;

public class Agenda implements Mostrar{
    
    private String nombre;
    private ArrayList<Rol> roles;


    public Agenda(String nombre){
        this.nombre = nombre;
        this.roles = new ArrayList<Rol>();
    }

    //----------------------------------------------------------------------------------------------------------------------------------------------									

    @Override
    public void mostrar() {
        System.out.println(" Agenda " +  getNombre());
        mostrarAgenda();
    }

    //----------------------------------------------------------------------------------------------------------------------------------------------									

    private String getNombre() {
        return this.nombre;
    }

    private void mostrarAgenda(){
        for (Rol rol : roles) {
            rol.mostrar();
        }
    }
    
    //----------------------------------------------------------------------------------------------------------------------------------------------

    public void agregarRol(Rol rol){
        if(buscarRol(rol) == null){
            this.roles.add(rol);
        }
    }

    public void eliminarRol(Rol rol){
        Rol rolBuscado = buscarRol(rol);
        if(rolBuscado != null){
            this.roles.remove(rol);
        }
    }

    public Rol buscarRol(Rol rol){
        Rol rolABuscar = null;
        int i = 0;
        while( i < this.roles.size() && rol == null ){
            if(this.roles.get(i).equals(rol)){
                rol = this.roles.get(i);
            }
            i++;
        }
        return rolABuscar;
    }

    //----------------------------------------------------------------------------------------------------------------------------------------------

}
