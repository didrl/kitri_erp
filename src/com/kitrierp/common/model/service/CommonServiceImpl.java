package com.kitrierp.common.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.common.model.dao.CommonDao;

@Service
public class CommonServiceImpl implements CommonService {
	@Autowired
	private CommonDao commonDao;

	@Override
	public String doc_id(int doc_type_id) {
		return commonDao.doc_id(doc_type_id);
	}
}
