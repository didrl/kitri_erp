package com.kitrierp.schedule.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kitrierp.schedule.model.service.PersonalService;

@Controller
public class PersonalController {
	@Autowired
	private PersonalService personalService;
}
