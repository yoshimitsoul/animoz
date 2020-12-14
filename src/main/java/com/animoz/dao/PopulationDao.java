package com.animoz.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.animoz.modele.Population;

@Repository
public class PopulationDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public void ajouter(Population p) {
		em.persist(p);
	}

	public List<Population> getPopulations() {
		return em.createQuery("Select p from Population p",Population.class).getResultList();
	}
	
	public boolean existe(long populationId) {
		long nb = em.createQuery("select count(e) from Population p where lower(p.nom) = lower(:nom)", Long.class)
				    .setParameter("nom", populationId)
				    .getSingleResult();
		return nb > 0;
	}
	
	public void supprimer(Population p) {
		em.remove(p);
	}
}	

	


