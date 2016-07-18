package com.kitrierp.employee.model.service;

import java.util.List;

import com.kitrierp.employee.model.DepartmentDto;
import com.kitrierp.employee.model.EmployeeDto;

public interface OrganizationService {
	
	 List<EmployeeDto> organizationList();

	List<DepartmentDto> organizationDepList();

}
