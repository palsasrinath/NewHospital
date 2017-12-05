package com.mankraft.hospital.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mankraft.hospital.form.BookAppointForm;


@Controller
public class BookAppointmentController {
	
	
	@RequestMapping(value = "/bookappointment.htm", method = RequestMethod.GET)
	public ModelAndView showFeedbackPage1() {
		
		ModelAndView mv1=new ModelAndView("services","command",new BookAppointForm());		
		return mv1;

	}
	
	@RequestMapping(method = RequestMethod.GET,value = "/combo_ajax.htm")
	public @ResponseBody String getEmpName(@RequestParam(value = "name") String specilization)
			throws ClassNotFoundException, SQLException {
		ArrayList doctorslist=new ArrayList();
		String specilzationn=specilization;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ajaxdb", "root", "ROOT");
		PreparedStatement ps=con.prepareStatement("select name from doctor where specilization=?");
		ps.setString(1, specilzationn); 
		ResultSet rs = ps.executeQuery();

		doctorslist.clear();
		while (rs.next()) {
			
			doctorslist.add(rs.getString("name")); 
			
		}
		
		JSONArray jsArray = new JSONArray(doctorslist);
		return jsArray.toString();
		
	}
	
	
	
	
	


	
	
	
	

}
