package com.loan.springmvc.model;

import java.io.Serializable;
/**
 * 
 * @author balaj_000
 *
 */
public enum EmployeeProfileType implements Serializable {
	USER("USER"), DBA("DBA"), ADMIN("ADMIN");

	String employeeProfileType;

	private EmployeeProfileType(String employeeProfileType) {
		this.employeeProfileType = employeeProfileType;
	}

	public String getEmployeeProfileType() {
		return employeeProfileType;
	}
}
