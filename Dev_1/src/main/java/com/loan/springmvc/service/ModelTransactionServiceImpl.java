package com.loan.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.loan.springmvc.dao.ModelTransactionDao;
import com.loan.springmvc.model.ModelTransaction;

@Service("modelTransactionService")
@Transactional
public class ModelTransactionServiceImpl implements ModelTransactionService{

	@Autowired
	private ModelTransactionDao dao;
	
	public void saveModelTransaction(ModelTransaction modeltransaction) {/*
		ModelTransaction modeltransaction = new ModelTransaction();
		modeltransaction.setTransactionname("Employee");
		modeltransaction.setChangedby(employee.getUsername());
		modeltransaction.setChangedescription("");
		modeltransaction.setEntitykey(employee.getEmployeeid());
		modeltransaction.setEntityname("Employee");
		modeltransaction.setMethodname("");
		
		modelTransactionDao.save(modeltransaction);*/
		dao.save(modeltransaction);
	}

}
