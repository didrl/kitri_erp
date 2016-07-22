package com.kitrierp.employee.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.employee.model.AddressbookDto;

@Repository
public class AddressbookDaoImpl implements AddressbookDao {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<AddressbookDto> dep_addrbookList(int emp_id) {
		List<AddressbookDto> alist=null;
		alist=sqlSession.selectList("com.kitrierp.employee.model.AddressbookDaoImpl.dep_addrbookList",emp_id);
		
		return alist;
	}

	@Override
	public List<AddressbookDto> per_addrbookList(int emp_id) {
		List<AddressbookDto> alist=null;
		alist=sqlSession.selectList("com.kitrierp.employee.model.AddressbookDaoImpl.per_addrbookList",emp_id);
		
		return alist;
	}

	@Override
	public AddressbookDto view_addrbook(int emp_id) {
		AddressbookDto adto=null;
		adto=sqlSession.selectOne("com.kitrierp.employee.model.AddressbookDaoImpl.view_addrbook",emp_id);
		
		return adto;
	}

	@Override
	public void write_addrbook(AddressbookDto adto) {
		
		sqlSession.update("com.kitrierp.employee.model.AddressbookDaoImpl.write_addrbook",adto);
		
	}

	@Override
	public AddressbookDto modify_addrbook(int emp_id) {
		AddressbookDto adto=null;
		adto=sqlSession.selectOne("com.kitrierp.employee.model.AddressbookDaoImpl.modify_addrbook",emp_id);
		
		return adto;
	}
}
