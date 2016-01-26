package bean;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import utilities.Alignement;
import utilities.Caracteristiques;
import utilities.Competences;
import utilities.PersoType;

@Entity
@IdClass(PersoPseudo.class)
public class Fiche {

	@Id
	private String nomPerso;
	@Id
	private String pseudo;
	private Caracteristiques caracteristiques;
	@ManyToOne
	private Partie partie;
	private int initiative;
	private int ca ;
	@ManyToOne
	private Classe classe;
	@ManyToOne
	private Race race ;
	private Alignement alignement;
	@ManyToMany
	private Collection<Dons> dons ;
	private int level ;
	//TODO private Competences competences; n arrive pas a s inserer en bdd 
	@ManyToOne
	private Arme armeGauche;
	@ManyToOne
	private Arme armeDroite;
	@ManyToOne
	private Armure armure ;
	private PersoType type ;
	private int vie;
	private int vieCourante;

	public Fiche() {}

	/**
	 * Le constructeur de la classe Fiche
	 * @param nom le nom du personnage repr�sent� par la fiche
	 * @param u l'utilisateur � qui appartient ce personnage
	 * @param c les caract�ristiques du personnage
	 * @param classe la classe du personnage
	 */
	public Fiche(String nom, String nameUt, Caracteristiques c, Competences comp, Classe classe, Race race) {
		/**
		 * On commence par remplir les donnees connues
		 */
		this.nomPerso = nom ;
		this.pseudo = nameUt ;
		this.level = 1 ;
		this.caracteristiques = c ;
		//this.competences=comp;
		this.setClasse(classe);
		this.setRace(race);

		/**
		 * On remplit ensuite le reste des informations par des calculs
		 */
		this.vie = c.getModCon() + classe.getDVie().val();
		this.vieCourante = this.vie ;
		this.ca = 10 ;

	}

	public String getPseudo() {
		return pseudo;
	}

	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}

	public Caracteristiques getCaracteristiques() {
		return caracteristiques;
	}

	public void setCaracteristiques(Caracteristiques caracteristiques) {
		this.caracteristiques = caracteristiques;
	}

	public Partie getPartie() {
		return partie;
	}

	public void setPartie(Partie partie) {
		this.partie = partie;
	}

	public Arme getArmeGauche() {
		return armeGauche;
	}

	public void setArmeGauche(Arme armeGauche) {
		this.armeGauche = armeGauche;
	}

	public int getInitiative() {
		return initiative;
	}

	public void setInitiative(int initiative) {
		this.initiative = initiative;
	}

	public int getCa() {
		return ca;
	}

	public void setCa(int ca) {
		this.ca = ca;
	}

	public Collection<Dons> getDons() {
		return dons;
	}

	public void setDons(Collection<Dons> dons) {
		this.dons = dons;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

//	public Competences getCompetences() {
//		return competences;
//	}
//
//	public void setCompetences(Competences competences) {
//		this.competences = competences;
//	}

	public String getNomPerso() {
		return nomPerso;
	}

	public void setNomPerso(String nomPerso) {
		this.nomPerso = nomPerso;
	}

	public Armure getArmure() {
		return armure;
	}

	public void setArmure(Armure armure) {
		this.armure = armure;
	}

	public PersoType getType() {
		return type;
	}

	public void setType(PersoType type) {
		this.type = type;
	}

	public int getVie() {
		return vie;
	}

	public void setVie(int vie) {
		this.vie = vie;
	}

	public int getVieCourante() {
		return vieCourante;
	}

	public void setVieCourante(int vieCourante) {
		this.vieCourante = vieCourante;
	}

	/*public ArrayList<Item> getInventory() {
		return inventory;
	}

	public void setInventory(ArrayList<Item> inventory) {
		this.inventory = inventory;
	}*/

	public Classe getClasse() {
		return classe;
	}

	public void setClasse(Classe classe) {
		this.classe = classe;
	}

	public Race getRace() {
		return race;
	}

	public void setRace(Race race) {
		this.race = race;
	}

	public Alignement getAlignement() {
		return alignement;
	}

	public void setAlignement(Alignement alignement) {
		this.alignement = alignement;
	}

	public static Alignement toAlignement(String s) {
		if (s.equals("Loyal Bon")) {
			return Alignement.LOYALBON ;
		} 
		if (s.equals("Chaotique Bon")) {
			return Alignement.CHAOTIQUEBON ;
		}
		if (s.equals("Neutre Bon")) {
			return Alignement.NEUTREBON ;
		}
		if (s.equals("Loyal Neutre")) {
			return Alignement.LOYALNEUTRE ;
		}
		if (s.equals("Neutre Strict")) {
			return Alignement.NEUTRESTRICT ;
		}
		if (s.equals("Chaotique Neutre")) {
			return Alignement.CHAOTIQUENEUTRE ;
		}
		if (s.equals("Loyal Mauvais")) {
			return Alignement.LOYALMAUVAIS ;
		}
		if (s.equals("Neutre Mauvais")) {
			return Alignement.NEUTREMAUVAIS ;
		}
		if (s.equals("Chaotique Mauvais")) {
			return Alignement.CHAOTIQUEMAUVAIS ;
		}
		else {
			return null ;
		}	
	}

	public Arme getArmeDroite() {
		return armeDroite;
	}

	public void setArmeDroite(Arme armeDroite) {
		this.armeDroite = armeDroite;
	}

}
