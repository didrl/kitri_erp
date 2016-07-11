package com.kitrierp.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kitrierp.admin.model.service.TypeService;

@Controller
public class TypeController {
	@Autowired
	private TypeService typeService;
}
