package com.kitrierp.doc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kitrierp.doc.model.service.BtripApplicationService;

@Controller
public class BtripApplicationController {
	@Autowired
	private BtripApplicationService btripApplicationService;
}
