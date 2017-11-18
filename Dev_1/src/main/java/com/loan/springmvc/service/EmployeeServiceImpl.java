package com.loan.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.loan.springmvc.dao.EmployeeDao;
import com.loan.springmvc.model.Employee;

@Service("employeeService")
@Transactional
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	private EmployeeDao dao;

	@Autowired
    private PasswordEncoder passwordEncoder;
	
	public Employee findById(int id) {
		return dao.findById(id);
	}

	
	public Employee findByEmployeeId(String employeeid) {
		Employee employee = dao.findByEmployeeId(employeeid);
		return employee;
	}

	
	public void saveEmployee(Employee employee) {
		employee.setPassword(passwordEncoder.encode(employee.getPassword()));
		dao.save(employee);
	}

	
	public void updateEmployee(Employee employee) {
		Employee entity = dao.findById(employee.getId());
		if(entity!=null){
			dao.update(employee);
		}
	}

	
	public void deleteEmployeeByEmployeeId(String employeeid) {
		dao.deleteByEmployeeId(employeeid);
	}

	
	public List<Employee> findAllUsers() {
		return dao.findAllEmployees();
		}

	
	public boolean isUserEmployeeIdUnique(Integer id, String employeeid) {
		Employee employee = findByEmployeeId(employeeid);
		return ( employee == null || ((id != null) && (employee.getId() == id)));
	}

}
