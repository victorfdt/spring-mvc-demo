package com.victorfdt.mvc.controller;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.victorfdt.mvc.entity.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@RequestMapping("/showForm")
	public String showForm(Model model) {

		model.addAttribute("customer", new Customer());

		return "customer-form";
	}

	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute Customer customer, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "customer-form";
		} else {

			return "customer-confirmation";
		}
	}

	/**
	 * This method is called on every incoming request.
	 * It has a custom editor for removing white spaces.
	 * @param dataBinder
	 */
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {

		// Class available at Spring API
		// the true value in the constructor, turn empty words to null
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

		// for every String class, apply the stringTrimmerEditor
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
}
