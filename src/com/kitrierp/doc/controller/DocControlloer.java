package com.kitrierp.doc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.service.DocService;
import com.kitrierp.employee.model.EmployeeDto;

@SessionAttributes("memberInfo")
@RequestMapping("/doc")
@Controller 
public class DocControlloer {
	@Autowired
	private DocService docService;
	
	@RequestMapping("/dep_docBox.erp")
	public ModelAndView dep_docBoxList(){
		ModelAndView mav = new ModelAndView();
		List<DocumentDto> dep_docBoxList=docService.dep_docBoxList();
		
		mav.addObject("dep_docBoxList",dep_docBoxList);
		mav.setViewName("/doc/dep_docBoxList");
		return mav;
	}
	
}
