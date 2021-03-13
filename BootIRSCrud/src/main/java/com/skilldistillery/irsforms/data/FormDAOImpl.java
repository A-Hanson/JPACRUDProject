package com.skilldistillery.irsforms.data;

import java.util.List;
import java.util.Objects;

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

	@Override
	public List<Object[]> findAllUniqueFormNumbers() {
		String query = "SELECT DISTINCT(f.formNumber), f.formTitle FROM Form f";
		return em.createQuery(query, Object[].class).getResultList();
	}

	@Override
	public List<Form> findByFormNumber(String formNumber) {
		String query = "SELECT f FROM Form f WHERE f.formNumber=:num";
		return em.createQuery(query, Form.class).setParameter("num", formNumber).getResultList();
	}

	@Override
	public Form addForm(Form form) {
		em.persist(form);
		em.flush();
		return form;
	}

	@Override
	public Form updateForm(Form form) {
		Form managedForm = em.find(Form.class, form.getId());
		String formNum = form.getFormNumber();
		managedForm.setFormNumber(formNum);
		managedForm.setFormTitle(form.getFormTitle());
		managedForm.setYear(form.getYear());
		em.flush();
		return form;
	}
	
	@Override
	public boolean deleteForm(Form form) {
		Form managedForm = em.find(Form.class, form.getId());
		em.remove(managedForm);
		boolean formWasDeleted = ! em.contains(managedForm);
		em.flush();
		return formWasDeleted;
	}


	
	

}
