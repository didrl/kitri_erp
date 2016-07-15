package com.kitrierp.doc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.BtripPaymentDto;
import com.kitrierp.doc.model.BtripReportDto;
import com.kitrierp.doc.model.DocumentDto;

@Repository
public class BtripReportDaoImpl implements BtripReportDao {
	@Autowired
	private SqlSession sqlSession;


	@Override
	public int reportDoc(BtripReportDto btripReportDto) {
		return 0;
	}

	@Override
	public int tmpsaveDoc(BtripReportDto btripReportDto) {
		return 0;
	}

	@Override
	public BtripReportDto viewDoc(String doc_id) {
		BtripReportDto btripReportDto = sqlSession.selectOne("com.kitrierp.doc.model.BtripReportDaoImpl.view", doc_id);
		int expense_info_id = btripReportDto.getExpense_info_id();
		List<BtripPaymentDto> list = sqlSession.selectList("com.kitrierp.doc.model.BtripReportDaoImpl.view_list", expense_info_id);
		btripReportDto.setBpay(list);
		return btripReportDto;
	}
}
