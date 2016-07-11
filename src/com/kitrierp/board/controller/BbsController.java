package com.kitrierp.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kitrierp.board.model.service.BbsService;

@Controller
public class BbsController {
	@Autowired
	private BbsService bbsService;
}
