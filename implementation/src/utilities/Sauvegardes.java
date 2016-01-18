package utilities;

public class Sauvegardes {

	private int ref ;
	private int vol ;
	private int vig ;
	
	public Sauvegardes (int ref, int vol, int vig) {
		this.setRef(ref) ;
		this.setVol(vol) ;
		this.setVig(vig) ;
	}

	public int getRef() {
		return this.ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getVol() {
		return this.vol;
	}

	public void setVol(int vol) {
		this.vol = vol;
	}

	public int getVig() {
		return this.vig;
	}

	public void setVig(int vig) {
		this.vig = vig;
	}
	
	
	
}
