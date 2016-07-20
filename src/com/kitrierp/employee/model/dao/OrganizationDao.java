package com.kitrierp.employee.model.dao;

import java.util.List;

import com.kitrierp.employee.model.DepartmentDto;
import com.kitrierp.employee.model.EmployeeDto;

public interface OrganizationDao {
	
     List<EmployeeDto> organizationList();

	List<DepartmentDto> organizationDepList();

}
