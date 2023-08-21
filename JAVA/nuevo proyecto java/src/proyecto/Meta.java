package proyecto;

public class Meta extends Crud implements Mostrar {

    private int prioridad;
    private String descripcion;

    public Meta(String descripcion, int prioridad){
        this.descripcion = descripcion;
        this.prioridad = prioridad;
    }

    //----------------------------------------------------------------------------------------------------------------------------------------------									

    @Override
    public void mostrar() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'mostrar'");
    }
    
    //----------------------------------------------------------------------------------------------------------------------------------------------

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
