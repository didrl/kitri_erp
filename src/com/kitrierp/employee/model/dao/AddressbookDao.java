package com.kitrierp.employee.model.dao;

import java.util.List;

import com.kitrierp.employee.model.AddressbookDto;

public interface AddressbookDao {

	List<AddressbookDto> dep_addrbookList(int emp_id);

	List<AddressbookDto> per_addrbookList(int emp_id);

	AddressbookDto view_addrbook(int emp_id);

	AddressbookDto modify_addrbook(int emp_id);

	void write_addrbook(AddressbookDto adto);

}
