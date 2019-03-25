package com.victorfdt.mvc;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class ProgLangResourceService implements ResourceService {
	
	private LinkedHashMap<String,String> data = new LinkedHashMap<>(); 

	@Override
	public Map<String, String> data() {
		
		this.data.put("java", "Java");
		this.data.put("c", "C");
		this.data.put("cpp", "C++");
		
		return this.data;
	}

}
