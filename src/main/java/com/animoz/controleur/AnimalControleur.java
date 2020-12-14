package com.animoz.controleur;

import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.animoz.modele.Regime;
import com.animoz.service.AnimalService;
import com.animoz.service.EspeceService;

@Controller
public class AnimalControleur {
	
	@Autowired
	private AnimalService animalService;
	@Autowired
	private EspeceService especeService;
	
	private static Logger logger = LogManager.getLogger(AnimalControleur.class);
	
	@GetMapping("/animal")
	public String getListeAnimaux(Model model) {
		model.addAttribute("animaux", animalService.getAnimaux());
		return "animaux";
	}

	@GetMapping("/animal/{animalId}")
	public String getAnimal(Model model, @PathVariable long animalId) {
		model.addAttribute("animal", animalService.getAnimal(animalId));
		return "animal";
	}
	
	@GetMapping("/ajoutAnimal")
	public String ajouterAnimal(Model model, @ModelAttribute AnimalDto animalDto) {
		model.addAttribute("especes", especeService.getEspeces());
		model.addAttribute("regimes", Regime.values());
		return "ajoutAnimal";
	}
	
	@PostMapping("/ajoutAnimal")
	public String ajouterAnimal(Model model, @Valid @ModelAttribute AnimalDto animalDto, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			logger.error("erreur dans la méthode POST d'ajoutAnimal");
			return ajouterAnimal(model, animalDto);
		}else {
			animalService.ajouter(animalDto);
			return "redirect:/animal";
		}
	}

}