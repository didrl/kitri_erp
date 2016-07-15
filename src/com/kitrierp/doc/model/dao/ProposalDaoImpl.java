package com.kitrierp.doc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.CooperationDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.ReferenceDto;
import com.kitrierp.doc.model.SignInfoDto;

@Repository
public class ProposalDaoImpl implements ProposalDao {
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int reportDoc(DocumentDto documentDto) {
		return 0;
	}

	@Override
	public int tmpsaveDoc(DocumentDto documentDto) {
		return 0;
	}

	@Override
	public DocumentDto viewDoc(String doc_id) {
		DocumentDto proposalDto = sqlSession.selectOne("com.kitrierp.doc.model.ProposalDaoImpl.view", doc_id);
		List<SignInfoDto> sign_info = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_sign_info", doc_id);
		List<ReferenceDto> reference = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_reference", doc_id);
		List<CooperationDto> cooperation = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_cooperation", doc_id);
		proposalDto.setSign_info(sign_info);
		proposalDto.setReference(reference);
		proposalDto.setCooperation(cooperation);
		return proposalDto;
	}
}
