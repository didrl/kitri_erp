package com.kitrierp.doc.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.dao.BtripApplicationDao;

@Service
public class BtripApplicationServiceImpl implements BtripApplicationService {
	@Autowired
	private BtripApplicationDao btripApplicationDao;
}
