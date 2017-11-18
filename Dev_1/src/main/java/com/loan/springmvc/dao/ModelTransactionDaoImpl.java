package com.loan.springmvc.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.loan.springmvc.model.ModelTransaction;

@Repository("modelTransactionDao")
public class ModelTransactionDaoImpl extends AbstractDao<Integer, ModelTransaction> implements ModelTransactionDao{
	
	static final Logger logger = LoggerFactory.getLogger(ModelTransactionDaoImpl.class);
	
	public void save(ModelTransaction modeltransaction) {
		persist(modeltransaction);				
	}
	

}
