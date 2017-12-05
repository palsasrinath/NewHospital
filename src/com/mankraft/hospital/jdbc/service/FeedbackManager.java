package com.mankraft.hospital.jdbc.service;

import com.mankraft.hospital.form.FeedbackForm;

@FunctionalInterface 
public interface FeedbackManager {
	
	public void saveFeedback(FeedbackForm feedbackForm);

}
