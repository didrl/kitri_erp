package com.kitrierp.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kitrierp.employee.model.service.OrganizationService;

@Controller
public class OrganizationController {
	@Autowired
	private OrganizationService organizationService;
}
