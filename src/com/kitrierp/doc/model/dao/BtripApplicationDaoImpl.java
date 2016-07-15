package com.kitrierp.doc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.doc.model.BtripApplicationDto;
import com.kitrierp.doc.model.CooperationDto;
import com.kitrierp.doc.model.DocumentDto;
import com.kitrierp.doc.model.ReceiveListDto;
import com.kitrierp.doc.model.ReferenceDto;
import com.kitrierp.doc.model.SignInfoDto;

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

	@Override
	public BtripApplicationDto viewDoc(String doc_id) {
		BtripApplicationDto btripApplicationDto = sqlSession.selectOne("com.kitrierp.doc.model.dao.BtripApplicationDaoImpl.view", doc_id);
		List<SignInfoDto> sign_info = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_sign_info", doc_id);
		List<ReferenceDto> reference = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_reference", doc_id);
		List<CooperationDto> cooperation = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_cooperation", doc_id);
		List<ReceiveListDto> receiver = sqlSession.selectList("com.kitrierp.doc.model.ProposalDaoImpl.view_receive_list", doc_id);
		btripApplicationDto.setSign_info(sign_info);
		btripApplicationDto.setReference(reference);
		btripApplicationDto.setCooperation(cooperation);
		btripApplicationDto.setReceiver(receiver);
		return btripApplicationDto;
	}
	
	
}
