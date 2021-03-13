package com.skilldistillery.irsforms.data;

import java.util.List;

import com.skilldistillery.irsforms.entities.Form;

public interface FormDAO {
	Form findById(int formId);
	List<Form> findAll();
	List<Object[]> findAllUniqueFormNumbers();
	List<Form> findByFormNumber(String formNumber);
	Form addForm(Form form);
	Form updateForm(Form form);
	boolean deleteForm(Form form);

	
}
