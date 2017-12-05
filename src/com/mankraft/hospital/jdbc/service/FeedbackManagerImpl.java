package com.mankraft.hospital.jdbc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.mankraft.hospital.form.FeedbackForm;
import com.mankraft.hospital.jdbc.dao.FeedbackDAO;

public class FeedbackManagerImpl implements FeedbackManager {

	@Autowired
	private FeedbackDAO feedbackDAO;

	

	public void setFeedbackDAO(FeedbackDAO feedbackDAO) {
		this.feedbackDAO = feedbackDAO;
	}



	@Override
	@Transactional
	public void saveFeedback(FeedbackForm feedbackForm) {
		
		feedbackDAO.saveFeedback(feedbackForm); 
		
	}

}
