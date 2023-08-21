package tp5EJ1;
import java.time.Year;

public class Anio {

	private int[] diasMeses;
	private String[] meses;
	private int anioActual;
	
	public Anio() {
		this.diasMeses = new int[] {31, 28,31,30,31,30,31,31,30,31,30,31};
		this.meses = this.meses = new String[]{"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre", "Octubre", "Noviembre","Diciembre"};
		this.anioActual = Year.now().getValue();
	}
	
	public String getNombreDelMes(int numeroMes) {
		return meses[numeroMes]; 
	}

	public int diasTranscurridos(int numeroMes) {
		int acum = 0;
		numeroMes -= 1;
		for(int i = 0; i < numeroMes ; i++) {
			acum+= this.diasMeses[i];
		}
		return acum;
	}
	
	public String getCumpleanios(int dia, int mes ) {
		return "dia n°: " +  ( diasTranscurridos(mes) + dia ) + " del año." ;  
	}
	
}
