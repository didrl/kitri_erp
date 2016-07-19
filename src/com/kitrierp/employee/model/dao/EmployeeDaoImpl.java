package com.kitrierp.employee.model.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.employee.model.EmployeeDto;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public EmployeeDto login(Map<String, String> map) {	
		return sqlSession.selectOne("com.kitrierp.employee.model.EmployeeDaoImpl.login", map);
	}
	
}
