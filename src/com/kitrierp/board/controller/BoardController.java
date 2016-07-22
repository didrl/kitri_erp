package com.kitrierp.board.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kitrierp.board.model.BoardDto;
import com.kitrierp.board.model.service.BoardService;
import com.kitrierp.employee.model.EmployeeDto;

@SessionAttributes("memberInfo")
@RequestMapping("/board")
@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="/write.erp", method=RequestMethod.POST)
	public String write(@ModelAttribute("memberInfo") EmployeeDto employeeDto, @RequestParam String subject, @RequestParam String contents) {
		ModelAndView mav = new ModelAndView();
		if(employeeDto != null) {
			int emp_id = employeeDto.getEmp_id();
			int cnt = boardService.write(subject, contents, emp_id);
			if(cnt == 0)
				return "/board/list";
		}
		return "/board/writeok";
	}
}
