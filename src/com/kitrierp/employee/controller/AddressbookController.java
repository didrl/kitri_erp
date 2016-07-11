package com.kitrierp.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kitrierp.employee.model.service.AddressbookService;

@Controller
public class AddressbookController {
	@Autowired
	private AddressbookService addressbookService;
}
