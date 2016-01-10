package Core;

import java.util.Random;

public class Des {

	public TypeDeDes type ;
	
	public Des(TypeDeDes type) {
		this.type = type ;
	}
	
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
