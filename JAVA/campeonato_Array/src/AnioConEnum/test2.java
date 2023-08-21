package tp5EJ2;

public class test2 {

	public static void main(String[] args) {

		
		AnioV2 a2 = new AnioV2();
		
		traducirANombreMes(a2, 2);
		traducirANombreMes(a2, 3);
		traducirANombreMes(a2, -1);
		traducirANombreMes(a2, 17);
		traducirANombreMes(a2, 11);
		traducirANombreMes(a2, 5);
		
		
		
				
	}
		
	public static final void traducirANombreMes(AnioV2 a, int mes){
		try {
			System.out.println(a.getNombreDelMes(mes));
		}catch(IndexOutOfBoundsException iob){
			System.err.println(iob.getMessage());
		}
	}
}
