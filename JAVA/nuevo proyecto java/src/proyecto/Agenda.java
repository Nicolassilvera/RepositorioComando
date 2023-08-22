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

}
