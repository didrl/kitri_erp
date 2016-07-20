package com.kitrierp.common.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.common.model.dao.CommonDao;

@Service
public class CommonServiceImpl implements CommonService {
	@Autowired
	private CommonDao commonDao;

}
