package com.kitrierp.doc.controller;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.doc.model.BtripPaymentDto;
import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.CooperationDto;
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
	public ModelAndView reportDoc(@RequestParam Map<String, String>map, HttpSession session){
		ModelAndView mav = new ModelAndView();
		System.out.println(map.get("btrip_location"));
		System.out.println(session.getAttribute("memberInfo"));
		EmployeeDto employeeDto =(EmployeeDto)session.getAttribute("memberInfo");
		String doc_id = docService.doc_id(Integer.parseInt(map.get("doc_type_id")));
		List <BtripPaymentDto> bpay = new ArrayList<BtripPaymentDto>();
		List <CooperationDto> cooperation = new ArrayList<CooperationDto>();
		BtripReportDto btripReportDto = new BtripReportDto();
		CooperationDto cooperationDto = new CooperationDto();
		BtripPaymentDto btripPaymentDto = new BtripPaymentDto();
		
		btripPaymentDto.setEmp_id(employeeDto.getEmp_id());
		btripPaymentDto.setExp_daily(Integer.parseInt(map.get("exp_daily")));
		btripPaymentDto.setExp_etc(Integer.parseInt(map.get("exp_etc")));
		btripPaymentDto.setExp_food(Integer.parseInt(map.get("exp_food")));
		btripPaymentDto.setExp_room(Integer.parseInt(map.get("exp_room")));
		btripPaymentDto.setExp_transe(Integer.parseInt(map.get("exp_transe")));
		btripPaymentDto.setExp_total(Integer.parseInt(map.get("exp_total")));
		bpay.add(btripPaymentDto);
		
		cooperationDto.setEmp_id(employeeDto.getEmp_id());
		cooperationDto.setDoc_id(doc_id);
//		cooperationDto.setCoop_seq(coop_seq);
		
		btripReportDto.setBpay(bpay);
		btripReportDto.setBtrip_location(map.get("btrip_location"));
		btripReportDto.setCooperation(cooperation);
		btripReportDto.setDoc_content(map.get("doc_content"));
		btripReportDto.setDep_name(employeeDto.getDep_name());
		btripReportDto.setDoc_date(map.get("doc_date"));
		btripReportDto.setDoc_deadline(map.get("doc_deadline"));
		btripReportDto.setDoc_dep_id(employeeDto.getDep_id());
		btripReportDto.setDoc_id(doc_id);
		btripReportDto.setDoc_note(map.get("doc_note"));
		btripReportDto.setDoc_open(Integer.parseInt(map.get("doc_open")));
//		btripReportDto.setDoc_status_id(Integer.parseInt(map.get("doc_status_id")));
		btripReportDto.setDoc_subject(map.get("doc_subject"));
		btripReportDto.setDoc_type_name(map.get("doc_type_name"));
		btripReportDto.setEmp_id(employeeDto.getEmp_id());
		btripReportDto.setExpense_info_id(btripReportService.expenseInfoSeq());
		
		int write = btripReportService.reportDoc(btripReportDto);
		return mav;
	}
	//임시저장
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
	@RequestMapping("/modifyDoc.erp")
	public ModelAndView modifyDoc(@RequestParam String doc_id) {
		ModelAndView mav = new ModelAndView();
		BtripReportDto btripReportDto = btripReportService.viewDoc(doc_id);
		mav.addObject("document", btripReportDto);
		mav.addObject("doctype", "출장신청서");
		mav.setViewName("/doc/document/btrip_report");
		return mav;
	}
}
