package com.kitrierp.doc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.service.DocService;

@SessionAttributes("memberInfo")
@RequestMapping("/doc")
@Controller 
public class DocControlloer {
	@Autowired
	private DocService docService;
	
	@RequestMapping(value="/mvBtripApplication.erp", method=RequestMethod.GET)
	public String mvBtripApplication(HttpServletRequest request){
		WebUtils.setSessionAttribute(request, "docType", 4);
		return "redirect:/doc/document/btrip_application.jsp";
	}
	@RequestMapping(value="/mvBtripReport.erp", method=RequestMethod.GET)
	public String mvBtripReport(HttpServletRequest request){
		WebUtils.setSessionAttribute(request, "docType", 5);
		return "redirect:/doc/document/btrip_report.jsp";
	}
	@RequestMapping(value="/mvConsultation.erp", method=RequestMethod.GET)
	public String mvConsultation(HttpServletRequest request){
		WebUtils.setSessionAttribute(request, "docType", 2);
		return "redirect:/doc/document/consultation.jsp";
	}
	@RequestMapping(value="/mvPayment.erp", method=RequestMethod.GET)
	public String mvPayment(HttpServletRequest request){
		WebUtils.setSessionAttribute(request, "docType", 3);
		return "redirect:/doc/document/payment.jsp";
	}
	@RequestMapping(value="/mvProposal.erp", method=RequestMethod.GET)
	public String mvProposal(HttpServletRequest request){
		WebUtils.setSessionAttribute(request, "docType", 1);
		return "redirect:/doc/document/proposal.jsp";
	}
	@RequestMapping(value="/mvJounal.erp", method=RequestMethod.GET)
	public String mvJounal(HttpServletRequest request){
		WebUtils.setSessionAttribute(request, "docType", 7);
		return "redirect:/doc/document/jounal.jsp";
	}

	@RequestMapping("/dep_docBox.erp")
	public ModelAndView dep_docBoxList(){
		ModelAndView mav = new ModelAndView();
		List<DocumentDto> dep_docBoxList=docService.dep_docBoxList();
		mav.addObject("dep_docBoxList",dep_docBoxList);
		mav.setViewName("/doc/dep_docBoxList");
		return mav;
	}

}
