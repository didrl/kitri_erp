package com.kitrierp.doc.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.BtripReportDto;

@Repository
public class BtripReportDaoImpl implements BtripReportDao {
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int reportDoc(BtripReportDto btripReportDto) {
		return 0;
	}

	@Override
	public int tmpsaveDoc(BtripReportDto btripReportDto) {
		return 0;
	}
}
