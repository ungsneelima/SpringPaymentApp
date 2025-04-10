package com.example.SpringPaymentApp.Repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.SpringPaymentApp.Entity.UserEntity;
import com.example.SpringPaymentApp.Entity.BankAccountsEntity;

public interface BankRepository extends  JpaRepository<BankAccountsEntity,Integer> 
{

}