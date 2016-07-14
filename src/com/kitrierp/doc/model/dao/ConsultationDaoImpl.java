package com.kitrierp.doc.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.DocumentDto;

@Repository
public class ConsultationDaoImpl implements ConsultationDao {
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int reportDoc(DocumentDto documentDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int tmpsaveDoc(DocumentDto documentDto) {
		// TODO Auto-generated method stub
		return 0;
	}
}
