package com.animoz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.animoz.controleur.AnimalDto;
import com.animoz.dao.AnimalDao;
import com.animoz.modele.Animal;


@Service
public class AnimalService {
	
	@Autowired
	private AnimalDao animalDao;

	public List<Animal> getAnimaux() {
		return animalDao.getAnimaux();
	}

	public Animal getAnimal(long animalId) {
		return animalDao.getAnimal(animalId);
	}

	@Transactional
	public void ajouter(AnimalDto animalDto) {
		if(! animalDao.existe(animalDto.getNom())) {
			Animal animal = new Animal();
			animal.setNom(animalDto.getNom());
			animal.setDescription(animalDto.getDescription());
			animal.setOrigine(animalDto.getOrigine());
			animal.setEspece(animalDto.getEspece());
			animal.setRegime(animalDto.getRegime());
			animalDao.ajouter(animal);
		}
	}
	
	@Transactional
	public void modifier(Animal animal,long id) {
		Animal animalmd=animalDao.getAnimal(id);
		animalmd.setNom(animal.getNom());
		animalmd.setDescription(animal.getDescription());
		animalmd.setOrigine(animal.getOrigine());
		animalmd.setEspece(animal.getEspece());
		animalmd.setRegime(animal.getRegime());	
	}
}