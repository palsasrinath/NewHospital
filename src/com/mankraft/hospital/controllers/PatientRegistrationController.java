package com.mankraft.hospital.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mankraft.hospital.form.PatientRegisterForm;
import com.mankraft.hospital.jdbctemplate.PatientJdbcTemplate;

@Controller
public class PatientRegistrationController {
	
	@Autowired
	private PatientJdbcTemplate patientJdbcTemplate;
	
	
	
	@RequestMapping(value = "/registerView.htm", method = RequestMethod.GET)
	public ModelAndView showPatientRegistrationPage() {

		return new ModelAndView("register", "command", new PatientRegisterForm());

	}
	
	@RequestMapping(value = "/register.htm", method = RequestMethod.POST)
	public String submitFeedback(@ModelAttribute(value = "RegisterForm") PatientRegisterForm patientRegisterForm,
			BindingResult result) {
		int saved = 0; 

		try {
	 saved=	patientJdbcTemplate.populatePatientRegisterFormData(patientRegisterForm);
		}catch (DataAccessException e) {
			e.printStackTrace();

			System.out.println("Please Insert the Record properly ");
		}

		return "redirect:/registerView.htm";


}
	
}
