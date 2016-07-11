package com.kitrierp.employee.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.employee.model.dao.GradeDao;

@Service
public class GradeServiceImpl implements GradeService {
	@Autowired
	private GradeDao gradeDao;
}
