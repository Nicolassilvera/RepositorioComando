package tp5EJ2;

import java.time.Year;

public class AnioV2 {

	private int[] diasMeses;
	private Meses meses;
	private int anioActual;
	
	public AnioV2() {
		this.diasMeses = new int[] {31, 28,31,30,31,30,31,31,30,31,30,31};
		this.anioActual = Year.now().getValue();
		this.meses = Meses.ENERO;
	}
	
	public String getNombreDelMes(int numeroMes) {
		return meses.getNombreDelMes(numeroMes); 
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
