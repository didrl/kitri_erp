package com.kitrierp.doc.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.service.DocBoxService;
import com.kitrierp.employee.model.EmployeeDto;


@SessionAttributes("memberInfo")
@RequestMapping("/doc/docBox")
@Controller 
public class DocBoxControlloer {
	@Autowired
	private DocBoxService docBoxService;
	
	@RequestMapping(value="/mvDocBox.erp", method=RequestMethod.GET)
	public ModelAndView mvDocBox(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		String doc_type = request.getParameter("doc_type");
		String path="document/";
		switch(Integer.parseInt(doc_type)){
			case 1:
				doc_type="기안서";
				path += "proposal";
				break;
			case 2:
				doc_type="품의서";
				path += "consultation";
				break; 
			case 3:
				doc_type="지출결의서";
				path += "payment";
				break;
			case 4:
				doc_type="출장보고서";
				path += "btrip_report";
				break;
			case 5:
				doc_type="출장신청서";
				path += "btrip_application";
				break;
			case 6:
				doc_type="휴가신청서";
				path += "vacation";
				break;
			case 7:
				doc_type="업무일지";
				path += "journal";
				break;
			default:
		}
		mav.addObject("doc_type_name",doc_type);
		mav.setViewName("/doc/"+ path);
		return mav;
	}
	
	/*
	@RequestMapping(value="/dep_docBox.erp", method=RequestMethod.GET )
	public ModelAndView dep_docBoxList(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		int emp_id = Integer.parseInt(request.getParameter("emp_id"));
		List<DocumentDto> dep_docBoxList=docBoxService.dep_docBoxList(emp_id);
		mav.addObject("dep_docBoxList",dep_docBoxList);
		mav.setViewName("/doc/dep_docBoxList");
		return mav;
	}
	*/
	
	/*
	@RequestMapping(value="/dep_docBox.erp", method=RequestMethod.POST)
	public ModelAndView dep_docBoxList(@ModelAttribute("memberInfo") EmployeeDto edto){
		ModelAndView mav = new ModelAndView();
		int emp_id = edto.getEmp_id();		
		List<DocumentDto> dep_docBoxList=docBoxService.dep_docBoxList(emp_id);
		mav.addObject("dep_docBoxList",dep_docBoxList);
		mav.setViewName("/doc/docBox/dep_docbox");
		
		return mav;
	}
	*/
	
	@RequestMapping(value="/dep_docBox.erp", method=RequestMethod.GET)
	public ModelAndView dep_docBoxList(){
		
		ModelAndView mav = new ModelAndView();
		int emp_id = 40990130;		
		List<DocumentDto> dep_docBoxList=docBoxService.dep_docBoxList(emp_id);
		mav.addObject("dep_docBoxList",dep_docBoxList);
		mav.setViewName("/doc/docBox/dep_docBox");
		
		return mav;
	}
	
	
	
	
}
