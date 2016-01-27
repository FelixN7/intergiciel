package test;

import bean.Arme;
import utilities.Des;
import utilities.TypeDeDes;

public class TestDe {

	public static void main(String[] args) {
		Des d = new Des(TypeDeDes.D10, 2) ;
		Arme epee = new Arme("epee") ;
		epee.setDgtsM(d);
		System.out.println(epee.getDgtsM().toString()) ;
	}

}
