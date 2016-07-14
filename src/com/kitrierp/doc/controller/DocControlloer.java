package com.kitrierp.doc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kitrierp.doc.model.service.DocService;

@SessionAttributes("memberInfo")
@RequestMapping("/doc")
@Controller 
public class DocControlloer {
	@Autowired
	private DocService docService;
	
	
}
