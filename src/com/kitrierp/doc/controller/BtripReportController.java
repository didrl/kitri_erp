package com.kitrierp.doc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitrierp.doc.model.service.BtripReportService;

@Controller
@RequestMapping("/")
public class BtripReportController {
	@Autowired
	private BtripReportService btripReportService;
}
