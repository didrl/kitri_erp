package com.kitrierp.doc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.CooperationDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.PaymentDto;
import com.kitrierp.doc.model.PaymentInfoDto;
import com.kitrierp.doc.model.ReceiveListDto;
import com.kitrierp.doc.model.ReferenceDto;
import com.kitrierp.doc.model.SignInfoDto;

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
		List<SignInfoDto> sign_info = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_sign_info", doc_id);
		List<ReferenceDto> reference = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_reference", doc_id);
		List<CooperationDto> cooperation = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_cooperation", doc_id);
		List<ReceiveListDto> receiver = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_receive_list", doc_id);
		paymentDto.setSign_info(sign_info);
		paymentDto.setReference(reference);
		paymentDto.setCooperation(cooperation);
		paymentDto.setReceiver(receiver);
		int payment_id = paymentDto.getPayment_id();
		List<PaymentInfoDto> list = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_list", payment_id);
		return paymentDto;
	}
}
