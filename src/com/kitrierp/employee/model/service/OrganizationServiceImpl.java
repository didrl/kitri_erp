package com.kitrierp.employee.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.employee.model.dao.OrganizationDao;

@Service
public class OrganizationServiceImpl implements OrganizationService {
	@Autowired
	private OrganizationDao organizationDao;
}
