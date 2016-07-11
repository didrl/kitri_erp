package com.kitrierp.employee.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.employee.model.dao.PermissionDao;

@Service
public class PermissionServiceImpl implements PermissionService {
	@Autowired
	private PermissionDao permissionDao;
}
