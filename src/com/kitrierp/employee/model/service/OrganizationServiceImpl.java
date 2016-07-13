package com.kitrierp.employee.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.employee.model.EmployeeDto;
import com.kitrierp.employee.model.dao.OrganizationDao;

@Service
public class OrganizationServiceImpl implements OrganizationService {
	@Autowired
	private OrganizationDao organizationDao;

	@Override
	public List<EmployeeDto> organizationList() {
		// TODO Auto-generated method stub
		return organizationDao.organizationList();
	}

	
}
