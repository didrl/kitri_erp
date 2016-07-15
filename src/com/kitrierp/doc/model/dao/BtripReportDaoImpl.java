package com.kitrierp.doc.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.BtripReportDto;

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
}
