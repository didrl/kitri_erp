package com.kitrierp.doc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.doc.model.BtripApplicationDto;
import com.kitrierp.doc.model.PaymentDto;
import com.kitrierp.doc.model.service.PaymentService;

@Controller
@RequestMapping("/payment")
public class PaymentController {
	@Autowired
	private PaymentService paymentService;
	
	@RequestMapping(value="/reportDoc.erp", method=RequestMethod.POST)
	public ModelAndView reportDoc(@RequestParam PaymentDto paymentDto){
		ModelAndView mav = new ModelAndView();
		int write = paymentService.reportDoc(paymentDto);
		return mav;
	}
	@RequestMapping(value="/tmpsaveDoc.erp", method=RequestMethod.POST)
	public ModelAndView tmpsaveDoc(@RequestParam PaymentDto paymentDto){
		ModelAndView mav = new ModelAndView();
		int write = paymentService.tmpsaveDoc(paymentDto); //임시저장으로
		return mav;
	}
	
	@RequestMapping("/viewDoc.erp")
	public ModelAndView viewDoc(@RequestParam String doc_id) {
		ModelAndView mav = new ModelAndView();
		PaymentDto paymentDto = paymentService.viewDoc(doc_id);
		mav.addObject("document", paymentDto);
		mav.addObject("doctype", "지출결의서");
		mav.setViewName("/doc/document/payment_view");
		return mav;
	}
}
