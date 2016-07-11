package com.kitrierp.employee.model.dao;

import java.util.Map;

import com.kitrierp.employee.model.EmployeeDto;

public interface EmployeeDao {
	EmployeeDto login(Map<String, String> map);
}
