package com.victorfdt.mvc;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class CountryResourceService implements ResourceService {

	private LinkedHashMap<String, String> data = new LinkedHashMap<>();

	@Override
	public Map<String, String> data() {
		data.put("BRA", "Brazil");
		data.put("CHI", "China");
		data.put("NLS", "Netherlands");
		data.put("USA", "United States");
		
		return data;
	}

}
