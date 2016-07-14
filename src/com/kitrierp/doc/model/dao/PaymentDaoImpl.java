package com.kitrierp.doc.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.PaymentDto;

@Repository
public class PaymentDaoImpl implements PaymentDao {
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int reportDoc(PaymentDto paymentDto) {
		return 0;
	}

	@Override
	public int tmpsaveDoc(PaymentDto paymentDto) {
		return 0;
	}
}
