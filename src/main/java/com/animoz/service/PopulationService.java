package com.animoz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.animoz.dao.AnimalDao;
import com.animoz.dao.EnclosDao;
import com.animoz.dao.PopulationDao;
import com.animoz.modele.Enclos;
import com.animoz.modele.Population;
import com.animoz.modele.Regime;


@Service
public class PopulationService {
	
	@Autowired
	private PopulationDao populationDao;
	@Autowired
	private AnimalDao animalDao;
	@Autowired
	private EnclosDao enclosDao;

	public List<Population> getPopulations() {
		return populationDao.getPopulations();
	}


	@Transactional
	public void ajouter(Population population) throws IllegalEnclosException {
		Population populationCreation = new Population();
		populationCreation.setAnimal(animalDao.getAnimal(population.getAnimal().getId()));
		populationCreation.setNombreIndividus(population.getNombreIndividus());
		Enclos enclos = enclosDao.getEnclos(population.getEnclos().getId()); 
		
		for (Population p : enclos.getPopulations()) {
			if(population.getEnclos().getId().equals( p.getEnclos().getId())) {
				if(populationCreation.getAnimal().getRegime()==Regime.carnivore) {
					if(!populationCreation.getAnimal().getEspece().equals(p.getAnimal().getEspece())) {
						throw new IllegalEnclosException("DANGER !!! carnivores avec canivores de même espèces et jamais avec herbivores");
					}
				}else if (populationCreation.getAnimal().getRegime()==Regime.herbivore) {
					if(p.getAnimal().getRegime()==Regime.carnivore)
						throw new IllegalEnclosException("DANGER !!!!");
				}
			}
		}
		populationCreation.setEnclos(population.getEnclos());
		populationDao.ajouter(populationCreation);
	}
	
	@Transactional
	public boolean supprimer(long populationId) {
		return true;
	}	
}

	



