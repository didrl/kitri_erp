package com.kitrierp.employee.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kitrierp.employee.model.DepartmentDto;
import com.kitrierp.employee.model.EmployeeDto;


@Repository
public class OrganizationDaoImpl implements OrganizationDao {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<EmployeeDto> organizationList() {
		List<EmployeeDto> list=null;
		list=sqlSession.selectList("com.kitrierp.employee.model.OrganizationDaoImpl.olist");
		return list;
	}

	@Override
	public List<DepartmentDto> organizationDepList() {
		List<DepartmentDto> list=null;
		list=sqlSession.selectList("com.kitrierp.employee.model.OrganizationDaoImpl.oDepList");
		return list;
	}
}
