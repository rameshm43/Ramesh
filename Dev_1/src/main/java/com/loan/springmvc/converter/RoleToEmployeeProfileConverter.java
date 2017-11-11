package com.loan.springmvc.converter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.loan.springmvc.model.EmployeeProfile;
import com.loan.springmvc.service.EmployeeProfileService;

/**
 * A converter class used in views to map id's to actual userProfile objects.
 */
@Component
public class RoleToEmployeeProfileConverter implements Converter<Object, EmployeeProfile>{

	static final Logger logger = LoggerFactory.getLogger(RoleToEmployeeProfileConverter.class);
	
	@Autowired
	EmployeeProfileService employeeProfileService;

	/**
	 * Gets UserProfile by Id
	 * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
	 */
	public EmployeeProfile convert(Object element) {
		Integer id = Integer.parseInt((String)element);
		EmployeeProfile profile= employeeProfileService.findById(id);
		logger.info("Profile : {}",profile);
		return profile;
	}
	
}