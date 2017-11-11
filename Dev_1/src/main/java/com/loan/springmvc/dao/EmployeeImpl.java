package com.loan.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.loan.springmvc.model.Employee;

/**
 * 
 * @author balaj_000
 *
 */
@Repository("employeeDao")
public class EmployeeImpl extends AbstractDao<Integer, Employee> implements EmployeeDao{
	
	static final Logger logger = LoggerFactory.getLogger(EmployeeImpl.class);
	
	public Employee findById(int id) {
		Employee employee = getByKey(id);
		if(employee!=null){
			Hibernate.initialize(employee.getEmployeeProfiles());
		}
		return employee;
	}

	public Employee findByEmployeeId(String employeeid) {
		logger.info("Employeeid : {}", employeeid);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("employeeid", employeeid));
		Employee employee = (Employee)crit.uniqueResult();
		if(employee!=null){
			Hibernate.initialize(employee.getEmployeeProfiles());
		}
		return employee;
	}

	public void save(Employee employee) {
		persist(employee);
	}

	public void deleteByEmployeeId(String employeeid) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("employeeid", employeeid));
		Employee employee = (Employee)crit.uniqueResult();
		delete(employee);
	}

	@SuppressWarnings("unchecked")
	public List<Employee> findAllEmployees() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("firstName"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<Employee> employees = (List<Employee>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(Employee employee : employees){
			Hibernate.initialize(employee.getUserProfiles());
		}*/
		return employees;
	}

}
