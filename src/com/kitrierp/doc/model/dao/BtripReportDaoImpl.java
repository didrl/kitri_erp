package com.kitrierp.doc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.BtripPaymentDto;
import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.CooperationDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.ReceiveListDto;
import com.kitrierp.doc.model.ReferenceDto;
import com.kitrierp.doc.model.SignInfoDto;

@Repository
public class BtripReportDaoImpl implements BtripReportDao {
	@Autowired
	private SqlSession sqlSession;


	@Override
	public int reportDoc(BtripReportDto btripReportDto) {
		return sqlSession.insert("com.kitrierp.doc.model.BtripReportDaoImpl.reportWrite", btripReportDto);
	}

	@Override
	public int tmpsaveDoc(BtripReportDto btripReportDto) {
		return 0;
	}

	@Override
	public int expenseInfoSeq() {
		return sqlSession.selectOne("com.kitrierp.doc.model.BtripReportDaoImpl.report_seq");
	}

	public BtripReportDto viewDoc(String doc_id) {
		BtripReportDto btripReportDto = sqlSession.selectOne("com.kitrierp.doc.model.BtripReportDaoImpl.view", doc_id);
		List<SignInfoDto> sign_info = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_sign_info", doc_id);
		List<ReferenceDto> reference = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_reference", doc_id);
		List<CooperationDto> cooperation = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_cooperation", doc_id);
		List<ReceiveListDto> receiver = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_receive_list", doc_id);
		btripReportDto.setSign_info(sign_info);
		btripReportDto.setReference(reference);
		btripReportDto.setCooperation(cooperation);
		btripReportDto.setReceiver(receiver);
		int expense_info_id = btripReportDto.getExpense_info_id();
		List<BtripPaymentDto> list = sqlSession.selectList("com.kitrierp.doc.model.BtripReportDaoImpl.view_list", expense_info_id);
		btripReportDto.setBpay(list);
		return btripReportDto;
	}
}
