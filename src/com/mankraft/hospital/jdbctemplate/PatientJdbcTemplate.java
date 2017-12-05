package com.mankraft.hospital.jdbctemplate;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.mankraft.hospital.form.PatientRegisterForm;

public class PatientJdbcTemplate {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public int populatePatientRegisterFormData(PatientRegisterForm patientRegisterForm) {
		String name = patientRegisterForm.getName();
		String email = patientRegisterForm.getEmail();
		String mobileNumber = patientRegisterForm.getPhoneNumber();
		String password = patientRegisterForm.getPassword();
		String city = patientRegisterForm.getCity();
		String center = patientRegisterForm.getCenter();

		Date submissionDate = new Date();
		String SQL = "insert into t_patient_register(name,email,mobileNumber,password,city,center,submission_date) values (?,?,?,?,?,?,?)";
		int i = jdbcTemplate.update(SQL, name, email, mobileNumber, password, city, center, submissionDate);
		System.out.println("Record Inserted");

		return i;
	}

}
