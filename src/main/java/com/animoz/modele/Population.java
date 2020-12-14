package com.animoz.modele;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Min;

import org.springframework.lang.NonNull;

@Entity
public class Population {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NonNull@Min(value=1, message ="Il faut entrer au moins 1 individu")
	private int nombreIndividus=1;
	@ManyToOne
	private Animal animal;
	@ManyToOne
	private Enclos enclos;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getNombreIndividus() {
		return nombreIndividus;
	}

	public void setNombreIndividus(int nbIndiv) {
		this.nombreIndividus = nbIndiv;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal a) {
		this.animal = a;
	}

	public Enclos getEnclos() {
		return enclos;
	}

	public void setEnclos(Enclos enc) {
		this.enclos = enc;
	}
}