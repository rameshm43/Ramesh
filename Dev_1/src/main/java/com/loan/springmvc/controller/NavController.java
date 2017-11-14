package com.loan.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.loan.springmvc.model.Employee;
import com.loan.springmvc.service.EmployeeService;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class NavController extends PrincipalClass{
	
	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping(value = { "/navication-{tab}-{menu}-{page}" }, method = {RequestMethod.GET})
	public String navPage(ModelMap model, @PathVariable("tab") String tab, @PathVariable("menu") String menu,
			@PathVariable("page") String page) {
		
			model.addAttribute("loggedinuser", getPrincipal());
			if(tab != null && tab.length() > 0)
			model.addAttribute("tab", tab);
			if(menu != null && menu.length() > 0)
			model.addAttribute("menu", menu);
			if(page != null && page.length() > 0)
			model.addAttribute("page", page);
			
			if(page.equalsIgnoreCase("employee")){
				List<Employee> employees = employeeService.findAllUsers();
				model.addAttribute("employees", employees);
				model.addAttribute("employee", new Employee());
				model.addAttribute("create", true);
			}
			
			return page;	    
	}
	
	
	/*@RequestMapping(value = { "/navication-{tab}" }, method = {RequestMethod.GET})
	public String navPage1(ModelMap model, @PathVariable("tab") String tab) {
		
			model.addAttribute("loggedinuser", getPrincipal());
			if(tab != null && tab.length() > 0)
			model.addAttribute("tab", tab);
			
			
			return tab;	    
	}*/

}
