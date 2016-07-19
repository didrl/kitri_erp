package com.kitrierp.doc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.CooperationDto;
import com.kitrierp.doc.model.PaymentDto;
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
		return paymentDto;
	}
	
	@Override
	public List<SignInfoDto> viewDocSignInfo(String doc_id) {
		List<SignInfoDto> sign_info = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_sign_info", doc_id);
		return sign_info;
	}
	
	@Override
	public List<ReferenceDto> viewDocReference(String doc_id) {
		List<ReferenceDto> reference = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_reference", doc_id);
		return reference;
	}
	
	@Override
	public List<CooperationDto> viewDocCooperation(String doc_id) {
		List<CooperationDto> cooperation = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_cooperation", doc_id);
		return cooperation;
	}
	
	@Override
	public List<ReceiveListDto> viewDocReceiver(String doc_id) {
		List<ReceiveListDto> receiver = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_receive_list", doc_id);
		return receiver;
	}
}
