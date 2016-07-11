package com.kitrierp.admin.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.admin.model.dao.TypeDao;

@Service
public class TypeServiceImpl implements TypeService {
	@Autowired
	private TypeDao typeDao;
}
