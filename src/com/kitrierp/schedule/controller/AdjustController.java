package com.kitrierp.schedule.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kitrierp.schedule.model.service.AdjustService;

@Controller
public class AdjustController {
	@Autowired
	private AdjustService adjustService;
}
