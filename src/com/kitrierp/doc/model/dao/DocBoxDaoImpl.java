package com.kitrierp.doc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.CooperationDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.SignInfoDto;

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
//
	@Override
	public List<DocumentDto> app_undone_docBoxList(int emp_id) {
		List<DocumentDto> dlist=null;
		dlist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.app_undone_docBoxList",emp_id);
		
		return dlist;
	}
	
	@Override
	public List<SignInfoDto> app_undone_docBoxList2(int emp_id) {
		List<SignInfoDto> slist=null;
		slist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.app_undone_docBoxList2",emp_id);
		
		return slist;	
	}
	
	

	@Override
	public List<DocumentDto> app_done_docBoxList(int emp_id) {
		List<DocumentDto> dlist=null;
		dlist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.app_done_docBoxList",emp_id);
		
		return dlist;	
	}
	@Override
	public List<SignInfoDto> app_done_docBoxList2(int emp_id) {
		List<SignInfoDto> slist=null;
		slist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.app_done_docBoxList2",emp_id);
		
		return slist;	
	}
	
	

	@Override
	public List<DocumentDto> per_report_docBoxList(int emp_id) {
		List<DocumentDto> dlist=null;
		dlist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.per_report_docBoxList",emp_id);
		
		return dlist;
	}

	@Override
	public List<DocumentDto> per_temp_docBoxList(int emp_id) {
		List<DocumentDto> dlist=null;
		dlist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.per_temp_docBoxList",emp_id);
		
		return dlist;
	}

	@Override
	public List<DocumentDto> per_return_docBoxList(int emp_id) {
		List<DocumentDto> dlist=null;
		dlist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.per_return_docBoxList",emp_id);
		
		return dlist;
	}

	@Override
	public List<DocumentDto> per_done_docBoxList(int emp_id) {
		List<DocumentDto> dlist=null;
		dlist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.per_done_docBoxList",emp_id);
		
		return dlist;
	}

	@Override
	public List<DocumentDto> per_cancel_docBoxList(int emp_id) {
		List<DocumentDto> dlist=null;
		dlist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.per_cancel_docBoxList",emp_id);
		
		return dlist;
	}

	@Override
	public List<DocumentDto> coop_undone_docBoxList(int emp_id) {
		List<DocumentDto> dlist=null;
		dlist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.coop_undone_docBoxList",emp_id);
		
		return dlist;
	}

	@Override
	public List<DocumentDto> coop_done_docBoxList(int emp_id) {
		List<DocumentDto> dlist=null;
		dlist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.coop_done_docBoxList",emp_id);
		
		
		return dlist;
	}
	
	@Override
	public List<CooperationDto> coop_done_docBoxList2(int emp_id) {
		List<CooperationDto> clist=null;
		clist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.coop_done_docBoxList2",emp_id);
		
		return clist;	
	}
	

	@Override
	public List<DocumentDto> ref_docBoxList(int emp_id) {
		List<DocumentDto> dlist=null;
		dlist=sqlSession.selectList("com.kitrierp.doc.model.DocBoxDaoImpl.ref_docBoxList",emp_id);
		
		return dlist;
	}
	
	
	
}
