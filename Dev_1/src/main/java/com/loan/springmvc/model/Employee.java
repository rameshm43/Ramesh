package com.loan.springmvc.model;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;
/**
 * 
 * @author balaj_000
 *
 */

@Entity
@Table(name="EMPLOYEE")
public class Employee implements Serializable{
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;

	@NotEmpty
	@Column(name="EMPLOYEEID", unique=true, nullable=false)
	private String employeeid;
	
	@NotEmpty
	@Column(name="USERNAME", nullable=false)
	private String username;
	
	@NotEmpty
	@Column(name="PASSWORD", nullable=false)
	private String password;
		
	@NotEmpty
	@Column(name="FIRST_NAME", nullable=false)
	private String firstName;

	@NotEmpty
	@Column(name="LAST_NAME", nullable=false)
	private String lastName;

	@NotEmpty @Email
	@Column(name="EMAIL", nullable=false)
	private String email;
	
	@Column(name="MIDDLE_INITIAL", nullable=true)
	private String middle_initial;

	@Column(name="TITLE", nullable=true)
	private String title;
	
	@DateTimeFormat(pattern="MM/dd/yyyy")
	@Past
	@Column(name="BIRTHDATE", nullable=true)
	@Temporal(TemporalType.DATE)
	private Date birthdate;

	@DateTimeFormat(pattern="MM/dd/yyyy")
	@Column(name="EMP_HIRE_DATE", nullable=true)
	@Temporal(TemporalType.TIMESTAMP)
	private Date emphiredate;
	
	@NotEmpty
	@Column(name="GENDER", nullable=false)
	private String gender;
	
	@NotEmpty
	@Column(name="SSN", nullable=false)
	private String ssn;
	
	@Column(name="NOTES", nullable=false)
	private String notes;
	
	@NotEmpty
	@Column(name="USERSTATUS", nullable=false)
	private String userstatus;
	
	@Column(name="DEACTIVATIONDATE", nullable=false)
	private String deactivationdate;
	
	@Column(name="MDALLOWMULTIPLESIGNIN", nullable=false)
	private String mdallowmultiplesignin;
	
	@Column(name="TRANSACTION_ID", nullable=false)
	private String transaction_id;
	

	@Valid
	@ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="ADDRESSID")
	 private Address address;	

	@NotEmpty
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "EMPLOYEE_USER_PROFILE", 
             joinColumns = { @JoinColumn(name = "EMPLOYEE_ID") }, 
             inverseJoinColumns = { @JoinColumn(name = "EMPLOYEE_PROFILE_ID") })
	@JsonIgnore
	private Set<EmployeeProfile> employeeProfiles = new HashSet<EmployeeProfile>();

	
	/*Getter and Setter Method */	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmployeeid() {
		return employeeid;
	}

	public void setEmployeeid(String employeeid) {
		this.employeeid = employeeid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMiddle_initial() {
		return middle_initial;
	}

	public void setMiddle_initial(String middle_initial) {
		this.middle_initial = middle_initial;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public Date getEmphiredate() {
		return emphiredate;
	}

	public void setEmphiredate(Date emphiredate) {
		this.emphiredate = emphiredate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getUserstatus() {
		return userstatus;
	}

	public void setUserstatus(String userstatus) {
		this.userstatus = userstatus;
	}

	public String getDeactivationdate() {
		return deactivationdate;
	}

	public void setDeactivationdate(String deactivationdate) {
		this.deactivationdate = deactivationdate;
	}

	public String getMdallowmultiplesignin() {
		return mdallowmultiplesignin;
	}

	public void setMdallowmultiplesignin(String mdallowmultiplesignin) {
		this.mdallowmultiplesignin = mdallowmultiplesignin;
	}

	public String getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(String transaction_id) {
		this.transaction_id = transaction_id;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Set<EmployeeProfile> getEmployeeProfiles() {
		return employeeProfiles;
	}

	public void setEmployeeProfiles(Set<EmployeeProfile> employeeProfiles) {
		this.employeeProfiles = employeeProfiles;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result
				+ ((birthdate == null) ? 0 : birthdate.hashCode());
		result = prime
				* result
				+ ((deactivationdate == null) ? 0 : deactivationdate.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result
				+ ((emphiredate == null) ? 0 : emphiredate.hashCode());
		result = prime
				* result
				+ ((employeeProfiles == null) ? 0 : employeeProfiles.hashCode());
		result = prime * result
				+ ((employeeid == null) ? 0 : employeeid.hashCode());
		result = prime * result
				+ ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result + ((gender == null) ? 0 : gender.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result
				+ ((lastName == null) ? 0 : lastName.hashCode());
		result = prime
				* result
				+ ((mdallowmultiplesignin == null) ? 0 : mdallowmultiplesignin
						.hashCode());
		result = prime * result
				+ ((middle_initial == null) ? 0 : middle_initial.hashCode());
		result = prime * result + ((notes == null) ? 0 : notes.hashCode());
		result = prime * result
				+ ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((ssn == null) ? 0 : ssn.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result
				+ ((transaction_id == null) ? 0 : transaction_id.hashCode());
		result = prime * result
				+ ((username == null) ? 0 : username.hashCode());
		result = prime * result
				+ ((userstatus == null) ? 0 : userstatus.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Employee other = (Employee) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (birthdate == null) {
			if (other.birthdate != null)
				return false;
		} else if (!birthdate.equals(other.birthdate))
			return false;
		if (deactivationdate == null) {
			if (other.deactivationdate != null)
				return false;
		} else if (!deactivationdate.equals(other.deactivationdate))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (emphiredate == null) {
			if (other.emphiredate != null)
				return false;
		} else if (!emphiredate.equals(other.emphiredate))
			return false;
		if (employeeProfiles == null) {
			if (other.employeeProfiles != null)
				return false;
		} else if (!employeeProfiles.equals(other.employeeProfiles))
			return false;
		if (employeeid == null) {
			if (other.employeeid != null)
				return false;
		} else if (!employeeid.equals(other.employeeid))
			return false;
		if (firstName == null) {
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (gender == null) {
			if (other.gender != null)
				return false;
		} else if (!gender.equals(other.gender))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (lastName == null) {
			if (other.lastName != null)
				return false;
		} else if (!lastName.equals(other.lastName))
			return false;
		if (mdallowmultiplesignin == null) {
			if (other.mdallowmultiplesignin != null)
				return false;
		} else if (!mdallowmultiplesignin.equals(other.mdallowmultiplesignin))
			return false;
		if (middle_initial == null) {
			if (other.middle_initial != null)
				return false;
		} else if (!middle_initial.equals(other.middle_initial))
			return false;
		if (notes == null) {
			if (other.notes != null)
				return false;
		} else if (!notes.equals(other.notes))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (ssn == null) {
			if (other.ssn != null)
				return false;
		} else if (!ssn.equals(other.ssn))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (transaction_id == null) {
			if (other.transaction_id != null)
				return false;
		} else if (!transaction_id.equals(other.transaction_id))
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		if (userstatus == null) {
			if (other.userstatus != null)
				return false;
		} else if (!userstatus.equals(other.userstatus))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", employeeid=" + employeeid
				+ ", username=" + username + ", password=" + password
				+ ", firstName=" + firstName + ", lastName=" + lastName
				+ ", email=" + email + ", middle_initial=" + middle_initial
				+ ", title=" + title + ", birthdate=" + birthdate
				+ ", emphiredate=" + emphiredate + ", gender=" + gender
				+ ", ssn=" + ssn + ", notes=" + notes + ", userstatus="
				+ userstatus + ", deactivationdate=" + deactivationdate
				+ ", mdallowmultiplesignin=" + mdallowmultiplesignin
				+ ", transaction_id=" + transaction_id + ", address=" + address
				+ ", employeeProfiles=" + employeeProfiles + "]";
	}



}
