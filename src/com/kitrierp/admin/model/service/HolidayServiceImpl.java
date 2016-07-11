package com.kitrierp.admin.model.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.admin.model.dao.HolidayDao;

@Service
public class HolidayServiceImpl implements HolidayService {
	@Autowired
	private HolidayDao holidayDao;
}
