package com.loan.springmvc.dao;

import java.util.List;

import com.loan.springmvc.model.EmployeeProfile;

public interface EmployeeProfileDao {

List<EmployeeProfile> findAll();
	
	EmployeeProfile findByType(String type);
	
	EmployeeProfile findById(int id);
}
