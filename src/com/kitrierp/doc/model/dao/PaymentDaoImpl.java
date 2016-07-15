package com.kitrierp.doc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.PaymentDto;
import com.kitrierp.doc.model.PaymentInfoDto;

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

	@Override
	public PaymentDto viewDoc(String doc_id) {
		PaymentDto paymentDto = sqlSession.selectOne("com.kitrierp.doc.model.PaymentDaoImpl.view", doc_id);
		int payment_id = paymentDto.getPayment_id();
		List<PaymentInfoDto> list = sqlSession.selectList("", payment_id);
		return paymentDto;
	}
}
