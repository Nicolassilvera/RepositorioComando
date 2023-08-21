package tp5EJ1;

public class test {

	public static void main(String[] args) {

		
		
		// En el programa principal mostrá cuántos días transcurrieron antes del
		// comienzo del año
		
		Anio a = new Anio();
		System.out.println("Dias transcurridos antes del Comienzo del Año : " + a.diasTranscurridos(12));
		System.out.println("-".repeat(80));
		
		System.out.println(" El cumple años de Nico es " + a.getCumpleanios(4, 1));
		
	}
	
	
	
}
