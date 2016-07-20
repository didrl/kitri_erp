package com.kitrierp.employee.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.SignInfoDto;
import com.kitrierp.employee.model.AddressbookDto;
import com.kitrierp.employee.model.EmployeeDto;
import com.kitrierp.employee.model.service.AddressbookService;

@Controller
@SessionAttributes("memberInfo")
@RequestMapping("/addressbook")
public class AddressbookController {
	@Autowired
	private AddressbookService addressbookService;
	
	@RequestMapping(value="/dep_addrbookList.erp", method=RequestMethod.GET )
	public ModelAndView dep_addrbookList(HttpSession session){
		ModelAndView mav = new ModelAndView();
		EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
		int emp_id = eDto.getEmp_id();
		
		List<AddressbookDto> dep_addrbookList=addressbookService.dep_addrbookList(emp_id);
		
		mav.addObject("dep_addrbookList",dep_addrbookList);
		mav.setViewName("/addressbook/dep");
		return mav;
	}
	
	@RequestMapping(value="/per_addrbookList.erp", method=RequestMethod.GET )
	public ModelAndView per_addrbookList(HttpSession session){
		ModelAndView mav = new ModelAndView();
		EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
		int emp_id = eDto.getEmp_id();
		
		List<AddressbookDto> per_addrbookList=addressbookService.per_addrbookList(emp_id);
		
		mav.addObject("per_addrbookList",per_addrbookList);
		mav.setViewName("/addressbook/per");
		return mav;
	}
	
	@RequestMapping(value="/write_addrbook.erp", method=RequestMethod.GET )
	public ModelAndView write_addrbook(HttpSession session){
		ModelAndView mav = new ModelAndView();
		EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
		int emp_id = eDto.getEmp_id();
		
		List<AddressbookDto> write_addrbook=addressbookService.write_addrbook(emp_id);
		
		mav.addObject("write_addrbook",write_addrbook);
		mav.setViewName("/addressbook/write");
		return mav;
	}
	
	@RequestMapping(value="/modify_addrbook.erp", method=RequestMethod.GET )
	public ModelAndView modify_addrbook(HttpSession session){
		ModelAndView mav = new ModelAndView();
		EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
		int emp_id = eDto.getEmp_id();
		
		List<AddressbookDto> modify_addrbook=addressbookService.modify_addrbook(emp_id);
		
		mav.addObject("modify_addrbook",modify_addrbook);
		mav.setViewName("/addressbook/modify");
		return mav;
	}
	
	@RequestMapping(value="/view_addrbook.erp", method=RequestMethod.GET )
	public ModelAndView view_addrbook(HttpSession session){
		ModelAndView mav = new ModelAndView();
		EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
		int emp_id = eDto.getEmp_id();
		
		AddressbookDto view_addrbook=addressbookService.view_addrbook(emp_id);
		
		mav.addObject("view_addrbook",view_addrbook);
		mav.setViewName("/addressbook/view");
		return mav;
	}
}
