package com.kitrierp.employee.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.employee.model.AddressbookDto;
import com.kitrierp.employee.model.dao.AddressbookDao;

@Service
public class AddressbookServiceImpl implements AddressbookService {
	@Autowired
	private AddressbookDao addressbookDao;

	@Override
	public List<AddressbookDto> dep_addrbookList(int emp_id) {
		
		return addressbookDao.dep_addrbookList(emp_id);
	}

	@Override
	public List<AddressbookDto> per_addrbookList(int emp_id) {

		return addressbookDao.per_addrbookList(emp_id);
	}

	@Override
	public List<AddressbookDto> write_addrbook(int emp_id) {

		return addressbookDao.write_addrbook(emp_id);
	}

	@Override
	public List<AddressbookDto> modify_addrbook(int emp_id) {

		return addressbookDao.modify_addrbook(emp_id);
	}

	@Override
	public AddressbookDto view_addrbook(int emp_id) {

		return addressbookDao.view_addrbook(emp_id);
	}
}
