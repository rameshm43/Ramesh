package com.loan.springmvc.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.loan.springmvc.model.Employee;
import com.loan.springmvc.model.EmployeeProfile;
import com.loan.springmvc.service.EmployeeProfileService;
import com.loan.springmvc.service.EmployeeService;



@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class AppController extends PrincipalClass{

	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	EmployeeProfileService employeeProfileService;
	
	
	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;
	
	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	
	
	/**
	 * This method will list all existing users.
	 */
	@RequestMapping(value = { "/emp", "/list" }, method = RequestMethod.GET)
	public String listUsers(ModelMap model) {

		List<Employee> employees = employeeService.findAllUsers();
		model.addAttribute("employees", employees);
		model.addAttribute("loggedinuser", getPrincipal());
		return "userslist";
	}

	/**
	 * This method will provide the medium to add a new user.
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		model.addAttribute("edit", false);
		model.addAttribute("loggedinuser", getPrincipal());
		return "employee";
	}

	/**
	 * This method will be called on form submission, handling POST request for
	 * saving user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.POST)
	public String saveUser(@Valid Employee employee, BindingResult result,
			ModelMap model) {

		if (result.hasErrors()) {
			return "registration";
		}

		/*
		 * Preferred way to achieve uniqueness of field [sso] should be implementing custom @Unique annotation 
		 * and applying it on field [sso] of Model class [User].
		 * 
		 * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
		 * framework as well while still using internationalized messages.
		 * 
		 */
		if(!employeeService.isUserEmployeeIdUnique(employee.getId(), employee.getEmployeeid())){
			FieldError employeeError =new FieldError("employee","employeeid",messageSource.getMessage("non.unique.employeeid", new String[]{employee.getEmployeeid()}, Locale.getDefault()));
		    result.addError(employeeError);
			return "registration";
		}
		
		employeeService.saveEmployee(employee);

		model.addAttribute("success", "employee " + employee.getFirstName() + " "+ employee.getLastName() + " registered successfully");
		model.addAttribute("loggedinuser", getPrincipal());
		//return "success";
		return "registrationsuccess";
	}


	/**
	 * This method will provide the medium to update an existing user.
	 */
	@RequestMapping(value = { "/edit-employee-{employeeid}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable String employeeid, ModelMap model) {
		Employee employee = employeeService.findByEmployeeId(employeeid);
		model.addAttribute("employee", employee);
		model.addAttribute("edit", true);
		model.addAttribute("loggedinuser", getPrincipal());
		return "registration";
	}
	
	/**
	 * This method will be called on form submission, handling POST request for
	 * updating user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/edit-employee-{employeeid}" }, method = RequestMethod.POST)
	public String updateUser(@Valid Employee employee, BindingResult result,
			ModelMap model, @PathVariable String employeeid) {

		if (result.hasErrors()) {
			return "registration";
		}

		//Uncomment below 'if block' if you WANT TO ALLOW UPDATING EMPLOYEEID in UI which is a unique key to a User.
		if(!employeeService.isUserEmployeeIdUnique(employee.getId(), employee.getEmployeeid())){
			FieldError employeeError =new FieldError("employee","employeeid",messageSource.getMessage("non.unique.employeeid", new String[]{employee.getEmployeeid()}, Locale.getDefault()));
		    result.addError(employeeError);
			return "registration";
		}


		employeeService.updateEmployee(employee);
		model.addAttribute("success", "employee " + employee.getFirstName() + " "+ employee.getLastName() + " updated successfully");
		model.addAttribute("loggedinuser", getPrincipal());
		return "registrationsuccess";
	}

	
	/**
	 * This method will delete an user by it's SSOID value.
	 */
	@RequestMapping(value = { "/delete-employee-{employeeid}" }, method = RequestMethod.GET)
	public String deleteUser(@PathVariable String employeeid) {
		employeeService.deleteEmployeeByEmployeeId(employeeid);
		return "redirect:/list";
	}
	

	/**
	 * This method will provide UserProfile list to views
	 */
	@ModelAttribute("roles")
	public List<EmployeeProfile> initializeEmployeeProfiles() {
		return employeeProfileService.findAll();
	}
	
	/**
	 * This method handles Access-Denied redirect.
	 */
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		return "accessDenied";
	}

	/**
	 * This method handles login GET requests.
	 * If users is already logged-in and tries to goto login page again, will be redirected to list page.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		if (isCurrentAuthenticationAnonymous()) {
			return "login";
	    } else {
	    	return "redirect:/index";  
	    }
	}

	@RequestMapping(value = { "/","/index" }, method = RequestMethod.GET)
	public String indexPage(ModelMap model) {
			model.addAttribute("loggedinuser", getPrincipal());
			return "index";
	    
	}
	
	
	/**
	 * This method handles logout requests.
	 * Toggle the handlers if you are RememberMe functionality is useless in your app.
	 */
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){    
			//new SecurityContextLogoutHandler().logout(request, response, auth);
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
	}

	/**
	 * This method returns the principal[user-name] of logged-in user.
	 
	private String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}*/
	
	/**
	 * This method returns true if users is already authenticated [logged-in], else false.
	 */
	private boolean isCurrentAuthenticationAnonymous() {
	    final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    return authenticationTrustResolver.isAnonymous(authentication);
	}


}