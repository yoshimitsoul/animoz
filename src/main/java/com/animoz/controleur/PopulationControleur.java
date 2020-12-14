package com.animoz.controleur;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.animoz.modele.Population;
import com.animoz.service.AnimalService;
import com.animoz.service.EnclosService;
import com.animoz.service.IllegalEnclosException;
import com.animoz.service.PopulationService;

public class PopulationControleur {
	
	@Autowired
	private AnimalService animalService;
	@Autowired
	private PopulationService populationService;
	@Autowired
	private EnclosService enclosService;

	@GetMapping("/populations")
	public String listePopulation(Model model) {
		model.addAttribute("populations", populationService.getPopulations());
		return "populations";
	}
	
	@GetMapping("/ajoutPopulation")
	public String ajouterPopulation(Model model, @ModelAttribute Population population) { //populationDto
		model.addAttribute("animaux", animalService.getAnimaux());
		model.addAttribute("enclos",enclosService.getEnclos());
		return "ajoutPopulation";
	}
	
	@PostMapping("/ajoutPopulation")
	public String ajouterPopulation(Model md, @Valid @ModelAttribute Population population, BindingResult bindingResult) {//populationDto
			try {
				if(bindingResult.hasErrors()) {
					return ajouterPopulation(md, population);
				}else {
					populationService.ajouter(population);
				}
			} catch (IllegalEnclosException e) {
				bindingResult.reject("Danger", e.getMessage());
				return ajouterPopulation(md, population);
			}
			return "redirect:/enclos";
	}
}
