package com.example.SpringPaymentApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;

import com.example.SpringPaymentApp.Entity.BankAccountsEntity;
import com.example.SpringPaymentApp.Service.BankService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AddBankController {

    @Autowired
    BankService bankService;

    /*@GetMapping("/addBankAccount")
    public String addBankAccount(HttpSession session, BankAccountsEntity bankAccounts, Model model) {
        // Check if the 'profileid' is available in the session
        Integer userId = (Integer) session.getAttribute("profileid");

        if (userId == null) {
            // If the session attribute 'profileid' is not found, redirect to login or handle accordingly
            model.addAttribute("errorMessage", "You need to log in to add a bank account.");
            return "login";  // Redirect to the login page (adjust as per your setup)
        }

        // If 'profileid' is available, proceed with adding the bank account
        bankAccounts.setUserId(userId);
        bankService.addBankAccount(bankAccounts);
        model.addAttribute("successMessage", "Account added successfully");

        // Redirect to the index page (or any other page you want after account addition)
        return "index";*/
    
    @PostMapping("/addBankAccount")
    public String addBankAccount(HttpSession session, BankAccountsEntity bankAccounts, Model model) {
        Integer userId = (Integer) session.getAttribute("profileid");

        if (userId == null) {
            model.addAttribute("errorMessage", "You need to log in to add a bank account.");
            return "login";
        }

        bankAccounts.setUserId(userId);
        
        System.out.println("Saving account for userId: " + userId);
        System.out.println("Account Number: " + bankAccounts.getAccountNumber());
        
        bankService.addBankAccount(bankAccounts);
        model.addAttribute("successMessage", "Account added successfully");

        return "index";
    }

    }
