package com.kitrierp.admin.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.admin.model.dao.StaticDao;

@Service
public class StaticServiceImpl implements StaticService {
	@Autowired
	private StaticDao staticDao;
}
