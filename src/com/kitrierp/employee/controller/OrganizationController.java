package com.kitrierp.employee.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.employee.model.EmployeeDto;
import com.kitrierp.employee.model.service.OrganizationService;

@Controller
@RequestMapping("/organization")
public class OrganizationController {
	@Autowired
	private OrganizationService organizationService;
	
	@RequestMapping("/emp_list.erp")
	public ModelAndView organizationList(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		String cellnum = request.getParameter("cellnum");
		List<EmployeeDto> olist=organizationService.organizationList();
		mav.addObject("olist",olist);
		mav.addObject("cellnum",cellnum);
		mav.setViewName("/doc/m_organization");
		return mav;
	}
}
