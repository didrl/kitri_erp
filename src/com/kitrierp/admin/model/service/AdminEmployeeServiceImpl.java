package com.kitrierp.admin.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.admin.model.dao.AdminEmployeeDao;


@Service
public class AdminEmployeeServiceImpl implements AdminEmployeeService {
	@Autowired
	private AdminEmployeeDao adminEmployeeDao;
}
