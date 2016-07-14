package com.kitrierp.doc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.doc.model.BtripApplicationDto;
import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.service.BtripApplicationService;
import com.kitrierp.doc.model.service.BtripReportService;

@Controller
@RequestMapping("/btripApplication")
public class BtripApplicationController {
	@Autowired
	private BtripApplicationService btripApplicationService;
	
	@RequestMapping(value="/applicationPage.erp", method=RequestMethod.POST)
	public ModelAndView applicationList(@RequestParam BtripApplicationDto btripApplicationDto){
		ModelAndView mav = new ModelAndView();
		int write = btripApplicationService.applicationWrite(btripApplicationDto);
		return mav;
	}
	
}
