package com.kitrierp.board.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.board.model.dao.AlbumDao;

@Service
public class AlbumServiceImpl implements AlbumService {
	@Autowired
	private AlbumDao albumDao;
}
