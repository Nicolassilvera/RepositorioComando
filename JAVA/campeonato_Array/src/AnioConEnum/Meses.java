package tp5EJ2;


public enum Meses {
		ENERO,
		FEBRERO,
		MARZO,
		ABRIL,
		MAYO,
		JUNIO,
		JULIO,
		AGOSTO,
		SEPTIEMBRE,
		OCTUBRE,
		NOVIEMBRE,
		DICIEMBRE;
	
	public static final int TOTAL_MESES = 12;
	
	public String getNombreDelMes(int numMes) {
		
		if(numMes > TOTAL_MESES || numMes < 0) {
			throw new IndexOutOfBoundsException(" Solo hay 12 meses.");
		}
		// Meto los meses en un arreglo 
		Meses[] mes = Meses.values();
		// Resto 1 por que la numeracion empieza desde 0
		numMes -= 1;	
		// indice de posicion actual
		int i = 0;
		while( i < mes.length && mes[i].ordinal() != numMes) {
			i++;
		}
		return mes[i].name() ;
	}
	

}

