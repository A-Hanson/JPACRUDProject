package com.skilldistillery.irsforms.data;

import java.util.List;

import com.skilldistillery.irsforms.entities.Form;

public interface FormDAO {
	Form findById(int formId);
	List<Form> findAll();
}
