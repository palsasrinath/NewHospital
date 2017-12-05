package com.mankraft.hospital.jdbc.dao;

import com.mankraft.hospital.form.FeedbackForm;

@FunctionalInterface
public interface FeedbackDAO {
	
	public void saveFeedback(FeedbackForm feedbackForm);

}
