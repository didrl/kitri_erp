package com.kitrierp.schedule.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.schedule.model.dao.AdjustDao;

@Service
public class AdjustServiceImpl implements AdjustService {
	@Autowired
	private AdjustDao adjustDao;
}
