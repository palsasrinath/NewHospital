package com.mankraft.hospital.jdbctemplate;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.mankraft.hospital.form.FeedbackForm;

public class FeedbackJdbcTemplate {
	
	@Autowired
	private DriverManagerDataSource dataSource;
	private JdbcTemplate jdbcTemplate;
	/**
	 * @return the jdbcTemplate
	 */
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	/**
	 * @param jdbcTemplate the jdbcTemplate to set
	 */
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	/**
	 * @return the dataSource
	 */
	public DriverManagerDataSource getDataSource() {
		return dataSource;
	}
	/**
	 * @param dataSource the dataSource to set
	 */
	public void setDataSource(DriverManagerDataSource dataSource) {
		this.dataSource = dataSource;
	}
	/**
	 * @return the jdbcTemplateObject
	 */
	
	public int populateFeedbackFormData(FeedbackForm feedbackForm) throws DataAccessException {
		String name = feedbackForm.getEmpName();
		String email = feedbackForm.getEmpEmail();
		String mobileNumber=feedbackForm.getMobileNumber();
		String subject=feedbackForm.getSubject();
		String message=feedbackForm.getMessage();
		
		Date submissionDate=new Date();
		String SQL = "insert into t_feedback(name,email,mobileNumber,subject,message,submission_date) values (?,?,?,?,?,?)";
		int i=jdbcTemplate.update(SQL, name,email,mobileNumber,subject,message,submissionDate);
		System.out.println("Record Inserted");
		
		return i;
	}

}
