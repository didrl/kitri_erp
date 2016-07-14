package com.kitrierp.doc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.service.BtripReportService;

@Controller
@RequestMapping("/")
public class BtripReportController {
	@Autowired
	private BtripReportService btripReportService;
	
	@RequestMapping(value="/reportPage.erp", method=RequestMethod.POST)
	public ModelAndView reportList(@RequestParam BtripReportDto btripReportDto){
		ModelAndView mav = new ModelAndView();
		int write = btripReportService.reportWrite(btripReportDto);   
		return mav;
	}
}
