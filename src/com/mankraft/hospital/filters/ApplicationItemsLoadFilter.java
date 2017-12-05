package com.mankraft.hospital.filters;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ApplicationItemsLoadFilter implements Filter {
	
	
	private JdbcTemplate jdbcTemplate;

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest serRequest, ServletResponse serResponse, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest request=(HttpServletRequest)serRequest;
		
		HttpServletResponse response=(HttpServletResponse)serResponse;
		
		
		List<String>  specilizationNames=loadApplicationItemsFromDB();
		
		
		HttpSession session=request.getSession(true);
		
		session.setAttribute("specilizationNames", specilizationNames); 
		
	}

	
	private List<String> loadApplicationItemsFromDB()
	{

		return jdbcTemplate.query("select specilizationName from t_specilizations", new RowMapper<String>() {
			public String mapRow(ResultSet rs, int row) throws SQLException {
				
				String specilizationNames=rs.getString(1); 	
				
				
				return specilizationNames;
			}
		});
	}
	
	
	@Override
	public void init(FilterConfig config) throws ServletException {
		
	}

}
