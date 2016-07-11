package com.kitrierp.doc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kitrierp.doc.model.service.ProposalService;

@Controller
public class ProposalController {
	@Autowired
	private ProposalService proposalService;
}
