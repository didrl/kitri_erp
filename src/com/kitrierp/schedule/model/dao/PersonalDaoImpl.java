package com.kitrierp.schedule.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PersonalDaoImpl implements PersonalDao {
	@Autowired
	private SqlSession sqlSession;
	
}
