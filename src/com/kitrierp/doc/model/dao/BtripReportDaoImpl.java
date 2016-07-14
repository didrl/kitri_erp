package com.kitrierp.doc.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.BtripReportDto;

@Repository
public class BtripReportDaoImpl implements BtripReportDao {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int reportWrite(BtripReportDto btripReportDto) {
		return sqlSession.insert("com.kitrierp.doc.model.BtripAppliationDaoImpl.reportWrite", btripReportDto);
	}
	
	
}
