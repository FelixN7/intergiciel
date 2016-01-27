package utilities;

import java.io.Serializable;

/**
 * Classe D�s permettant de cr�er l'objet "D�s"
 * @author Maxime
 * @version 1.0
 */

import java.util.Random;

public class Des implements Serializable{

	/** Le type de d�s */
	public TypeDeDes type ;
	public int nbDes ;
	
	/** Cr�ation d'un d�
	 * @param type le type de d�
	 */
	public Des(TypeDeDes type, Integer nbDes) {
		this.type = type ;
		this.nbDes = nbDes ;
	}
	
	/**
	 * Retourne la valeur maximale du que peut prendre le d�
	 * @return val
	 */
	public int val() {
		switch(this.type) {
		case D4:
			return nbDes*4 ;
		case D6 :
			return nbDes*6 ;
		case D8 :
			return nbDes*8 ;
		case D10 : 
			return nbDes*10 ;
		case D12 : 
			return nbDes*12 ;
		case D20 : 
			return nbDes*20 ;
		case D100 : 
			return nbDes*100 ;
		default : 
			return 0 ;
		}
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
					return nbDes*res;
				case D6 :
					res = rand.nextInt(6) + 1 ;
					return nbDes*res;
				case D8 :
					res = rand.nextInt(8) + 1 ;
					return nbDes*res;
				case D10 : 
					res = rand.nextInt(10) + 1 ;
					return nbDes*res;
				case D12 : 
					res = rand.nextInt(12) + 1 ;
					return nbDes*res;
				case D20 : 
					res = rand.nextInt(20) + 1 ;
					return nbDes*res;
				case D100 : 
					res = rand.nextInt(100) + 1 ;
					return nbDes*res;
				default : 
					return 0 ;
			}
	}
	
	public String toString() {
		String s = new String() ;
		switch(this.type) {
			case D4 :
				s = nbDes+"d4" ;
				break ;
			case D6 :
				s = nbDes+"d6" ;
				break ;
			case D8 :
				s = nbDes+"d8" ;
				break ;
			case D10 :
				s = nbDes+"d10" ;
				break ;
			case D12 :
				s = nbDes+"d12" ;
				break ;
			case D20 :
				s = nbDes+"d20" ;
				break ;
			case D100 :
				s = nbDes+"d100" ;
				break ;
			default :
				s = null ;	
				break ;
		}
		return s ;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + nbDes;
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Des other = (Des) obj;
		if (nbDes != other.nbDes)
			return false;
		if (type != other.type)
			return false;
		return true;
	}
	
	
	
}
