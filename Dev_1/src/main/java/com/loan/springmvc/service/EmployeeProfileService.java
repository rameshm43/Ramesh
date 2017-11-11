package com.loan.springmvc.service;

import java.util.List;

import com.loan.springmvc.model.EmployeeProfile;


public interface EmployeeProfileService {

	EmployeeProfile findById(int id);

	EmployeeProfile findByType(String type);
	
	List<EmployeeProfile> findAll();
	
}
