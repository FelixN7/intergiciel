package bean;

import java.util.ArrayList;

import javax.persistence.Entity;
import javax.persistence.Id;

import Utilities.Caracteristiques;
import Utilities.Competences;
import Utilities.PersoType;
import Utilities.Sauvegardes;

@Entity
public class Fiche {
	
	@Id
	private String nomPerso ;
	private Utilisateur joueur ;
	private Caracteristiques caracteristiques ;
	private ArrayList<bean.Partie> listeParties ;
	private int initiative ;
	private int attaque ;
	private int ca ;
	private ArrayList<Dons> dons ;
	private int level ;
	private Competences competences ;
	private Arme arme ;
	private Armure armure ;
	private PersoType type ;
	private Sauvegardes sauvegardes ;
	private int vie ;
	private int vieCourante ;
	private ArrayList<Item> inventory ;
	
	public Fiche() {
	}
	
	public Fiche(String nom, Utilisateur u, Caracteristiques c, int vie) {
		this.nomPerso = nom ;
		this.joueur = u ;
		this.caracteristiques = c ;
		this.vie = vie ;
	}

	public Utilisateur getJoueur() {
		return joueur;
	}

	public void setJoueur(Utilisateur joueur) {
		this.joueur = joueur;
	}

	public Caracteristiques getCaracteristiques() {
		return caracteristiques;
	}

	public void setCaracteristiques(Caracteristiques caracteristiques) {
		this.caracteristiques = caracteristiques;
	}

	public ArrayList<bean.Partie> getListeParties() {
		return listeParties;
	}

	public void setListeParties(ArrayList<bean.Partie> listeParties) {
		this.listeParties = listeParties;
	}

	public int getInitiative() {
		return initiative;
	}

	public void setInitiative(int initiative) {
		this.initiative = initiative;
	}

	public int getAttaque() {
		return attaque;
	}

	public void setAttaque(int attaque) {
		this.attaque = attaque;
	}

	public int getCa() {
		return ca;
	}

	public void setCa(int ca) {
		this.ca = ca;
	}

	public ArrayList<Dons> getDons() {
		return dons;
	}

	public void setDons(ArrayList<Dons> dons) {
		this.dons = dons;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public Competences getCompetences() {
		return competences;
	}

	public void setCompetences(Competences competences) {
		this.competences = competences;
	}

	public String getNomPerso() {
		return nomPerso;
	}

	public void setNomPerso(String nomPerso) {
		this.nomPerso = nomPerso;
	}

	public Arme getArme() {
		return arme;
	}

	public void setArme(Arme arme) {
		this.arme = arme;
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

	public Sauvegardes getSauvegardes() {
		return sauvegardes;
	}

	public void setSauvegardes(Sauvegardes sauvegardes) {
		this.sauvegardes = sauvegardes;
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

	public ArrayList<Item> getInventory() {
		return inventory;
	}

	public void setInventory(ArrayList<Item> inventory) {
		this.inventory = inventory;
	}
	
	
	
}
