package com.kitrierp.employee.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.employee.model.dao.AddressbookDao;

@Service
public class AddressbookServiceImpl implements AddressbookService {
	@Autowired
	private AddressbookDao addressbookDao;
}
