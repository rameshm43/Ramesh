package com.loan.springmvc.dao;

import java.util.List;

import com.loan.springmvc.model.Employee;

public interface EmployeeDao {
	
	Employee findById(int id);
	
	Employee findByEmployeeId(String employeeid);
	
	void save(Employee employee);
	
	void deleteByEmployeeId(String employeeid);
	
	List<Employee> findAllEmployees();
	
}
