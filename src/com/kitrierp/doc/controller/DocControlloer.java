package com.kitrierp.doc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.kitrierp.doc.model.BtripApplicationDto;
import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.PaymentDto;
import com.kitrierp.doc.model.service.BtripApplicationService;
import com.kitrierp.doc.model.service.BtripReportService;
import com.kitrierp.doc.model.service.ConsultationService;
import com.kitrierp.doc.model.service.DocService;
import com.kitrierp.doc.model.service.PaymentService;
import com.kitrierp.doc.model.service.ProposalService;
import com.kitrierp.employee.model.EmployeeDto;

@Controller 
@RequestMapping("/doc")
@SessionAttributes("memberInfo")
public class DocControlloer {
	@Autowired
	private DocService docService;
	
	@Autowired
	private ProposalService proposalService;
	
	@Autowired
	private ConsultationService consultationService;
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private BtripReportService btripReportService;
	
	@Autowired
	private BtripApplicationService btripApplicationService;
	
	@RequestMapping(value="/mvDoc.erp", method=RequestMethod.GET)
	public ModelAndView mvBtripApplication(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		String doc_type_name = request.getParameter("doc_type");
		int doc_type=0;
		String path="document/";
		switch(Integer.parseInt(doc_type_name)){
			case 1:
				doc_type_name="기안서";
				doc_type=1;
				path += "proposal";
				break;
			case 2:
				doc_type_name="품의서";
				doc_type=2;
				path += "consultation";
				break; 
			case 3:
				doc_type_name="지출결의서";
				doc_type=3;
				path += "payment";
				break;
			case 4:
				doc_type_name="출장보고서";
				doc_type=4;
				path += "btrip_report";
				break;
			case 5:
				doc_type_name="출장신청서";
				doc_type=5;
				path += "btrip_application";
				break;
			case 6:
				doc_type_name="휴가신청서";
				doc_type=6;
				path += "vacation";
				break;
			case 7:
				doc_type_name="업무일지";
				doc_type=7;
				path += "journal";
				break;
			default:
		}
		mav.addObject("doc_type_name",doc_type_name);
		mav.addObject("doc_type",doc_type);
		mav.setViewName("/doc/"+ path);
		return mav;
	}
	
	@RequestMapping("/dep_docBox.erp")
	public ModelAndView dep_docBoxList(){
		ModelAndView mav = new ModelAndView();
		List<DocumentDto> dep_docBoxList=docService.dep_docBoxList();
		mav.addObject("dep_docBoxList",dep_docBoxList);
		mav.setViewName("/doc/dep_docBoxList");
		return mav;
	}
	
	@RequestMapping("/signAppr.erp")
	public ModelAndView signAppr(@ModelAttribute("memberInfo") EmployeeDto employeeDto, int doc_type_id, String doc_id) {
		ModelAndView mav = new ModelAndView();
		int emp_id = employeeDto.getEmp_id();
		int cnt = 0;
		cnt = docService.signAppr(emp_id, doc_id);
		if(cnt != 0) {
			DocumentDto documentDto = null; 
			switch (doc_type_id) {
			case 1 : 
				documentDto = proposalService.viewDoc(doc_id);
				mav.addObject("document", documentDto);
				mav.addObject("doctype", "기안서");
				mav.setViewName("/doc/document/proposal_view");
				break;//기안서
			case 2 : 
				documentDto = consultationService.viewDoc(doc_id);
				mav.addObject("document", documentDto);
				mav.addObject("doctype", "품의서");
				mav.setViewName("/doc/document/consultation_view");
				break;//품의서
			case 3 : 
				PaymentDto paymentDto = paymentService.viewDoc(doc_id);
				mav.addObject("document", paymentDto);
				mav.addObject("doctype", "지출결의서");
				mav.setViewName("/doc/document/payment_view");
				break;//지출결의서
			case 4 : 
				BtripApplicationDto btripApplicationDto = btripApplicationService.viewDoc(doc_id);
				mav.addObject("document", btripApplicationDto);
				mav.addObject("doctype", "출장신청서");
				mav.setViewName("/doc/document/btrip_application_view");
				break;//출장신청서
			case 5 : 
				BtripReportDto btripReportDto = btripReportService.viewDoc(doc_id);
				mav.addObject("document", btripReportDto);
				mav.addObject("doctype", "출장신청서");
				mav.setViewName("/doc/document/btrip_report_view");
				break;//출장보고서
			//case 6 : break;//휴가신청서
			}
		}
		return mav;
	}
	
	@RequestMapping("/signRe.erp")
	public ModelAndView signRe(@ModelAttribute("memberInfo") EmployeeDto employeeDto, int doc_type_id, String doc_id) {
		ModelAndView mav = new ModelAndView();
		int cnt = 0;
		cnt = docService.signRe(employeeDto.getEmp_id(), doc_id);
		if(cnt != 0) {
			DocumentDto documentDto = null;
			switch (doc_type_id) {
			case 1 : 
				documentDto = proposalService.viewDoc(doc_id);
				mav.addObject("document", documentDto);
				mav.addObject("doctype", "기안서");
				mav.setViewName("/doc/document/proposal_view");
				break;//기안서
			case 2 : 
				documentDto = consultationService.viewDoc(doc_id);
				mav.addObject("document", documentDto);
				mav.addObject("doctype", "품의서");
				mav.setViewName("/doc/document/consultation_view");
				break;//품의서
			case 3 : 
				PaymentDto paymentDto = paymentService.viewDoc(doc_id);
				mav.addObject("document", paymentDto);
				mav.addObject("doctype", "지출결의서");
				mav.setViewName("/doc/document/payment_view");
				break;//지출결의서
			case 4 : 
				BtripApplicationDto btripApplicationDto = btripApplicationService.viewDoc(doc_id);
				mav.addObject("document", btripApplicationDto);
				mav.addObject("doctype", "출장신청서");
				mav.setViewName("/doc/document/btrip_application_view");
				break;//출장신청서
			case 5 : 
				BtripReportDto btripReportDto = btripReportService.viewDoc(doc_id);
				mav.addObject("document", btripReportDto);
				mav.addObject("doctype", "출장신청서");
				mav.setViewName("/doc/document/btrip_report_view");
				break;//출장보고서
			//case 6 : break;//휴가신청서
			}
		}
		return mav;
	}

}
