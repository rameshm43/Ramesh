package com.loan.springmvc.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MODELTRANSACTION")
public class ModelTransaction implements Serializable{
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer transactionid;
	
	@Column(name="TRANSACTIONNAME")
	private String transactionname;
	
	@Column(name="METHODNAME")
	private String methodname;
	
	@Column(name="TRANSACTIONTIME")
	private Timestamp transactiontime;
	
	@Column(name="INPUTPARAMETERS")
	private String inputparameters;
	
	@Column(name="CHANGEDESCRIPTION")
	private String changedescription;
	
	@Column(name="CHANGEDBY")
	private String changedby;
	
	@Column(name="ENTITYNAME")
	private String entityname;
	
	@Column(name="ENTITYKEY")
	private String entitykey ;

}
