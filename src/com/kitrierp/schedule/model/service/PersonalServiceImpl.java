package com.kitrierp.schedule.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.schedule.model.dao.PersonalDao;

@Service
public class PersonalServiceImpl implements PersonalService {
	@Autowired
	private PersonalDao personalDao;
}
