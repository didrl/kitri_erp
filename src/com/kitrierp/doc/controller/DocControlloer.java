package com.kitrierp.doc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.service.DocService;

@SessionAttributes("memberInfo")
@RequestMapping("/doc")
@Controller 
public class DocControlloer {
	@Autowired
	private DocService docService;
	
	@RequestMapping(value="/mvBtripApplication.erp", method=RequestMethod.GET)
	public String tmpsaveDoc(@RequestParam DocumentDto documentDto){
		return "redirect:doc/document/btrip_application.jsp";
	}
	
}
