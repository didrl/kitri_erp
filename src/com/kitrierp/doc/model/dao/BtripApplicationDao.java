package com.kitrierp.doc.model.dao;

import com.kitrierp.doc.model.BtripApplicationDto;
import com.kitrierp.doc.model.DocumentDto;

public interface BtripApplicationDao {
	int reportDoc(BtripApplicationDto btripApplicationDto);
	int tmpsaveDoc(BtripApplicationDto btripApplicationDto);
	BtripApplicationDto viewDoc(String doc_id);
}
