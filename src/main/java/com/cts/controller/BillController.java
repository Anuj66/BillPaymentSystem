package com.cts.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cts.entity.Bill;
import com.cts.entity.User;
import com.cts.entity.Vendor;
import com.cts.service.MyUserDetailService;
import com.cts.service.PayBillService;
import com.cts.service.UserService;
import com.cts.service.VendorService;

//--This controller being used for all bill transactions--
@Controller
@RequestMapping("/bill")
public class BillController {

	final Logger logger = Logger.getLogger(BillController.class);

	@Autowired
	PayBillService billService;

	@Autowired
	UserService userService;

	@Autowired
	VendorService vendorService;

	// --Redirect user to Bill Record Page--
	@GetMapping("/billList")
	public String getBills(Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		return "billPay";
	}

	// --Saves a bill(as paid) onto the database--
	@PostMapping("/saveBill")
	public String addBillToList(@ModelAttribute("bill") Bill bill, RedirectAttributes redirectAttributes) {
		try {
			bill.setBillStatus("Paid");
			billService.payBill(bill);
			return "redirect:/bill/billList?paid";
		} catch (Exception e) {
			logger.info(e.toString());
			redirectAttributes.addFlashAttribute("error", e.getMessage());
			return "redirect:/404?fail";
		}
	}

	// --Displays the electricity form--
	@GetMapping("/showElectricityBillForm")
	public String showFormToAddEletricityBill(Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = new Bill();

		model.addAttribute("bill", bill);
		return "electricityBill";
	}

	// --Displays the tax form--
	@GetMapping("/showTaxBillForm")
	public String showFormToAddTaxBill(Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = new Bill();

		model.addAttribute("bill", bill);
		return "taxBill";
	}

	// --Displays the insurance form--
	@GetMapping("/showInsuranceBillForm")
	public String showFormToAddInsuranceBill(Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = new Bill();

		model.addAttribute("bill", bill);
		return "insuranceBill";
	}

	// --Displays the DTH form--
	@GetMapping("/showDTHBillForm")
	public String showFormToAddDTHBill(Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = new Bill();
		model.addAttribute("bill", bill);
		return "DTHBill";
	}

	// --Displays the credit card form--
	@GetMapping("/showCreditCardBillForm")
	public String showFormToAddCreditCardBill(Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		Bill bill = new Bill();
		model.addAttribute("bill", bill);
		return "creditcardBill";
	}

	// --Displays the telephone form--
	@GetMapping("/showTelephoneBillForm")
	public String showFormToAddTelephoneBill(Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = new Bill();
		model.addAttribute("bill", bill);
		return "telephoneBill";
	}

	// --Displays the loan form--
	@GetMapping("/showLoanBillForm")
	public String showFormToAddLoanBill(Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = new Bill();
		model.addAttribute("bill", bill);
		return "loanBill";
	}

	// --Displays the others bill form--
	@GetMapping("/showOthersBillForm")
	public String showFormToAddOthersBill(Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = new Bill();
		model.addAttribute("bill", bill);
		return "othersBill";
	}

	// --Logs out the user and redirects to the home page--
	@GetMapping("/logout")
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}

		return "redirect:/";
	}

	// --Displays the user transaction history page--
	@GetMapping("/history")
	public String getAllUsers(Principal principal, Model model) {
		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Bill> bills = billService.showAllBills(username);
		model.addAttribute("bill", bills);
		return "transactionalHistory";
	}

	// --Redirect user to billPay page--
	@GetMapping("/back")
	public String backForm() {
		return "redirect:/bill/billList";
	}

	// --Saves a bill(as pending) onto the database--
	@PostMapping("/saveForm")
	public String saveBillForm(@ModelAttribute("bill") Bill bill, RedirectAttributes redirectAttributes) {
		try {
			System.out.println("Bills in save bill "+bill);
			bill.setBillStatus("Pending");
			billService.payBill(bill);
			return "redirect:/bill/billList?save";
		} catch (Exception e) {
			logger.info(e.toString());
			redirectAttributes.addFlashAttribute("error", e.getMessage());
			return "redirect:/404?fail";
		}
	}

	// --Displays the list of pending bills as per the bill type--
	@GetMapping("/billByStatusList")
	public String getBillsByStatus(@RequestParam("billType") String billType, Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Bill> bills = billService.showAllBillsByStatus(username, billType);
		model.addAttribute("bills", bills);
		model.addAttribute("type", billType);
		return "pendingBills";
	}

	// --Selects the type of bill for user to fill as new bill--
	@GetMapping("/selectForm")
	public String selectBillForm(@RequestParam("billType") String billType) {
		if (billType.equalsIgnoreCase("Electricity"))
			return "redirect:/bill/showElectricityBillForm";
		else if (billType.equalsIgnoreCase("Tax"))
			return "redirect:/bill/showTaxBillForm";
		else if (billType.equalsIgnoreCase("Loan"))
			return "redirect:/bill/showLoanBillForm";
		else if (billType.equalsIgnoreCase("Others"))
			return "redirect:/bill/showOthersBillForm";
		else if (billType.equalsIgnoreCase("Insurance"))
			return "redirect:/bill/showInsuranceBillForm";
		else if (billType.equalsIgnoreCase("DTH"))
			return "redirect:/bill/showDTHBillForm";
		else if (billType.equalsIgnoreCase("Telephone"))
			return "redirect:/bill/showTelephoneBillForm";
		else if (billType.equalsIgnoreCase("CreditCard"))
			return "redirect:/bill/showCreditCardBillForm";
		else
			return "billPay";
	}

	// --Allows user to update the selected type of bill from list of pending
	// bills--
	@GetMapping("/selectUpdateForm")
	public String selectUpdateBillForm(@RequestParam("billType") String billType, @RequestParam("billId") String billId,
			Model model) {
		model.addAttribute("billId", billId);
		if (billType.equalsIgnoreCase("Electricity"))
			return "redirect:/bill/updateElectricityBillForm";
		else if (billType.equalsIgnoreCase("Tax"))
			return "redirect:/bill/updateTaxBillForm";
		else if (billType.equalsIgnoreCase("Loan"))
			return "redirect:/bill/updateLoanBillForm";
		else if (billType.equalsIgnoreCase("Others"))
			return "redirect:/bill/updateOthersBillForm";
		else if (billType.equalsIgnoreCase("Insurance"))
			return "redirect:/bill/updateInsuranceBillForm";
		else if (billType.equalsIgnoreCase("DTH"))
			return "redirect:/bill/updateDTHBillForm";
		else if (billType.equalsIgnoreCase("Telephone"))
			return "redirect:/bill/updateTelephoneBillForm";
		else if (billType.equalsIgnoreCase("CreditCard"))
			return "redirect:/bill/updateCreditCardBillForm";
		else
			return "billPay";
	}

	// --Displays the electricity form with details already filled previously by
	// the user--
	@GetMapping("/updateElectricityBillForm")
	public String showFormToUpdateEletricityBill(@ModelAttribute("billId") int billId, Principal principal,
			Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = billService.findBillById(billId);
		System.out.println("Bills in electricity form"+bill);
		model.addAttribute("bill", bill);
		return "electricityBill";
	}

	// --Displays the tax form with details already filled previously by the
	// user--
	@GetMapping("/updateTaxBillForm")
	public String showFormToUpdateTaxBill(@ModelAttribute("billId") int billId, Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = billService.findBillById(billId);
		model.addAttribute("bill", bill);
		return "taxBill";
	}

	// --Displays the insurance form with details already filled previously by
	// the user--
	@GetMapping("/updateInsuranceBillForm")
	public String showFormToUpdateInsuranceBill(@ModelAttribute("billId") int billId, Principal principal,
			Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = billService.findBillById(billId);
		model.addAttribute("bill", bill);
		return "insuranceBill";
	}

	// --Displays the DTH form with details already filled previously by the
	// user--
	@GetMapping("/updateDTHBillForm")
	public String showFormToUpdateDTHBill(@ModelAttribute("billId") int billId, Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = billService.findBillById(billId);
		model.addAttribute("bill", bill);
		return "DTHBill";
	}

	// --Displays the credit card form with details already filled previously by
	// the user--
	@GetMapping("/updateCreditCardBillForm")
	public String showFormToUpdateCreditCardBill(@ModelAttribute("billId") int billId, Principal principal,
			Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		Bill bill = billService.findBillById(billId);
		model.addAttribute("bill", bill);
		return "creditcardBill";
	}

	// --Displays the telephone form with details already filled previously by
	// the user--
	@GetMapping("/updateTelephoneBillForm")
	public String showFormToUpdateTelephoneBill(@ModelAttribute("billId") int billId, Principal principal,
			Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = billService.findBillById(billId);
		model.addAttribute("bill", bill);
		return "telephoneBill";
	}

	// --Displays the loan form with details already filled previously by the
	// user--
	@GetMapping("/updateLoanBillForm")
	public String showFormToUpdateLoanBill(@ModelAttribute("billId") int billId, Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = billService.findBillById(billId);
		model.addAttribute("bill", bill);
		return "loanBill";
	}

	// --Displays the others form with details already filled previously by the
	// user--
	@GetMapping("/updateOthersBillForm")
	public String showFormToUpdateOthersBill(@ModelAttribute("billId") int billId, Principal principal, Model model) {

		String username = principal.getName();
		User user = userService.getUser(username);
		model.addAttribute("user", user);
		List<Vendor> vendors = new ArrayList<>();
		vendors = vendorService.getAllVendors();
		model.addAttribute("vendors", vendors);
		Bill bill = billService.findBillById(billId);
		model.addAttribute("bill", bill);
		return "othersBill";
	}

	// --Delete a bill from the list of bills--
	@GetMapping("/delete")
	public String deleteAPending(@RequestParam("billId") int billId, Model model) {
		billService.deleteBill(billId);
		return "redirect:/bill/billList";
	}

}
