package com.kitrierp.admin.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StaticDaoImpl implements StaticDao {
	@Autowired
	private SqlSession sqlSession;
	
}
