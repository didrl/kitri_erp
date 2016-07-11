package com.kitrierp.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kitrierp.admin.model.service.StaticService;

@Controller
public class StaticController {
	@Autowired
	private StaticService service;
}
