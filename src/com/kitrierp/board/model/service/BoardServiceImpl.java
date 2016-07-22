package com.kitrierp.board.model.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.board.model.dao.BoardDao;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDao boardDao;

	@Override
	public int write(String subject, String contents, int emp_id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("subject", subject);
		map.put("contents", contents);
		map.put("emp_id", emp_id + "");
		return boardDao.write(map);
	}
}
