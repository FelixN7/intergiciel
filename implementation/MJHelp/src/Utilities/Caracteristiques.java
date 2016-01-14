package Utilities;

public class Caracteristiques {

	private int For ;
	private int Dex ;
	private int Con ;
	private int Int ;
	private int Sag ;
	private int Cha ;
	
	public Caracteristiques (int For, int Dex, int Con, int Int, int Sag, int Cha) {
		this.setFor(For) ;
		this.setDex(Dex) ;
		this.setCon(Con) ;
		this.setInt(Int) ;
		this.setSag(Sag) ; 
		this.setCha(Cha) ;
	}

	public int getFor() {
		return this.For;
	}
	
	public int getModFor() {
		return (this.For - 10)/2 ;
	}
	
	public void setFor(int For) {
		this.For = For ;
	}

	public int getDex() {
		return this.Dex;
	}
	
	public int getModDex() {
		return (this.Dex - 10)/2 ;
	}

	public void setDex(int dex) {
		this.Dex = dex;
	}

	public int getCon() {
		return this.Con;
	}
	
	public int getModCon() {
		return (this.Con - 10)/2 ;
	}

	public void setCon(int con) {
		this.Con = con;
	}

	public int getInt() {
		return this.Int;
	}

	public int getModInt() {
		return (this.Int - 10)/2 ;
	}
	
	public void setInt(int i) {
		this.Int = i;
	}

	public int getSag() {
		return this.Sag;
	}

	public int getModSag() {
		return (this.Sag - 10)/2 ;
	}
	
	public void setSag(int sag) {
		this.Sag = sag;
	}

	public int getCha() {
		return this.Cha;
	}

	public int getModCha() {
		return (this.Cha - 10)/2 ;
	}
	
	public void setCha(int cha) {
		this.Cha = cha;
	}
	
}
