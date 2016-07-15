package com.kitrierp.doc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.service.BtripReportService;
import com.kitrierp.employee.model.EmployeeDto;

@Controller
@RequestMapping("/btripReport")
public class BtripReportController {
	@Autowired
	private BtripReportService btripReportService;
	
	@RequestMapping(value="/reportDoc.erp", method=RequestMethod.POST)
	public ModelAndView reportDoc(@RequestParam BtripReportDto btripReportDto,
			@RequestParam DocumentDto documentDto,HttpSession session){
		ModelAndView mav = new ModelAndView();
		EmployeeDto employeeDto =(EmployeeDto)session.getAttribute("memberInfo");
		int id = employeeDto.getEmp_id();
		documentDto.setEmp_id(id);
		int write = btripReportService.reportDoc(btripReportDto);
		return mav;
	}
	@RequestMapping(value="/tmpsaveDoc.erp", method=RequestMethod.POST)
	public ModelAndView tmpsaveDoc(@RequestParam BtripReportDto btripReportDto){
		ModelAndView mav = new ModelAndView();
		int save = btripReportService.tmpsaveDoc(btripReportDto); //임시저장으로
		return mav;
	}
}
