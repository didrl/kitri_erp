package com.kitrierp.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kitrierp.employee.model.service.ProjectService;

@Controller
public class ProjectController {
	@Autowired
	private ProjectService projectService;
}
