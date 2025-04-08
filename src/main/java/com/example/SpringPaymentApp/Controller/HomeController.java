package com.example.SpringPaymentApp.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.SpringPaymentApp.Entity.UserEntity;
import com.example.SpringPaymentApp.Service.UserService;

import jakarta.servlet.http.HttpSession;


@Controller
public class HomeController {
	
	@Autowired
	UserService serv;


    @GetMapping("/index")
    public String homePage() {
        return "index";  // Renders home.jsp
    }

   /*@GetMapping("/profile")
    public String profilePage(@RequestParam String userName, Model model) {
        UserEntity user = serv.getUserByUserName(userName);
        model.addAttribute("user", user);
        return "profile";
    }*/
    
   @GetMapping("/profile")
    public String profilePage(HttpSession session, Model model) {
        UserEntity user = (UserEntity) session.getAttribute("loggedInUser");
        if (user == null) {
            return "login";
        }
        model.addAttribute("user", user);
        return "profile";
    }
   	
   @GetMapping("/editprofile")
   public String editProfile(HttpSession session, Model model) {
       UserEntity user = (UserEntity) session.getAttribute("loggedInUser");
       if (user == null) {
           return "redirect:/login";
       }
       model.addAttribute("user", user);
       return "editprofile"; // This should be your editprofile.jsp page
   }

   @PostMapping("/updateProfile")
   public String updateProfile(@ModelAttribute("user") UserEntity updatedUser, HttpSession session) {
       UserEntity existingUser = (UserEntity) session.getAttribute("loggedInUser");
       if (existingUser == null) {
           return "redirect:/login";
       }

       // Update values
       existingUser.setUserName(updatedUser.getUserName());
       existingUser.setPhoneNum(updatedUser.getPhoneNum());
       existingUser.setEmail(updatedUser.getEmail());
       existingUser.setDob(updatedUser.getDob());
       existingUser.setAddress(updatedUser.getAddress());

       serv.updateUser(existingUser); // Call service method to save
       session.setAttribute("loggedInUser", existingUser); // Refresh session data

       return "redirect:/profile";
   }
   
   @GetMapping("/confirmDelete")
   public String confirmDelete(@RequestParam("userId") Integer userId, Model model) {
       UserEntity user = serv.getUserById(userId);
       model.addAttribute("user", user);
       return "login"; // JSP page name
   }

   /*@PostMapping("/deleteAccount")
   public String deleteAccount(@RequestParam("userId") Integer userId, HttpSession session) {
       if (userId != null) {
           serv.deleteUserById(userId);
           session.invalidate();
           return "redirect:/login?accountDeleted=true";
       }
       return "redirect:/profile?error=missingUserId";
   }*/
   
   @PostMapping("/deleteAccount")
   public String deleteAccount(@RequestParam("userId") Integer userId, HttpSession session) {
       serv.deleteUserById(userId);
       session.invalidate();
       //return "redirect:/login?accountDeleted=true";
       return "confirmDelete";
   }


   
   

    @GetMapping("/transactions")
    public String transactionsPage() {
        return "transactions";  // Renders transactions.jsp
    }

    @GetMapping("/bankStatement")
    public String statementPage() {
        return "bankStatement";  // Renders statement.jsp
    }

    @GetMapping("/logout")
    public String logoutPage() {
        return "logout";  // Renders logout.jsp
    }
}
