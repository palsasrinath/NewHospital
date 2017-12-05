package com.mankraft.hospital.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class PatientHomePageController {
	
	@RequestMapping(value = "/patientHome.htm", method = RequestMethod.POST)
	public String patientHomePage() {

		return null;

	}

}
