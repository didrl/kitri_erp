package com.kitrierp.employee.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.employee.model.EmployeeDto;
import com.kitrierp.employee.model.service.EmployeeService;
import com.kitrierp.employee.model.service.EmployeeServiceImpl;

@Controller
@RequestMapping("/employee")
@SessionAttributes("memberInfo")
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(value="/login.erp", method=RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String, String> map){
		
		ModelAndView mav = new ModelAndView();
		EmployeeDto employeeDto = new EmployeeDto();
		employeeDto = employeeService.login(map);
		int id = Integer.parseInt(map.get("id"));
		
		if(id == employeeDto.getEmp_id()) {			
			mav.addObject("memberInfo",employeeDto);
			mav.setViewName("/employee/doc_main");
		} else {
			mav.setViewName("/employee/loginok");
		}
		return mav;
	}
}
