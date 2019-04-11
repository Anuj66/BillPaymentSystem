package com.cts.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cts.entity.User;
import com.cts.entity.Vendor;
import com.cts.entity.Vendor;
import com.cts.entity.Vendor;
import com.cts.service.UserService;
import com.cts.service.VendorService;

//--This controller being used to control all vendor actions--
@Controller
@RequestMapping("/vendor")
public class VendorController {
	@Autowired
	VendorService vendorService;

	@Autowired
	UserService userService;

	final Logger logger = Logger.getLogger(VendorController.class);

	// --Displays admin the list of all vendors--
	@GetMapping("/vendorList")
	public String getAllVendor(Principal principal, Model model) {
		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> listOfVendor = vendorService.getAllVendors();
		model.addAttribute("vendor", listOfVendor);
		return "vendorList";
	}

	// --Displays the vendor registration form--
	@GetMapping("/showVendorForm")
	public String showFormToAddVendor(Model model) {
		Vendor theVendor = new Vendor();

		model.addAttribute("vendor", theVendor);
		return "newVendor";
	}

	// --Saves the vendor details onto the database--
	@PostMapping("/saveVendor")
	public String addVendorToList(@ModelAttribute("vendor") Vendor theVendor, RedirectAttributes redirectAttributes) {

		try {
			vendorService.saveVendor(theVendor);
			return "redirect:/admin?success";
		} catch (Exception e) {
			logger.info(e.toString());
			redirectAttributes.addFlashAttribute("error", e.getMessage());
			return "redirect:/404?fail";
		}

	}

	// --Displays the vendor update form--
	@GetMapping("/updateForm")
	public String showFormForUpdate(@RequestParam("vendorName") String vendorName, Model model) {
		Vendor theVendor = vendorService.getVendor(vendorName);
		model.addAttribute("vendor", theVendor);
		return "newVendor";
	}

	// --Allows admin to delete a vendor from the list of vendors--
	@GetMapping("/delete")
	public String deleteAVendor(@RequestParam("vendorName") String vendorName, Model model) {
		vendorService.deleteVendor(vendorName);
		return "redirect:/admin";
	}

	// --Redirects admin to admin page--
	@GetMapping("/back")
	public String backForm() {
		return "redirect:/admin";
	}
	@GetMapping("/logout")
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/welcome";
	}
}
