package com.kitrierp.doc.model.service;

import com.kitrierp.doc.model.BtripApplicationDto;

public interface BtripApplicationService {
	int reportDoc(BtripApplicationDto btripApplicationDto);
	int tmpsaveDoc(BtripApplicationDto btripApplicationDto);
	BtripApplicationDto viewDoc(String doc_id);
}
