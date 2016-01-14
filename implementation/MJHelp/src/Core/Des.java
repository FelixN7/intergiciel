package Core;

/**
 * Classe D�s permettant de cr�er l'objet "D�s"
 * @author Maxime
 * @version 1.0
 */

import java.util.Random;

public class Des {

	/** Le type de d�s */
	public TypeDeDes type ;
	
	/** Cr�ation d'un d�
	 * @param type le type de d�
	 */
	public Des(TypeDeDes type) {
		this.type = type ;
	}
	
	/**
	 * Retourne le r�sultat d'un lanc� de d�
	 * @return integer
	 */
	public int lancer() {
		Random rand = new Random() ;
		int res ;
			switch(this.type) {
				case D4:
					res = rand.nextInt(4) + 1 ;
					return res;
				case D6 :
					res = rand.nextInt(6) + 1 ;
					return res;
				case D8 :
					res = rand.nextInt(8) + 1 ;
					return res;
				case D10 : 
					res = rand.nextInt(10) + 1 ;
					return res;
				case D12 : 
					res = rand.nextInt(12) + 1 ;
					return res;
				case D20 : 
					res = rand.nextInt(20) + 1 ;
					return res;
				case D100 : 
					res = rand.nextInt(100) + 1 ;
					return res;
				default : 
					return 0 ;
			}
	}
	
}
