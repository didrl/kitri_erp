package com.kitrierp.employee.controller;

import java.util.List;

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
	
	@RequestMapping("/list.erp")
	public ModelAndView organizationList(){
		ModelAndView mav = new ModelAndView();
		List<EmployeeDto> olist=organizationService.organizationList();
		mav.addObject("olist",olist);
		mav.setViewName("/doc/m_organization");
		return mav;
		
	}
}
