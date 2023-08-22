package proyecto;

public class Meta extends Crud implements Mostrar {

    private int prioridad;
    private String descripcion;

    public Meta(String descripcion, int prioridad){
        this.descripcion = descripcion;
        this.prioridad = prioridad;
    }

    public String getDescripcion(){
        return "   -" + this. descripcion;
    }

    public int getPrioridad(){
        return this.prioridad;
    }

    //----------------------------------------------------------------------------------------------------------------------------------------------									

    @Override
    public void mostrar() {
        System.out.println(getDescripcion() + "|" + getPrioridad() + "|"  );
    }
    
    //----------------------------------------------------------------------------------------------------------------------------------------------

    @Override
    public void agregar() {
    }

    @Override
    public void eliminar() {
    }

    @Override
    public void modificar() {
    }
    
    //----------------------------------------------------------------------------------------------------------------------------------------------

}
