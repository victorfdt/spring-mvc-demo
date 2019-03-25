package com.victorfdt.mvc;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class CountryResourceService implements ResourceService {

	private Map<String, String> data = new HashMap<>();

	@Override
	public Map<String, String> data() {
		data.put("Brazil", "BRA");
		data.put("China", "CHI");
		data.put("Netherlands", "NLS");
		data.put("United States", "USA");
		
		return data;
	}

}
