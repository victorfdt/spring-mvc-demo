package com.victorfdt.mvc.entity;

import java.util.ArrayList;
import java.util.List;

public class Student {

	private String firstName;
	private String lastName;
	private String country;
	private String progLanguage;
	private List<String> operatingSystems = new ArrayList<>();

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getProgLanguage() {
		return progLanguage;
	}

	public void setProgLanguage(String pLanguage) {
		this.progLanguage = pLanguage;
	}

	public List<String> getOperatingSystems() {
		return operatingSystems;
	}

	public void setOperatingSystems(List<String> operatingSystems) {
		this.operatingSystems = operatingSystems;
	}
	
}
