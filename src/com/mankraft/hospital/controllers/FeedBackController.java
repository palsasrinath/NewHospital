package com.mankraft.hospital.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mankraft.hospital.form.FeedbackForm;
import com.mankraft.hospital.jdbc.service.FeedbackManager;

@Controller
public class FeedBackController {

	@Autowired
	private FeedbackManager feedbackManager;

	@RequestMapping(value = "/feedbackView.htm", method = RequestMethod.GET)
	public ModelAndView showFeedbackPage() {

		return new ModelAndView("feedback", "command", new FeedbackForm());

	}

	@RequestMapping(value = "/feedback.htm", method = RequestMethod.POST)
	public String submitFeedback(@ModelAttribute("FeedbackForm") FeedbackForm feedbackForm, BindingResult result)
			throws DataAccessException {

		try {
			feedbackManager.saveFeedback(feedbackForm);
		} catch (DataAccessException e) {
			e.printStackTrace();

			System.out.println("Please Insert the Record properly ");
		}

		return "redirect:/feedbackView.htm";

	}

}
