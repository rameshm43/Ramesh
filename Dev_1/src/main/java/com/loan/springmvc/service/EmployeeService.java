package com.loan.springmvc.service;

import java.util.List;

import com.loan.springmvc.model.Employee;

public interface EmployeeService {
	
	Employee findById(int id);
	
	Employee findByEmployeeId(String employeeid);
	
	void saveEmployee(Employee employee);
	
	void updateEmployee(Employee employee);
	
	void deleteEmployeeByEmployeeId(String employeeid);

	List<Employee> findAllUsers(); 
	
	boolean isUserEmployeeIdUnique(Integer id, String employeeid);

}
