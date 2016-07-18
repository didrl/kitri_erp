package com.kitrierp.doc.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.employee.model.EmployeeDto;

@Repository
public class DocDaoImpl implements DocDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public String doc_id(int doc_type_id) {
		return sqlSession.selectOne("com.kitrierp.doc.model.DocDaoImpl.doc_id", doc_type_id);
	}

	@Override
	public List<DocumentDto> dep_docBoxList() {
		List<DocumentDto> dlist=null;
		dlist=sqlSession.selectList("com.kitrierp.doc.model.DocDaoImpl.dep_docBoxList");
		return dlist;
	}

	@Override
	public int approval(Map map) {
		return sqlSession.update("com.kitrierp.doc.model.DocDaoImpl.approval", map);
	}
}
