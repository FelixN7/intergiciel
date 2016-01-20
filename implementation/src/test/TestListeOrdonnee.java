package test;

import utilities.ListeOrdonnee;

public class TestListeOrdonnee {

	public static void main(String[] args) {
		ListeOrdonnee lo = new ListeOrdonnee() ;
		lo.inserer(5);
		lo.inserer(2);
		lo.inserer(8);
		lo.inserer(18);
		lo.inserer(0);
		lo.inserer(1);
		
		System.out.println(lo.toString());
	}

}
