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
@RequestMapping("/btripReport")
public class BtripReportController {
	@Autowired
	private BtripReportService btripReportService;
	
	@RequestMapping(value="/reportDoc.erp", method=RequestMethod.POST)
	public ModelAndView reportDoc(@RequestParam BtripReportDto btripReportDto){
		ModelAndView mav = new ModelAndView();
		int write = btripReportService.reportDoc(btripReportDto);
		return mav;
	}
	@RequestMapping(value="/tmpsaveDoc.erp", method=RequestMethod.POST)
	public ModelAndView tmpsaveDoc(@RequestParam BtripReportDto btripReportDto){
		ModelAndView mav = new ModelAndView();
		int write = btripReportService.tmpsaveDoc(btripReportDto); //임시저장으로
		return mav;
	}
}
