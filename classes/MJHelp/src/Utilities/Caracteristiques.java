package Utilities;

public class Caracteristiques {

	private int Fo ;
	private int Dex ;
	private int Con ;
	private int Int ;
	private int Sag ;
	private int Cha ;
	
	public Caracteristiques (int Fo, int Dex, int Con, int Int, int Sag, int Cha) {
		this.setFo(Fo) ;
		this.setDex(Dex) ;
		this.setCon(Con) ;
		this.setInt(Int) ;
		this.setSag(Sag) ; 
		this.setCha(Cha) ;
	}

	public int getFo() {
		return this.Fo;
	}

	public void setFo(int fo) {
		this.Fo = fo;
	}

	public int getDex() {
		return this.Dex;
	}

	public void setDex(int dex) {
		this.Dex = dex;
	}

	public int getCon() {
		return this.Con;
	}

	public void setCon(int con) {
		this.Con = con;
	}

	public int getInt() {
		return this.Int;
	}

	public void setInt(int i) {
		this.Int = i;
	}

	public int getSag() {
		return this.Sag;
	}

	public void setSag(int sag) {
		this.Sag = sag;
	}

	public int getCha() {
		return this.Cha;
	}

	public void setCha(int cha) {
		this.Cha = cha;
	}
	
}
