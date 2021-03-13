package com.skilldistillery.irsforms.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.irsforms.data.FormDAO;

@Controller
public class FormController {
	@Autowired
	private FormDAO formDAO;
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("test", formDAO.findById(1));
		return "index";
	}
}
