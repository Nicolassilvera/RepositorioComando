package tp5EJ4;

public class Main {

	public static final String DELBONIS = "Delbonis";
	public static final String SCHWARTZMAN = "Schwartzman";
	public static final String TORNEO = "RolandGarros";
	public static final String PELLA = "Pella";

	public static void main(String[] args) {

		Circuito Circuito = new Circuito ();		
		Circuito.procesarInfo();
		
		System.out.println("Rresultado Final campeonato");
		Circuito.resultadoFinal();
		Circuito.procesarTorneosJugador(DELBONIS);
		System.out.println(Circuito.obtenerResultadoJugador(SCHWARTZMAN, TORNEO));
		Circuito.obtenerPeorResultado(PELLA);
	}

}
