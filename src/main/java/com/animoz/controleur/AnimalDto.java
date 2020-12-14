package com.animoz.controleur;

import org.hibernate.validator.constraints.NotBlank;

import com.animoz.modele.Espece;
import com.animoz.modele.Regime;

public class AnimalDto {
	
	@NotBlank(message = "Vous devez fournir un nom d'animal !")
	private String nom;
	@NotBlank(message = "Vous devez fournir une origine !")
	private String origine;
	//@NotBlank(message = "Vous devez fournir une description !")
	private String description;
	//@NotBlank(message = "Vous devez fournir un regime !")
	private Regime regime;
	//@NotBlank(message = "Vous devez fournir une espece !")
	private Espece espece;
	
	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public String getOrigine() {
		return origine;
	}

	public void setOrigine(String origine) {
		this.origine = origine;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Regime getRegime() {
		return regime;
	}

	public void setRegime(Regime regime) {
		this.regime = regime;
	}

	public Espece getEspece() {
		return espece;
	}

	public void setEspece(Espece espece) {
		this.espece = espece;
	}
	

}
