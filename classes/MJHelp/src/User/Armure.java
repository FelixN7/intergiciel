package User;

public class Armure implements Item {

	private String nom ;
	private Integer bonusArmure ;
	private Integer bonusDexMax ;
	private Integer malusTests ;
	private Integer risqueEchec ;
	
	public Armure() {
		
	}
	
	public Armure(String nom){
		this.setNom(nom);
	}
	
	public String getNom() {
		return this.nom ;
	}
	
	public void setNom(String nom) {
		this.nom = nom ;
	}

	public Integer getBonusArmure() {
		return this.bonusArmure;
	}

	public void setBonusArmure(Integer bonusArmure) {
		this.bonusArmure = bonusArmure;
	}

	public Integer getRisqueEchec() {
		return this.risqueEchec;
	}

	public void setRisqueEchec(Integer risqueEchec) {
		this.risqueEchec = risqueEchec;
	}
	
	public Integer getBonusDexMax() {
		return this.bonusDexMax;
	}

	public void setBonusDexMax(Integer bonusDexMax) {
		this.bonusDexMax = bonusDexMax;
	}

	public Integer getMalusTests() {
		return this.malusTests;
	}

	public void setMalusTests(Integer malusTests) {
		this.malusTests = malusTests;
	}
	
}
