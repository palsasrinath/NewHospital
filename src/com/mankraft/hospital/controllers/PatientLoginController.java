package com.mankraft.hospital.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PatientLoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginSuccess() {
		return "loginSuccess";
	}

}