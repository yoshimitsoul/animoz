package com.animoz.controleur;

import javax.validation.constraints.Min;

public class PopulationDto {

	private long id;
	
	@Min(value=1, message="Le nombre doit être au moins égal à 1 !")
	private int nombreIndividus = 1;
	
	private long animal;
	private long enclos;
	
	public long getAnimal() {
		return animal;
	}

	public void setAnimal(long animal) {
		this.animal = animal;
	}

	public long getEnclos() {
		return enclos;
	}

	public void setEnclos(long enclos) {
		this.enclos = enclos;
	}

	public PopulationDto() {
		super();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getNombreIndividus() {
		return nombreIndividus;
	}

	public void setNombreIndividus(int nombreIndividus) {
		if(nombreIndividus < 0) {
			this.nombreIndividus = nombreIndividus * -1;
		}else {
			this.nombreIndividus = nombreIndividus;
		}
	}

	@Override
	public String toString() {
		return "PopulationDto [id=" + id + ", nombreIndividus=" + nombreIndividus + ", animal=" + animal
				+ ", idEnclos=" + enclos + "]";
	}

}