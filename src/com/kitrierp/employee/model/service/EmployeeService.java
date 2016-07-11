package com.kitrierp.employee.model.service;

import java.util.Map;

import com.kitrierp.employee.model.EmployeeDto;

public interface EmployeeService {
	EmployeeDto login(Map<String, String> map);
}
