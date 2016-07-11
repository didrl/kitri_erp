package com.kitrierp.common.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kitrierp.common.model.service.FileService;

@Controller
public class FileController {
	@Autowired
	private FileService fileService;
}
