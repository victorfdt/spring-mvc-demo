package com.victorfdt.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hello") //parent mapping
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showForm() {
		return "formPage";
	}

	@RequestMapping("/processForm")
	public String processForm() {
		return "resultPage";
	}

	// method that reads form data and add data
	// to the model
	@RequestMapping("/processFormLetsShoutDude")
	public String letsShoutDude(HttpServletRequest request, Model model) {

		// read the request parameter from the HTML form
		String studentName = request.getParameter("studentName");

		// put the studentName in upper case
		studentName = studentName.toUpperCase();

		// create the message
		String message = "Yo " + studentName + "!";

		// add the message to the model
		model.addAttribute("message", message);

		return "resultPage";
	}
}
