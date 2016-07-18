package com.kitrierp.doc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.DocumentDto;

@Repository
public class DocBoxDaoImpl implements DocBoxDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<DocumentDto> dep_docBoxList(int emp_id) {
		List<DocumentDto> dlist=null;
		dlist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.dep_docBoxList",emp_id);
		
		return dlist;
	}
}
