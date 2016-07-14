package com.kitrierp.doc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kitrierp.doc.model.service.DocService;

@SessionAttributes("memberInfo,docType")
@RequestMapping("/doc")
@Controller 
public class DocControlloer {
	@Autowired
	private DocService docService;
	
	@RequestMapping(value="/mvBtripApplication.erp", method=RequestMethod.GET)
	public String mvBtripApplication(HttpSession session){
		session.setAttribute("docType", 4);
		return "redirect:/doc/document/btrip_application.jsp";
	}
	@RequestMapping(value="/mvBtripReport.erp", method=RequestMethod.GET)
	public String mvBtripReport(HttpSession session){
//		session.setAttribute("docType", 5);
		return "redirect:/doc/document/btrip_report.jsp?docType=5";
	}
	@RequestMapping(value="/mvConsultation.erp", method=RequestMethod.GET)
	public String mvConsultation(HttpSession session){
		session.setAttribute("docType", 2);
		return "redirect:/doc/document/consultation.jsp";
	}
	@RequestMapping(value="/mvPayment.erp", method=RequestMethod.GET)
	public String mvPayment(HttpSession session){
		session.setAttribute("docType", 3);
		return "redirect:/doc/document/payment.jsp";
	}
	@RequestMapping(value="/mvProposal.erp", method=RequestMethod.GET)
	public String mvProposal(HttpSession session){
		session.setAttribute("docType", 1);
		return "redirect:/doc/document/proposal.jsp";
	}
	@RequestMapping(value="/mvJounal.erp", method=RequestMethod.GET)
	public String mvJounal(HttpSession session){
		session.setAttribute("docType", 7);
		return "redirect:/doc/document/jounal.jsp";
	}
	
}
