package net.codejava.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class HomeController implements Controller {
	private MyServices serviceBean;
	
	public void setServiceBean(MyServices serviceBean) {
		this.serviceBean = serviceBean;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		serviceBean.doService();
		
		return new ModelAndView("home");
	}

}