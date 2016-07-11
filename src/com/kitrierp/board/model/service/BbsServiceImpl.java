package com.kitrierp.board.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.board.model.dao.BbsDao;

@Service
public class BbsServiceImpl implements BbsService {
	@Autowired
	private BbsDao bbsDao;
}
