package com.kitrierp.doc.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.BtripApplicationDto;

@Repository
public class BtripApplicationDaoImpl implements BtripApplicationDao {
	@Autowired
	private SqlSession sqlSession;


	@Override
	public int reportDoc(BtripApplicationDto btripApplicationDto) {
		return sqlSession.insert("com.kitrierp.doc.model.dao.BtripApplicationDaoImpl.write",btripApplicationDto);
	}

	@Override
	public int tmpsaveDoc(BtripApplicationDto btripApplicationDto) {
		return 0;
	}
	
	
}
