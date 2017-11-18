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
	
	@Column(name="STATUS")
	private String status ;

	public Integer getTransactionid() {
		return transactionid;
	}

	public void setTransactionid(Integer transactionid) {
		this.transactionid = transactionid;
	}

	public String getTransactionname() {
		return transactionname;
	}

	public void setTransactionname(String transactionname) {
		this.transactionname = transactionname;
	}

	public String getMethodname() {
		return methodname;
	}

	public void setMethodname(String methodname) {
		this.methodname = methodname;
	}

	public Timestamp getTransactiontime() {
		return transactiontime;
	}

	public void setTransactiontime(Timestamp transactiontime) {
		this.transactiontime = transactiontime;
	}

	public String getInputparameters() {
		return inputparameters;
	}

	public void setInputparameters(String inputparameters) {
		this.inputparameters = inputparameters;
	}

	public String getChangedescription() {
		return changedescription;
	}

	public void setChangedescription(String changedescription) {
		this.changedescription = changedescription;
	}

	public String getChangedby() {
		return changedby;
	}

	public void setChangedby(String changedby) {
		this.changedby = changedby;
	}

	public String getEntityname() {
		return entityname;
	}

	public void setEntityname(String entityname) {
		this.entityname = entityname;
	}

	public String getEntitykey() {
		return entitykey;
	}

	public void setEntitykey(String entitykey) {
		this.entitykey = entitykey;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((changedby == null) ? 0 : changedby.hashCode());
		result = prime * result + ((changedescription == null) ? 0 : changedescription.hashCode());
		result = prime * result + ((entitykey == null) ? 0 : entitykey.hashCode());
		result = prime * result + ((entityname == null) ? 0 : entityname.hashCode());
		result = prime * result + ((inputparameters == null) ? 0 : inputparameters.hashCode());
		result = prime * result + ((methodname == null) ? 0 : methodname.hashCode());
		result = prime * result + ((status == null) ? 0 : status.hashCode());
		result = prime * result + ((transactionid == null) ? 0 : transactionid.hashCode());
		result = prime * result + ((transactionname == null) ? 0 : transactionname.hashCode());
		result = prime * result + ((transactiontime == null) ? 0 : transactiontime.hashCode());
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
		ModelTransaction other = (ModelTransaction) obj;
		if (changedby == null) {
			if (other.changedby != null)
				return false;
		} else if (!changedby.equals(other.changedby))
			return false;
		if (changedescription == null) {
			if (other.changedescription != null)
				return false;
		} else if (!changedescription.equals(other.changedescription))
			return false;
		if (entitykey == null) {
			if (other.entitykey != null)
				return false;
		} else if (!entitykey.equals(other.entitykey))
			return false;
		if (entityname == null) {
			if (other.entityname != null)
				return false;
		} else if (!entityname.equals(other.entityname))
			return false;
		if (inputparameters == null) {
			if (other.inputparameters != null)
				return false;
		} else if (!inputparameters.equals(other.inputparameters))
			return false;
		if (methodname == null) {
			if (other.methodname != null)
				return false;
		} else if (!methodname.equals(other.methodname))
			return false;
		if (status == null) {
			if (other.status != null)
				return false;
		} else if (!status.equals(other.status))
			return false;
		if (transactionid == null) {
			if (other.transactionid != null)
				return false;
		} else if (!transactionid.equals(other.transactionid))
			return false;
		if (transactionname == null) {
			if (other.transactionname != null)
				return false;
		} else if (!transactionname.equals(other.transactionname))
			return false;
		if (transactiontime == null) {
			if (other.transactiontime != null)
				return false;
		} else if (!transactiontime.equals(other.transactiontime))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ModelTransaction [transactionid=" + transactionid + ", transactionname=" + transactionname
				+ ", methodname=" + methodname + ", transactiontime=" + transactiontime + ", inputparameters="
				+ inputparameters + ", changedescription=" + changedescription + ", changedby=" + changedby
				+ ", entityname=" + entityname + ", entitykey=" + entitykey + ", status=" + status + "]";
	}
	
	

}
