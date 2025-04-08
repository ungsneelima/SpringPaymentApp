package com.example.SpringPaymentApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.SpringPaymentApp.Entity.UserEntity;
import com.example.SpringPaymentApp.Service.UserService;

import jakarta.servlet.http.HttpSession;
import org.springframework.ui.Model;

@Controller
public class UserLoginController {

    @Autowired
    UserService service;

   /* @PostMapping("/login")
    public String home(@RequestParam String userName, @RequestParam String password, Model model){
        boolean result = service.login(userName, password);
        if(result==true){
            model.addAttribute("userName", userName);
            return "index";
            //return "redirect:/profile?userName=" + userName;
        } else {
            model.addAttribute("error", "Details Not found");
            return "login";
        }
    }*/
    
   @PostMapping("/login")
    public String home(@RequestParam String userName,
                       @RequestParam String password,
                       HttpSession session,
                       Model model) {
        boolean result = service.login(userName, password);

        if (result) {
            UserEntity user = service.getUserByUserName(userName);
            session.setAttribute("loggedInUser", user);  // store in session
            return "index";  // forward to index.jsp
        } else {
            model.addAttribute("error", "Invalid credentials");
            return "login";
        }
    }


    @GetMapping("/login")
    public String loginRedirect() {
        return "login";
    }
    
 
}
