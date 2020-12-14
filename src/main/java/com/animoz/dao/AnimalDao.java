package com.animoz.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.animoz.controleur.AnimalDto;
import com.animoz.modele.Animal;

@Repository
public class AnimalDao {
	
	@PersistenceContext
	private EntityManager em;

	public Animal getAnimal(long animalId) {
		return em.find(Animal.class, animalId);
	}

	public List<Animal> getAnimaux() {
		return em.createQuery("select a from Animal a order by a.nom", Animal.class).getResultList();
	}
	
	public boolean existe(String nomAnimal) {
		long nb = em.createQuery("select count(e) from Animal a where lower(a.nom) = lower(:nom)", Long.class)
				    .setParameter("nom", nomAnimal)
				    .getSingleResult();
		return nb > 0;
	}

	public void ajouter(Animal a) {
		em.persist(a);
	}
	
	public void modifier(AnimalDto animalDto, long id){
		em.createQuery("update Animal a set"
				+"a.nom =:nom, "
				+"a.origine =: origine, "
				+"a.description =: description, "
				+"a.regime =: regime, "
				+"a.especeid =: especeid "
				+"where a.id =: id "
				).setParameter("nom", animalDto.getNom()).executeUpdate();
	}
}