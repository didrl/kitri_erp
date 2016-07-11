package com.kitrierp.doc.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.doc.model.dao.JournalDao;

@Service
public class JournalServiceImpl implements JournalService {
	@Autowired
	private JournalDao journalDao;
}
