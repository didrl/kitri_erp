package com.kitrierp.doc.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DocDaoImpl implements DocDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public String doc_id(int doc_type_id) {
		return sqlSession.selectOne("com.kitrierp.doc.model.DocDaoImpl.doc_id", doc_type_id);
	}
	
}
