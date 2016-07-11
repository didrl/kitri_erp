
package com.kitrierp.common.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.common.model.dao.FileDao;

@Service
public class FileServiceImpl implements FileService {
	@Autowired
	private FileDao fileDao;
}
