package com.kitrierp.common.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommonDaoImpl implements CommonDao {
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
   
	@Override
	public String doc_id(int doc_type_id) {
		return sqlSession.selectOne("com.kitrierp.common.model.CommonDaoImpl.doc_id", doc_type_id);
	}
}
