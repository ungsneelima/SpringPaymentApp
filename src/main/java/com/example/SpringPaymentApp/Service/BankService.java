package com.example.SpringPaymentApp.Service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SpringPaymentApp.Entity.BankAccountsEntity;
import com.example.SpringPaymentApp.Repository.BankRepository;

@Service
public class BankService 
{
	@Autowired
	BankRepository bankrepository;
	
	public void addBankAccount(BankAccountsEntity bankAccounts) 
	{
		System.out.println("Saving to DB...");
		bankrepository.save(bankAccounts);
	}

	
	
	
}