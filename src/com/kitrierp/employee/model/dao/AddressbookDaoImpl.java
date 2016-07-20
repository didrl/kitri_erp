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
	public List<AddressbookDto> write_addrbook(int emp_id) {
		
		return null;
	}

	@Override
	public List<AddressbookDto> modify_addrbook(int emp_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AddressbookDto view_addrbook(int emp_id) {
		AddressbookDto adto=null;
		adto=sqlSession.selectOne("com.kitrierp.doc.model.AddressbookDaoImpl.view_addrbook",emp_id);
		
		return adto;
	}
}
