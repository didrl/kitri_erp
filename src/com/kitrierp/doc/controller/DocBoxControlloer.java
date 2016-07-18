package com.kitrierp.doc.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.doc.model.CooperationDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.SignInfoDto;
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

	//미결재 문서함
		@RequestMapping(value="/approval_undone.erp", method=RequestMethod.GET )
		public ModelAndView app_undone_docBoxList(HttpSession session){
			ModelAndView mav = new ModelAndView();
			EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
			int emp_id = eDto.getEmp_id();
			
			List<DocumentDto> app_undone_docBoxList=docBoxService.app_undone_docBoxList(emp_id);
			List<SignInfoDto> app_undone_docBoxList2=docBoxService.app_undone_docBoxList2(emp_id);
			mav.addObject("app_undone_docBoxList",app_undone_docBoxList);
			mav.addObject("app_undone_docBoxList2",app_undone_docBoxList2);
			mav.setViewName("/doc/docBox/approval_undone");
			return mav;
	}
	
	//결재완료 문서함
		@RequestMapping(value="/approval_done.erp", method=RequestMethod.GET )
		public ModelAndView app_done_docBoxList(HttpSession session){
			ModelAndView mav = new ModelAndView();
			EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
			int emp_id = eDto.getEmp_id();
					
			List<DocumentDto> app_done_docBoxList=docBoxService.app_done_docBoxList(emp_id);
			List<SignInfoDto> app_done_docBoxList2=docBoxService.app_done_docBoxList2(emp_id);					
			mav.addObject("app_done_docBoxList",app_done_docBoxList);
			
			mav.addObject("app_done_docBoxList2",app_done_docBoxList2);
			
			
			mav.setViewName("/doc/docBox/approval_done");
			return mav;
			}
	
		//상신문서함
		@RequestMapping(value="/per_report.erp", method=RequestMethod.GET )
		public ModelAndView per_report_docBoxList(HttpSession session){
			ModelAndView mav = new ModelAndView();
			EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
			int emp_id = eDto.getEmp_id();
			
			List<DocumentDto> per_report_docBoxList=docBoxService.per_report_docBoxList(emp_id);
			mav.addObject("per_report_docBoxList",per_report_docBoxList);
			mav.setViewName("/doc/docBox/per_report");
			return mav;
		}	

		//임시저장 문서함
		@RequestMapping(value="/per_temp.erp", method=RequestMethod.GET )
		public ModelAndView per_temp_docBoxList(HttpSession session){
				ModelAndView mav = new ModelAndView();
				EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
				int emp_id = eDto.getEmp_id();
					
				List<DocumentDto> per_temp_docBoxList=docBoxService.per_temp_docBoxList(emp_id);
				mav.addObject("per_temp_docBoxList",per_temp_docBoxList);
				mav.setViewName("/doc/docBox/per_temp");
				return mav;
		}	
		
		//반려 문서함
		@RequestMapping(value="/per_return.erp", method=RequestMethod.GET )
				public ModelAndView per_return_docBoxList(HttpSession session){
						ModelAndView mav = new ModelAndView();
						EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
						int emp_id = eDto.getEmp_id();
							
						List<DocumentDto> per_return_docBoxList=docBoxService.per_return_docBoxList(emp_id);
						mav.addObject("per_return_docBoxList",per_return_docBoxList);
						mav.setViewName("/doc/docBox/per_return");
						return mav;
		}	
		
		//결재 완료 문서함
				@RequestMapping(value="/per_done.erp", method=RequestMethod.GET )
						public ModelAndView per_done_docBoxList(HttpSession session){
								ModelAndView mav = new ModelAndView();
								EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
								int emp_id = eDto.getEmp_id();
									
								List<DocumentDto> per_done_docBoxList=docBoxService.per_done_docBoxList(emp_id);
								mav.addObject("per_done_docBoxList",per_done_docBoxList);
								mav.setViewName("/doc/docBox/per_done");
								return mav;
				}
		
				//상신 취소 문서함
				@RequestMapping(value="/per_cancel.erp", method=RequestMethod.GET )
						public ModelAndView per_cancel_docBoxList(HttpSession session){
								ModelAndView mav = new ModelAndView();
								EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
								int emp_id = eDto.getEmp_id();
									
								List<DocumentDto> per_cancel_docBoxList=docBoxService.per_cancel_docBoxList(emp_id);
								mav.addObject("per_cancel_docBoxList",per_cancel_docBoxList);
								mav.setViewName("/doc/docBox/per_cancel");
								return mav;
				}

				//협조 미결재 문서함
				@RequestMapping(value="/coop_undone.erp", method=RequestMethod.GET )
				public ModelAndView coop_undone_docBoxList(HttpSession session){
					ModelAndView mav = new ModelAndView();
					EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
					int emp_id = eDto.getEmp_id();
					
					List<DocumentDto> coop_undone_docBoxList=docBoxService.coop_undone_docBoxList(emp_id);
					mav.addObject("coop_undone_docBoxList",coop_undone_docBoxList);
					mav.setViewName("/doc/docBox/coop_undone");
					return mav;
			}

				//협조 결재 문서함
				@RequestMapping(value="/coop_done.erp", method=RequestMethod.GET )
				public ModelAndView coop_done_docBoxList(HttpSession session){
					ModelAndView mav = new ModelAndView();
					EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
					int emp_id = eDto.getEmp_id();
					
					List<DocumentDto> coop_done_docBoxList=docBoxService.coop_done_docBoxList(emp_id);
					mav.addObject("coop_done_docBoxList",coop_done_docBoxList);
					List<CooperationDto> coop_done_docBoxList2=docBoxService.coop_done_docBoxList2(emp_id);
					mav.addObject("coop_done_docBoxList2",coop_done_docBoxList2);
					mav.setViewName("/doc/docBox/coop_done");
					return mav;
			}
				
				
	//부서문서함
	@RequestMapping(value="/dep_docBox.erp", method=RequestMethod.GET )
	public ModelAndView dep_docBoxList(HttpSession session){
		ModelAndView mav = new ModelAndView();
		EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
		int emp_id = eDto.getEmp_id();
		
		List<DocumentDto> dep_docBoxList=docBoxService.dep_docBoxList(emp_id);
		mav.addObject("dep_docBoxList",dep_docBoxList);
		mav.setViewName("/doc/docBox/dep_docBox");
		return mav;
	}
	
	//참조 문서함
		@RequestMapping(value="/ref_docBox.erp", method=RequestMethod.GET )
		public ModelAndView ref_docBoxList(HttpSession session){
			ModelAndView mav = new ModelAndView();
			EmployeeDto eDto =(EmployeeDto)session.getAttribute("memberInfo");
			int emp_id = eDto.getEmp_id();
			
			List<DocumentDto> ref_docBoxList=docBoxService.ref_docBoxList(emp_id);
			mav.addObject("ref_docBoxList",ref_docBoxList);
			mav.setViewName("/doc/docBox/ref_docBox");
			return mav;
		}
}
