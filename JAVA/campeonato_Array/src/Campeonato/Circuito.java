package tp5EJ4;

import java.util.ArrayList;

public class Circuito {
	

	private String[] jugadores;
	private String[] torneos;
	private int[][] resultados;

	public Circuito() {
		this.cargarData();
	}
	
	//----------------------------------------------------------------------------------------------------------------------------------------------									
	
	public void cargarData() {
		this.jugadores = new String[] { "Pella", "Del Potro", "Schwartzman", "Mayer", "Delbonis"};
		this.torneos = new String[] { "Australia", "USOpen", "RolandGarros", "Wimbledon","Shangai"};
		this.resultados = new int[][] {	{1,3,4,1,3},
										{3,2,3,4,1},
										{2,1,5,5,2},
										{4,5,1,2,5},
										{5,4,2,3,4}};
	}
	
	//----------------------------------------------------------------------------------------------------------------------------------------------									
										


	
	public ArrayList<Jugador> procesarInfo() {
		ArrayList<Jugador> Jugadors = new ArrayList<>();
		
		for(int i = 0; i < this.jugadores.length; i++ ) {
			Jugadors.add(new Jugador(this.jugadores[i]/*nombre*/, puntosTotales(this.jugadores[i])/*puntos*/, procesarMejorPosTorneoJugador(this.jugadores[i])/* Mejor resultado*/,procesarPeorPosTorneoJugador(this.jugadores[i])/*Peor resultado*/));
		}
		return Jugadors;
	}
	
	//----------------------------------------------------------------------------------------------------------------------------------------------									


	private int puntosTotales(String jugador) {
		int total = 0;
		Jugador asistente = new Jugador ("Asistente");
		
		for(int i = 0; i < this.resultados[buscoJugador(jugador)].length /*cantidad de torneos en la que participo*/; i ++ ) {
		/* Le paso el resultado de un torneo */ asistente.sumarPuntos( this.resultados[buscoJugador(jugador)][i]);
		}
		total = asistente.getPuntos();
		return total;
	}
	
	//----------------------------------------------------------------------------------------------------------------------------------------------									

	//	Del Potro: Australia:3 USOpen:2 RolandGarros:3 Wimbledon:4 Shangai:1

	public String procesarTorneosJugador(String jugador) {
		String competencias = jugador + ": " ;
		int posJugador = buscoJugador(jugador);
		for(int i = 0; i> this.torneos.length; i++) {
			competencias += this.torneos[i] + ": " + this.resultados[posJugador][i] ;
		}		
		return competencias;
	}
	
	//----------------------------------------------------------------------------------------------------------------------------------------------									

	// Resultado de Schwartzman en RolandGarros:5
	
	public String obtenerResultadoJugador(String jugador, String torneo) {
		return "Resultado de " + jugador + " en " + torneo + ": " + this.resultados[buscoJugador(jugador)][buscoTorneo(torneo)] ;
	}
	
	//----------------------------------------------------------------------------------------------------------------------------------------------									

	private int buscoJugador(String Jugador) {
		int posJugador = -1;
		boolean existe = false; int i = 0;
		while(i < this.jugadores.length && !existe) {
			if(this.jugadores[i].equals(Jugador)) {
				posJugador = i;
				existe = true;
			} 
			i++;
		} 
		if(i > this.jugadores.length) {
			i = -1;
		}
		return posJugador;
	}

	//----------------------------------------------------------------------------------------------------------------------------------------------									

	private int buscoTorneo(String torneo) {
		int posTorneo = -1;
		boolean existe = false; int i = 0;
		while(i < this.torneos.length && !existe) {
			if(this.torneos[i].equals(torneo)) {
				posTorneo = i;
				existe = true;
			} 
			i++;
		} 
		if(i > this.torneos.length) {
			i = -1;
		}
		return posTorneo;
	}
	
	//----------------------------------------------------------------------------------------------------------------------------------------------									

	//	Peor Resultado de Pella en el año: 4

	public int procesarPeorPosTorneoJugador(String jugador) {
		int peorPosicion = -1; 
		int posJugador = buscoJugador(jugador);
		for(int i = 0; i < this.resultados[posJugador].length; i++) {
			if(peorPosicion < this.resultados[posJugador][i]) {
				peorPosicion = this.resultados[posJugador][i];
			}
		}
		
		return peorPosicion;
	}
	
	//----------------------------------------------------------------------------------------------------------------------------------------------									

	public void obtenerPeorResultado(String jugador) {
		System.out.printf("Peor resultado de %s en el año: %d ", jugador ,procesarPeorPosTorneoJugador(jugador)  );
	}
	
	//----------------------------------------------------------------------------------------------------------------------------------------------									

	public int procesarMejorPosTorneoJugador(String jugador) {
		int mejorPosicion = Integer.MAX_VALUE; 
		int posJugador = buscoJugador(jugador);
		for(int i = 0; i < this.resultados[posJugador].length; i++) {
			if(mejorPosicion > this.resultados[posJugador][i]) {
				mejorPosicion = this.resultados[posJugador][i];
			}
		}
		
		return mejorPosicion;
	}

	//----------------------------------------------------------------------------------------------------------------------------------------------									

	public void resultadoFinal() {
		
		for(Jugador j: procesarInfo()) {
			System.out.println(j.toString());  
		}
	}
	
	//----------------------------------------------------------------------------------------------------------------------------------------------									

	
 }

