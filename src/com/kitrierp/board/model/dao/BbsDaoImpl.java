package com.kitrierp.board.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BbsDaoImpl implements BbsDao {
	@Autowired
	private SqlSession sqlSession;
	
}
