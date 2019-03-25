package com.victorfdt.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.victorfdt.mvc.CountryResourceService;
import com.victorfdt.mvc.ProgLangResourceService;
import com.victorfdt.mvc.entity.Student;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	CountryResourceService countryResource;

	private ProgLangResourceService progLangResourceService;

	@Autowired
	public StudentController(ProgLangResourceService progLangResourceService) {
		this.progLangResourceService = progLangResourceService;
	}

	/**
	 * Calls the student form and add a student model
	 * 
	 * @param model
	 * @return name of the form page
	 */
	@RequestMapping("/showForm")
	public String showForm(Model model) {

		// add the student
		model.addAttribute("student", new Student());

		// add the countryList in the model
		model.addAttribute("countryList", countryResource.data());

		// add the programming languages
		model.addAttribute("progLanguages", progLangResourceService.data());

		return "student-form";
	}

	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("student") Student student) {

		// log the input data
		System.out.println(student.getFirstName());

		return "student-confirmation";
	}
}
