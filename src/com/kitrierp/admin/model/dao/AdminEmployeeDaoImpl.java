package com.kitrierp.admin.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminEmployeeDaoImpl implements AdminEmployeeDao {
		
	@Autowired
	private SqlSession sqlSession;

}
