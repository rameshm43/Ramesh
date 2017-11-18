package com.loan.springmvc.json;

import java.util.List;
import java.util.Map;

import com.loan.springmvc.model.Employee;

public class EmployeeJsonRespone {
	
	private Employee employee;
	private boolean validated;
	private Map<String, String> errorMessages;	 
	private List<Employee> employees;
	 
	public List<Employee> getEmployees() {
		return employees;
	}
	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}
	
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public boolean isValidated() {
		return validated;
	}
	public void setValidated(boolean validated) {
		this.validated = validated;
	}
	public Map<String, String> getErrorMessages() {
		return errorMessages;
	}
	public void setErrorMessages(Map<String, String> errorMessages) {
		this.errorMessages = errorMessages;
	}

}
