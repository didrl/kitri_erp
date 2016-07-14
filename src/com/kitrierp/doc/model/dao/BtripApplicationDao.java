package com.kitrierp.doc.model.dao;

import com.kitrierp.doc.model.BtripApplicationDto;

public interface BtripApplicationDao {
	int reportDoc(BtripApplicationDto btripApplicationDto);
	int tmpsaveDoc(BtripApplicationDto btripApplicationDto);
}
