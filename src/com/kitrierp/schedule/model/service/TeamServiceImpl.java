package com.kitrierp.schedule.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitrierp.schedule.model.dao.TeamDao;

@Service
public class TeamServiceImpl implements TeamService {
	@Autowired
	private TeamDao teamDao;
}
