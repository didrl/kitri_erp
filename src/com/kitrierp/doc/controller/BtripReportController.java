package com.kitrierp.doc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.service.BtripReportService;
import com.kitrierp.doc.model.service.DocService;
import com.kitrierp.employee.model.EmployeeDto;

@Controller
@RequestMapping("/btripReport")
public class BtripReportController {
	@Autowired
	private BtripReportService btripReportService;
	@Autowired
	private DocService docService;
	
	//상신하기
	@RequestMapping(value="/reportDoc.erp", method=RequestMethod.POST)
	public ModelAndView reportDoc(@RequestParam BtripReportDto btripReportDto,
			@RequestParam int doc_type_id, HttpSession session){
		ModelAndView mav = new ModelAndView();
		int expense_info_id = btripReportService.expenseInfoSeq();
		EmployeeDto employeeDto =(EmployeeDto)session.getAttribute("memberInfo");
		int id = employeeDto.getEmp_id();
		String doc_id = docService.doc_id(doc_type_id);
		btripReportDto.setEmp_id(id);
		btripReportDto.setDoc_id(doc_id);
		btripReportDto.setExpense_info_id(expense_info_id);
		int write = btripReportService.reportDoc(btripReportDto);
		return mav;
	}
	@RequestMapping(value="/tmpsaveDoc.erp", method=RequestMethod.POST)
	public ModelAndView tmpsaveDoc(@RequestParam BtripReportDto btripReportDto){
		ModelAndView mav = new ModelAndView();
		int save = btripReportService.tmpsaveDoc(btripReportDto); //임시저장으로
		return mav;
	}
	
	@RequestMapping("/viewDoc.erp")
	public ModelAndView viewDoc(@RequestParam String doc_id) {
		ModelAndView mav = new ModelAndView();
		BtripReportDto btripReportDto = btripReportService.viewDoc(doc_id);
		mav.addObject("document", btripReportDto);
		mav.addObject("doctype", "출장신청서");
		mav.setViewName("/doc/document/btrip_report_view");
		return mav;
	}
}
