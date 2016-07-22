package com.kitrierp.employee.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.employee.model.AddressbookDto;

@Repository
public class AddressbookDaoImpl implements AddressbookDao {
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<AddressbookDto> dep_addrbookList(int emp_id) {
		List<AddressbookDto> alist=null;
		alist=sqlSession.selectList("com.kitrierp.doc.model.AddressbookDaoImpl.dep_addrbookList",emp_id);
		
		return alist;
	}

	@Override
	public List<AddressbookDto> per_addrbookList(int emp_id) {
		List<AddressbookDto> alist=null;
		alist=sqlSession.selectList("com.kitrierp.doc.model.AddressbookDaoImpl.per_addrbookList",emp_id);
		
		return alist;
	}

	@Override
	public AddressbookDto view_addrbook(int emp_id) {
		AddressbookDto adto=null;
		adto=sqlSession.selectOne("com.kitrierp.doc.model.AddressbookDaoImpl.view_addrbook",emp_id);
		
		return adto;
	}

	@Override
	public void write_addrbook(AddressbookDto adto) {
		
		sqlSession.update("com.kitrierp.doc.model.AddressbookDaoImpl.write_addrbook",);
		
	}

	@Override
	public AddressbookDto modify_addrbook(int emp_id) {
		AddressbookDto adto=null;
		adto=sqlSession.selectOne("com.kitrierp.doc.model.AddressbookDaoImpl.modify_addrbook",emp_id,dep_id);
		
		return adto;
	}
}
