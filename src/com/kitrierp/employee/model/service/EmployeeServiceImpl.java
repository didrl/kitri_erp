package com.kitrierp.employee.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.employee.model.EmployeeDto;
import com.kitrierp.employee.model.dao.EmployeeDao;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeDao employeeDao;

	@Override
	public EmployeeDto login(Map<String, String> map) {
		return employeeDao.login(map);
	}


	
	
	
}
