package com.kitrierp.schedule.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdjustDaoImpl implements AdjustDao {
	@Autowired
	private SqlSession sqlSession;
	
}
