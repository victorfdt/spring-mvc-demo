package com.victorfdt.mvc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.victorfdt.mvc.entity.Student;

@Controller
@RequestMapping("/student")
public class StudentController {

	// List of countries
	private Map<String, String> countryList = new HashMap<>();
	
	@PostConstruct
	private void init() {
		// load available countries
		countryList.put("Brazil", "BRA");
		countryList.put("China", "CHI");
		countryList.put("Netherlands", "NLS");
		countryList.put("United States", "USA");
	}

	/**
	 * Calls the student form and add a student model
	 * 
	 * @param model
	 * @return name of the form page
	 */
	@RequestMapping("/showForm")
	public String showForm(Model model) {

		model.addAttribute("student", new Student());
		
		// add the countryList in the model
		model.addAttribute("countryList", this.countryList);

		return "student-form";
	}

	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("student") Student student) {

		// log the input data
		System.out.println(student.getFirstName());

		return "student-confirmation";
	}

}
