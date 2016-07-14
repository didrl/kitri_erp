package com.kitrierp.doc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.doc.model.BtripApplicationDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.service.ConsultationService;

@Controller
@RequestMapping("/consultation")
public class ConsultationController {
	@Autowired
	private ConsultationService consultationService;
	
	@RequestMapping(value="/reportDoc.erp", method=RequestMethod.POST)
	public ModelAndView reportDoc(@RequestParam DocumentDto documentDto){
		ModelAndView mav = new ModelAndView();
		int write = consultationService.reportDoc(documentDto);
		return mav;
	}
	@RequestMapping(value="/tmpsaveDoc.erp", method=RequestMethod.POST)
	public ModelAndView tmpsaveDoc(@RequestParam DocumentDto documentDto){
		ModelAndView mav = new ModelAndView();
		int write = consultationService.tmpsaveDoc(documentDto); //임시저장으로
		return mav;
	}
}
