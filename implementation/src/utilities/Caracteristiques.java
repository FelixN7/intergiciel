package utilities;

import java.io.Serializable;

public class Caracteristiques implements Serializable{

	private static final long serialVersionUID = 1566057969299336594L;
	
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
		if (this.For % 2 == 0) {
			return (this.For - 10)/2 ;
		} else {
			return (this.For - 10)/2 - 1;
		}
	}
	
	public void setFor(int For) {
		this.For = For ;
	}

	public int getDex() {
		return this.Dex;
	}
	
	public int getModDex() {
		if (this.Dex % 2 == 0) {
			return (this.Dex - 10)/2 ;
		} else {
			return (this.Dex - 10)/2 - 1;
		}
	}

	public void setDex(int dex) {
		this.Dex = dex;
	}

	public int getCon() {
		return this.Con;
	}
	
	public int getModCon() {
		if (this.Con % 2 == 0) {
			return (this.Con - 10)/2 ;
		} else {
			return (this.Con - 10)/2 - 1;
		}
	}

	public void setCon(int con) {
		this.Con = con;
	}

	public int getInt() {
		return this.Int;
	}

	public int getModInt() {
		if (this.Int % 2 == 0) {
			return (this.Int - 10)/2 ;
		} else {
			return (this.Int - 10)/2 - 1;
		}
	}
	
	public void setInt(int i) {
		this.Int = i;
	}

	public int getSag() {
		return this.Sag;
	}

	public int getModSag() {
		if (this.Sag % 2 == 0) {
			return (this.Sag - 10)/2 ;
		} else {
			return (this.Sag - 10)/2 - 1;
		}
	}
	
	public void setSag(int sag) {
		this.Sag = sag;
	}

	public int getCha() {
		return this.Cha;
	}

	public int getModCha() {
		if (this.Cha % 2 == 0) {
			return (this.Cha - 10)/2 ;
		} else {
			return (this.Cha - 10)/2 - 1;
		}
	}
	
	public void setCha(int cha) {
		this.Cha = cha;
	}
	
}
