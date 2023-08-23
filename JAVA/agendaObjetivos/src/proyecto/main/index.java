package proyecto.main;
import proyecto.Agenda;
import proyecto.Meta;
import proyecto.Rol;

public class index {
    
    public static void main(String[] args) {
    
    Agenda agendaSemanal = new Agenda(" Agenda de Roles ");
    
    // Roles
    Rol estudiante = new Rol("Estudiante", 1);
    Rol laboral = new Rol("Laboral", 2);
    Rol individuo = new Rol("Individuo", 3);

    // Metas x rol
    estudiante.agregarMetas(new Meta("html , dominarlo en un plazo de 2 meses", 2));
    estudiante.agregarMetas(new Meta("css, dominarlo el entendimiento y sumar externamente", 2));
    estudiante.agregarMetas(new Meta("javaScript, practicar y practicar que la vuelta sale sola", 2));
    
    laboral.agregarMetas(new Meta("Cambiar de trabajo, en un plazo de 2 meses ponerme en campaña ", 1));
    laboral.agregarMetas(new Meta(" Buscar una mejor remuneracion ", 1));

    individuo.agregarMetas(new Meta("Paciencia" , 1));
    individuo.agregarMetas(new Meta("Control de mi mismo y diciplina" , 1));
    individuo.agregarMetas(new Meta("Contemplar todas las posibilidades" , 1));
    individuo.agregarMetas(new Meta("Saber darte descansos y no sobre exijirte" , 3));

    
    agendaSemanal.agregarRol(individuo);
    agendaSemanal.agregarRol(laboral);
    agendaSemanal.agregarRol(estudiante);

    agendaSemanal.mostrar();

    }

}