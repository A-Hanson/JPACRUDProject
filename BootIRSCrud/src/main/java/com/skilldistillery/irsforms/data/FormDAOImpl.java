package com.skilldistillery.irsforms.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.irsforms.entities.Form;

@Service
@Transactional
public class FormDAOImpl implements FormDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Form findById(int formId) {
		return em.find(Form.class, formId);
	}

	@Override
	public List<Form> findAll() {
		String query = "SELECT f FROM Form f";
		return em.createQuery(query, Form.class).getResultList();
	}

}
