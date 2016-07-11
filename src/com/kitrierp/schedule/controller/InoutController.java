package com.kitrierp.schedule.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kitrierp.schedule.model.service.InoutService;

@Controller
public class InoutController {
	@Autowired
	private InoutService inoutService;
}
