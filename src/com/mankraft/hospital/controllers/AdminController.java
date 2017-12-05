package com.mankraft.hospital.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mankraft.hospital.form.AdminRegister;
import com.mankraft.hospital.jdbctemplate.PatientJdbcTemplate;

@Controller
public class AdminController {

	@Autowired
	private PatientJdbcTemplate patientJdbcTemplate;

	@RequestMapping(value = { "/adminLoginView.htm", "/dummyViewLogin.htm" }, method = RequestMethod.GET)
	public ModelAndView showAdminLoginPage() {

		return new ModelAndView("adminLogin", "command", new AdminRegister());

	}

	@RequestMapping(value = {"/admin.htm","/adminDummyView.htm"}, method = RequestMethod.GET)
	public ModelAndView showAdminRegisterPage() {

		return new ModelAndView("adminRegister", "command", new AdminRegister());// adminregister

	}

	@RequestMapping(value = "/adminLogin.htm", method = RequestMethod.POST)
	public ModelAndView submitAdminLogin(@ModelAttribute(value = "RegisterForm") AdminRegister adminRegister,
			BindingResult result) {
		int saved = 0;

		try {
			// saved =
			// patientJdbcTemplate.populateAdminRegisterData(adminRegister);
		} catch (DataAccessException e) {
			e.printStackTrace();

			System.out.println("Please Insert the Record properly ");
		}

		return new ModelAndView("adminHomePage", "command", new AdminRegister());

	}

	@RequestMapping(value = "/adminSubmit.htm", method = RequestMethod.POST)
	public String submitFeedback(@ModelAttribute(value = "RegisterForm") AdminRegister adminRegister,
			BindingResult result) {
		int saved = 0;

		try {
			// saved =
			// patientJdbcTemplate.populateAdminRegisterData(adminRegister);
		} catch (DataAccessException e) {
			e.printStackTrace();

			System.out.println("Please Insert the Record properly ");
		}

		return "redirect:/adminView.htm";

	}

}
