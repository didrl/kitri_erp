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
import com.kitrierp.doc.model.ReceiveListDto;
import com.kitrierp.doc.model.ReferenceDto;
import com.kitrierp.doc.model.SignInfoDto;
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
//	public ModelAndView reportDoc(@RequestParam Map<String, String>map, HttpSession session){
	public String reportDoc(@RequestParam Map<String, String>map, HttpSession session){
//		ModelAndView mav = new ModelAndView();
		EmployeeDto employeeDto =(EmployeeDto)session.getAttribute("memberInfo");
		String doc_id = docService.doc_id(Integer.parseInt(map.get("doc_type_id")));
		int receiver = Integer.parseInt(map.get("approval_dep"));
		int reference = Integer.parseInt(map.get("emp_id20"));
		
		List <SignInfoDto> signInfo = new ArrayList<SignInfoDto>();
		List <CooperationDto> cooperation = new ArrayList<CooperationDto>();
		List <ReceiveListDto> receiveList = new ArrayList<ReceiveListDto>();
		List <ReferenceDto> referenceList = new ArrayList<ReferenceDto>();
		
		BtripReportDto btripReportDto = new BtripReportDto();
		CooperationDto cooperationDto= null; 
		BtripPaymentDto btripPaymentDto = new BtripPaymentDto();
		SignInfoDto signInfoDto = null;
		ReceiveListDto receiveListDto = new ReceiveListDto();
		ReferenceDto referenceDto = new ReferenceDto();
		
		referenceDto.setDoc_id(doc_id);
		referenceDto.setEmp_id(reference);
		referenceList.add(referenceDto);

		receiveListDto.setDoc_id(doc_id);
		receiveListDto.setDep_id(receiver);
		receiveList.add(receiveListDto);
		
		for(int i=0;i<5;++i){
			if(!"".equals(map.get("emp_id"+i))){
				System.out.println(map.get("emp_id"+i));
				signInfoDto = new SignInfoDto();
				signInfoDto.setDoc_id(doc_id);
				signInfoDto.setEmp_id(Integer.parseInt(map.get("emp_id"+i)));
				signInfoDto.setGrade_id(Integer.parseInt(map.get("grade_id"+i)));
				signInfo.add(signInfoDto);
			}
			
			if(!"".equals(map.get("emp_id"+(i+10)))){
				System.out.println(map.get("emp_id"+(i+10)));
				cooperationDto = new CooperationDto();
				cooperationDto.setDoc_id(doc_id);
				cooperationDto.setEmp_id(Integer.parseInt(map.get("emp_id"+(i+10))));
				cooperationDto.setGrade_id(Integer.parseInt(map.get("grade_id"+(i+10))));
				cooperation.add(cooperationDto);
			}
		}
		System.out.println("doc_date :  "+map.get("doc_date"));
		System.out.println("cooperation Size :  "+cooperation.size());
		System.out.println("signInfo Size :  "+signInfo.size());
		
//		cooperationDto.setCoop_seq(coop_seq);
		
		btripReportDto.setEmp_id(employeeDto.getEmp_id());
		btripReportDto.setExp_daily(Integer.parseInt(map.get("exp_daily")));
		btripReportDto.setExp_etc(Integer.parseInt(map.get("exp_etc")));
		btripReportDto.setExp_food(Integer.parseInt(map.get("exp_food")));
		btripReportDto.setExp_room(Integer.parseInt(map.get("exp_room")));
		btripReportDto.setExp_trans(Integer.parseInt(map.get("exp_trans")));
		btripReportDto.setExp_total(Integer.parseInt(map.get("exp_total")));
		btripReportDto.setStart_date(map.get("start_date"));
		btripReportDto.setEnd_date(map.get("end_date"));
		
		btripReportDto.setSign_info(signInfo);
		btripReportDto.setCooperation(cooperation);
		btripReportDto.setReceiver(receiveList);
		btripReportDto.setReference(referenceList);
		
		btripReportDto.setBtrip_location(map.get("btrip_location"));
		btripReportDto.setCooperation(cooperation);
		btripReportDto.setDoc_content(map.get("doc_content"));
		btripReportDto.setDep_name(employeeDto.getDep_name());
		btripReportDto.setDoc_date(map.get("doc_date"));
		btripReportDto.setDoc_dep_id(employeeDto.getDep_id());
		btripReportDto.setDoc_id(doc_id);
		btripReportDto.setDoc_note(map.get("doc_note"));
		btripReportDto.setDoc_open(Integer.parseInt(map.get("doc_open")));
		btripReportDto.setDoc_status_id(Integer.parseInt(map.get("doc_status_id")));
		btripReportDto.setDoc_subject(map.get("doc_subject"));
		btripReportDto.setDoc_type_name(map.get("doc_type_name"));
		btripReportDto.setEmp_id(employeeDto.getEmp_id());
		btripReportDto.setExpense_info_id(btripReportService.expenseInfoSeq());
		
//		int write = btripReportService.reportDoc(btripReportDto);
		
		//query 나누기
		btripReportService.writeDoc(btripReportDto);
//		btripReportService.writeSignInfo(btripReportDto);
//		btripReportService.writeCooperation(btripReportDto);
//		btripReportService.writeReceiveList(btripReportDto);
//		btripReportService.writeReference(btripReportDto);
		
		
		return "redirect:/doc/docBox/per_report.erp";
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
