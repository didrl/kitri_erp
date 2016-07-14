package com.kitrierp.common.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitrierp.common.model.service.CommonService;

@Controller
@RequestMapping("/common")
public class CommonController {
	@Autowired
	private CommonService commonService;
	
	@RequestMapping("/doc_id.erp")
	public String docId() {
		String doc_id = "";
		int doc_type_id = 01;
		doc_id = commonService.doc_id(doc_type_id);
		System.out.println(doc_id);
		return doc_id;
	}
	
}
