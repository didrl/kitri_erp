package com.kitrierp.employee.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.employee.model.EmployeeDto;
import com.kitrierp.employee.model.service.EmployeeService;
import com.kitrierp.employee.model.service.EmployeeServiceImpl;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(value="/login.erp", method=RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String, String> map){
		ModelAndView mav = new ModelAndView();
		EmployeeDto employeeDto = employeeService.login(map);
		mav.addObject("memberInfo",map);
		mav.setViewName("/loginok");
		return mav;
	}
}
