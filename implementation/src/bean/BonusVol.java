package bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

@Entity
@IdClass(ClasseLvl.class)
public class BonusVol implements Serializable {

	@Id
	private String classeName;
	@Id
	private int lvl;
	private int modificateur;

	public BonusVol(){}

	public BonusVol(String name, int niveau,int modif){
		classeName=name;
		lvl=niveau;
		modificateur=modif;
	}

	public int getModificateur() {
		return modificateur;
	}

	public void setModificateur(int modificateur) {
		this.modificateur = modificateur;
	}

	public String getClasseName() {
		return classeName;
	}

	public void setClasseName(String classeName) {
		this.classeName = classeName;
	}

	public int getLvl() {
		return lvl;
	}

	public void setLvl(int lvl) {
		this.lvl = lvl;
	}

}
