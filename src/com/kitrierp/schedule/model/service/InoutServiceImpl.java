package com.kitrierp.schedule.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.schedule.model.dao.InoutDao;

@Service
public class InoutServiceImpl implements InoutService {
	@Autowired
	private InoutDao inoutDao;
}
