package com.cts.controller;

import java.security.Principal;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.entity.User;
import com.cts.entity.UserRole;
import com.cts.entity.Vendor;
import com.cts.service.UserService;

//--This controller being used to control all user actions--
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;

	// --Displays the list of all user to the admin--
	@GetMapping("/userList")
	public String getAllUsers(Principal principal, Model model) {
		String username = principal.getName();
		List<User> lb = userService.getAllUsers();
		model.addAttribute("users", lb);

		User user = userService.getUser(username);
		model.addAttribute("user", user);
		return "userList";
	}

	// --Redirect the user/admin to Home page--
	@GetMapping("/logout")
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}

		return "redirect:/";
	}

	// --Deletes the user from the list of user, done by an admin--
	@GetMapping("/delete")
	public String deleteAPending(@RequestParam("username") String username, Model model) {
		userService.deleteUser(username);
		return "redirect:/user/userList";
	}

	// --Redirects the admin to the admin page--
	@GetMapping("/back")
	public String backForm() {
		return "redirect:/admin";
	}

}