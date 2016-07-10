package com.kitrierp.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	@RequestMapping("/index.html")
	public String test(Model model) {
		model.addAttribute("msg", "test!");
		return "index";
	}

}
