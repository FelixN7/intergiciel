package bean;

import java.io.Serializable;

public class ClasseLvl implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String classeName;
	private int lvl;
	
	public ClasseLvl(){}
	
	public ClasseLvl(String name, int niveau){
		classeName=name;
		lvl=niveau;
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((classeName == null) ? 0 : classeName.hashCode());
		result = prime * result + lvl;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ClasseLvl other = (ClasseLvl) obj;
		if (classeName == null) {
			if (other.classeName != null)
				return false;
		} else if (!classeName.equals(other.classeName))
			return false;
		if (lvl != other.lvl)
			return false;
		return true;
	}

	



	
	
}
