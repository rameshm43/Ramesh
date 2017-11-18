package com.loan.springmvc.json;

import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonParser {
	
	ObjectMapper objectMapper=new ObjectMapper();
	 public <T> T parseJson(String json,Class<T> targetType)throws Exception{   
	//uncomment this line if you want to ignore some fields, they dont have to   be in your POJO then    
	 //objectMapper.configure(Feature.FAIL_ON_UNKNOWN_PROPERTIES, false);

	 return objectMapper.readValue(json, targetType);
	}

}
