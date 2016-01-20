package utilities;

import java.util.ArrayList;

public class ListeOrdonnee extends ArrayList<Integer>{

	private static final long serialVersionUID = 7952299309312332991L;

	public ListeOrdonnee() {
		super() ;
	}
	
	public void inserer(int v) {
		ListeOrdonnee l = new ListeOrdonnee() ;
		if (this.size() == 0) {
			this.add(v) ;
		} else {
			for (int i=0; i < this.size(); i++) {
				if (this.get(i) < v) {
					this.add(i, v);
					break;
				} else {
					for(int j=0; j<=i; j++) {
						l.add(this.get(j)) ;
						this.remove(j) ;
						this.inserer(v);
					}
					for(int k=0; k<l.size(); k++) {
						this.add(k, l.get(k));
					}
				}
			}
		}
	}
	
	public void supprimer(int v) {
		this.remove(v) ;
	}
	
	public boolean present() {
		return true ;
	}
	
}
