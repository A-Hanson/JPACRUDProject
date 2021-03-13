package com.skilldistillery.irsforms.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.irsforms.data.FormDAO;
import com.skilldistillery.irsforms.entities.Form;

@Controller
public class FormController {
	@Autowired
	private FormDAO formDAO;
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		List<Object[]> uniqueFormNumbers = formDAO.findAllUniqueFormNumbers();
		model.addAttribute("uniqueFormNums", uniqueFormNumbers);
		List<Form> forms = formDAO.findAll();
		model.addAttribute("forms", forms);
		return "index";
	}
	
	@RequestMapping(path="getForm.do", params="formId")
	public String displayOneForm(@RequestParam("formId") int formId, Model model) {
//		Form form = formDAO.findById(formId);
		List<Form> forms = new ArrayList<>();
		forms.add(formDAO.findById(formId));
		model.addAttribute("results", forms);
		return "form/show";
	}
	
	@RequestMapping(path="getForm.do", params="formNum")
	public String displayMultiForm(@RequestParam("formNum") String formNum, Model model) {
//		Form form = formDAO.findById(formId);
		List<Form> forms = formDAO.findByFormNumber(formNum);
		model.addAttribute("results", forms);
		return "form/show";
	}
	
	@RequestMapping(path="goToInput.do")
	public String goToInput() {
		return "form/input";
	}
	
	@RequestMapping(path="goToInput.do", params="formNumber")
	public String goToInput(Form form) {
		return "form/input";
	}
	
	@RequestMapping(path="addForm.do", method=RequestMethod.POST)
	public String addForm(Form form, Model model, RedirectAttributes redir) {
		formDAO.addForm(form);
		model.addAttribute("form", form);
		return "redirect:getForm.do?formId=" + form.getId();
	}
	
	@RequestMapping(path="updateForm.do", method=RequestMethod.POST)
	public String updateForm(Form form, Model model, RedirectAttributes redir) {
		form = formDAO.updateForm(form);
		model.addAttribute("form", form);
		return "redirect:getForm.do?formId=" + form.getId();
	}
	
	@RequestMapping(path="deleteForm.do", method=RequestMethod.POST)
	public String deleteForm(Form form, Model model, RedirectAttributes redir) {
		boolean deleted = formDAO.deleteForm(form);
		model.addAttribute("deletedForm", deleted);
		return "redirect:home.do";
	}
	
}
