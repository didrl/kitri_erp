/* 게시판 */
DROP TABLE board 
	CASCADE CONSTRAINTS;

/* 게시판_파일 */
DROP TABLE board_file 
	CASCADE CONSTRAINTS;

/* 게시판 형식 */
DROP TABLE boardtype 
	CASCADE CONSTRAINTS;

/* 쪽지 */
DROP TABLE message 
	CASCADE CONSTRAINTS;

/* 사원정보 */
DROP TABLE employee 
	CASCADE CONSTRAINTS;

/* 부서 */
DROP TABLE department 
	CASCADE CONSTRAINTS;

/* 직급 */
DROP TABLE GRADE 
	CASCADE CONSTRAINTS;

/* 문서 */
DROP TABLE DOCUMENT 
	CASCADE CONSTRAINTS;

/* 문서형식 */
DROP TABLE DOC_TYPE 
	CASCADE CONSTRAINTS;

/* 업무일지 */
DROP TABLE journal 
	CASCADE CONSTRAINTS;

/* 문서 진행상태 */
DROP TABLE DOC_STATUS 
	CASCADE CONSTRAINTS;

/* 수신 목록 */
DROP TABLE RECEIVE_LIST 
	CASCADE CONSTRAINTS;

/* 결재자 정보 */
DROP TABLE SIGN_INFO 
	CASCADE CONSTRAINTS;

/* 참조인 정보 */
DROP TABLE reference 
	CASCADE CONSTRAINTS;

/* 협조인 정보 */
DROP TABLE Cooperation 
	CASCADE CONSTRAINTS;

/* 지출결의서 */
DROP TABLE payment 
	CASCADE CONSTRAINTS;

/* 지출 내역 정보 */
DROP TABLE PAYMENT_INFO 
	CASCADE CONSTRAINTS;

/* 출장신청서 */
DROP TABLE btrip_application 
	CASCADE CONSTRAINTS;

/* 출장보고서 */
DROP TABLE btrip_report 
	CASCADE CONSTRAINTS;

/* 출장여비 정보 */
DROP TABLE btrip_payment 
	CASCADE CONSTRAINTS;

/* 출퇴근 */
DROP TABLE inout 
	CASCADE CONSTRAINTS;

/* 일정관리 */
DROP TABLE SCHEDULE 
	CASCADE CONSTRAINTS;

/* 일정타입 */
DROP TABLE schedule_type 
	CASCADE CONSTRAINTS;

/* 주소록 */
DROP TABLE addressbook 
	CASCADE CONSTRAINTS;

/* 프로젝트 */
DROP TABLE project 
	CASCADE CONSTRAINTS;

/* 프로젝트 인원 */
DROP TABLE project_number 
	CASCADE CONSTRAINTS;

/* 자료실 */
DROP TABLE bbs 
	CASCADE CONSTRAINTS;

/* 휴일 */
DROP TABLE holiday 
	CASCADE CONSTRAINTS;

/* 첨부파일 */
DROP TABLE file 
	CASCADE CONSTRAINTS;

/* 출퇴근상태 */
DROP TABLE inout_code 
	CASCADE CONSTRAINTS;

/* 권한 */
DROP TABLE Permission 
	CASCADE CONSTRAINTS;

/* 메뉴 */
DROP TABLE menu 
	CASCADE CONSTRAINTS;

/* 휴가신청서 */
DROP TABLE vacation 
	CASCADE CONSTRAINTS;

/* 게시판 */
CREATE TABLE board (
	seq NUMBER NOT NULL, /* 글번호 */
	bcode NUMBER NOT NULL, /* 게시판 형식 번호 */
	subject VARCHAR2(50), /* 제목 */
	contents VARCHAR2(100), /* 내용 */
	logtime DATE, /* 작성일 */
	EMP_ID VARCHAR2(20) /* 작성자 사원번호 */
);

CREATE UNIQUE INDEX PK_board
	ON board (
		seq ASC
	);

ALTER TABLE board
	ADD
		CONSTRAINT PK_board
		PRIMARY KEY (
			seq
		);

/* 게시판_파일 */
CREATE TABLE board_file (
	bfile_seq NUMBER NOT NULL, /* 파일번호 */
	bfile_origin_name VARCHAR2(40), /* 파일 원본이름 */
	bfile_path VARCHAR2(1000), /* 파일경로 */
	bfile_savefolder VARCHAR2(100), /* 저장폴더 */
	seq NUMBER, /* 글번호 */
	bfile_save_name <지정 되지 않음> /* 파일저장이름 */
);

CREATE UNIQUE INDEX PK_board_file
	ON board_file (
		bfile_seq ASC
	);

ALTER TABLE board_file
	ADD
		CONSTRAINT PK_board_file
		PRIMARY KEY (
			bfile_seq
		);

/* 게시판 형식 */
CREATE TABLE boardtype (
	bcode NUMBER NOT NULL, /* 게시판 형식 번호 */
	bname VARCHAR2(20) /* 게시판 형식 이름 */
);

CREATE UNIQUE INDEX PK_boardtype
	ON boardtype (
		bcode ASC
	);

ALTER TABLE boardtype
	ADD
		CONSTRAINT PK_boardtype
		PRIMARY KEY (
			bcode
		);

/* 쪽지 */
CREATE TABLE message (
	mseq NUMBER NOT NULL, /* 쪽지글번호 */
	seq NUMBER NOT NULL, /* 글번호 */
	receiver_id VARCHAR2(16), /* 받는사람 아이디 */
	msg_flag NUMBER DEFAULT 0, /* 확인여부 */
	delete_send NUMBER, /* 삭제_보낸쪽 */
	delete_recei NUMBER /* 삭제_받은쪽 */
);

CREATE UNIQUE INDEX PK_message
	ON message (
		mseq ASC
	);

ALTER TABLE message
	ADD
		CONSTRAINT PK_message
		PRIMARY KEY (
			mseq
		);

/* 사원정보 */
CREATE TABLE employee (
	EMP_ID VARCHAR2(20) NOT NULL, /* 사원번호 */
	EMP_PW VARCHAR2(20) NOT NULL, /* 패스워드 */
	grade_id NUMBER NOT NULL, /* 직급번호 */
	EMP_NAME VARCHAR2(16), /* 이름 */
	EMP_email1 VARCHAR2(100), /* 이메일 */
	EMP_tel VARCHAR2(15), /* 전화번호 */
	profile_image VARCHAR2(1000), /* 프로필이미지 */
	DEP_ID NUMBER, /* 부서번호 */
	EMP_ADDR1 VARCHAR2(50), /* 주소 */
	EMP_ADDR2 VARCHAR2(100), /* 상세주소 */
	EMP_EMAIL2 VARCHAR2(30), /* 이메일 도메인 */
	EMP_STATUS NUMBER, /* 근무상태 */
	per_flag NUMBER /* 권한번호 */
);

CREATE UNIQUE INDEX PK_employee
	ON employee (
		EMP_ID ASC
	);

ALTER TABLE employee
	ADD
		CONSTRAINT PK_employee
		PRIMARY KEY (
			EMP_ID
		);

/* 부서 */
CREATE TABLE department (
	DEP_ID NUMBER NOT NULL, /* 부서번호 */
	DEP_NAME VARCHAR2(40), /* 부서이름 */
	Manager_ID NUMBER /* 부서장 아이디 */
);

CREATE UNIQUE INDEX PK_department
	ON department (
		DEP_ID ASC
	);

ALTER TABLE department
	ADD
		CONSTRAINT PK_department
		PRIMARY KEY (
			DEP_ID
		);

/* 직급 */
CREATE TABLE GRADE (
	GRADE_ID NUMBER NOT NULL, /* 직급번호 */
	GRADE_NAME VARCHAR2(16) /* 직급이름 */
);

CREATE UNIQUE INDEX PK_GRADE
	ON GRADE (
		GRADE_ID ASC
	);

ALTER TABLE GRADE
	ADD
		CONSTRAINT PK_GRADE
		PRIMARY KEY (
			GRADE_ID
		);

/* 문서 */
CREATE TABLE DOCUMENT (
	DOC_ID VARCHAR2(16) NOT NULL, /* 문서번호 */
	DOC_STATUS_ID NUMBER NOT NULL, /* 진행상태 번호 */
	EMP_ID NUMBER, /* 기안자 아이디 */
	DOC_TYPE_ID NUMBER, /* 문서타입 아이디 */
	DOC_SUBJECT VARCHAR2(100), /* 제목 */
	DOC_CONTENT VARCHAR2(4000), /* 내용 */
	DOC_DATE DATE, /* 기안일 */
	DOC_DEADLINE DATE, /* 업무 완료 예정일 */
	DOC_OPEN NUMBER, /* 공개여부 */
	DOC_DEP_ID NUMBER, /* 작성부서 아이디 */
	DOC_NOTE VARCHAR2(4000) /* 비고 */
);

CREATE UNIQUE INDEX PK_DOCUMENT
	ON DOCUMENT (
		DOC_ID ASC
	);

ALTER TABLE DOCUMENT
	ADD
		CONSTRAINT PK_DOCUMENT
		PRIMARY KEY (
			DOC_ID
		);

/* 문서형식 */
CREATE TABLE DOC_TYPE (
	DOC_TYPE_ID NUMBER NOT NULL, /* 문서타입 아이디 */
	DOC_TYPE_NAME VARCHAR2(30) /* 타입 이름 */
);

CREATE UNIQUE INDEX PK_DOC_TYPE
	ON DOC_TYPE (
		DOC_TYPE_ID ASC
	);

ALTER TABLE DOC_TYPE
	ADD
		CONSTRAINT PK_DOC_TYPE
		PRIMARY KEY (
			DOC_TYPE_ID
		);

/* 업무일지 */
CREATE TABLE journal (
	DOC_ID VARCHAR2(16) NOT NULL, /* 문서번호 */
	jou_today VARCHAR2(4000), /* 금일내용 */
	jou_nextday VARCHAR2(4000), /* 익일내용 */
	jou_note VARCHAR2(4000), /* 특이사항 및 건의사항 */
	jou_issue VARCHAR2(4000) DEFAULT 문서 테이블 상속
 /* 의견 */
);

CREATE UNIQUE INDEX PK_journal
	ON journal (
		DOC_ID ASC
	);

ALTER TABLE journal
	ADD
		CONSTRAINT PK_journal
		PRIMARY KEY (
			DOC_ID
		);

/* 문서 진행상태 */
CREATE TABLE DOC_STATUS (
	DOC_STATUS_ID NUMBER NOT NULL, /* 진행상태 번호 */
	DOC_STATUS_NAME VARCHAR2(20) /* 진행상태 이름 */
);

CREATE UNIQUE INDEX PK_DOC_STATUS
	ON DOC_STATUS (
		DOC_STATUS_ID ASC
	);

ALTER TABLE DOC_STATUS
	ADD
		CONSTRAINT PK_DOC_STATUS
		PRIMARY KEY (
			DOC_STATUS_ID
		);

/* 수신 목록 */
CREATE TABLE RECEIVE_LIST (
	RECEI_SEQ NUMBER NOT NULL, /* 수신 일련번호 */
	DOC_ID VARCHAR2(16) NOT NULL, /* 문서번호 */
	DEP_ID NUMBER /* 부서번호 */
);

CREATE UNIQUE INDEX PK_RECEIVE_LIST
	ON RECEIVE_LIST (
		RECEI_SEQ ASC,
		DOC_ID ASC
	);

ALTER TABLE RECEIVE_LIST
	ADD
		CONSTRAINT PK_RECEIVE_LIST
		PRIMARY KEY (
			RECEI_SEQ,
			DOC_ID
		);

/* 결재자 정보 */
CREATE TABLE SIGN_INFO (
	appr_seq NUMBER NOT NULL, /* 결재자 일련번호 */
	DOC_ID VARCHAR2(16) NOT NULL, /* 문서번호 */
	EMP_ID VARCHAR2(20), /* 사원번호 */
	appr_flag NUMBER /* 결재상태 */
);

CREATE UNIQUE INDEX PK_SIGN_INFO
	ON SIGN_INFO (
		appr_seq ASC,
		DOC_ID ASC
	);

ALTER TABLE SIGN_INFO
	ADD
		CONSTRAINT PK_SIGN_INFO
		PRIMARY KEY (
			appr_seq,
			DOC_ID
		);

/* 참조인 정보 */
CREATE TABLE reference (
	REF_SEQ NUMBER NOT NULL, /* 참조 일련번호 */
	DOC_ID VARCHAR2(16) NOT NULL, /* 문서번호 */
	EMP_ID VARCHAR2(20) /* 사원번호 */
);

CREATE UNIQUE INDEX PK_reference
	ON reference (
		REF_SEQ ASC,
		DOC_ID ASC
	);

ALTER TABLE reference
	ADD
		CONSTRAINT PK_reference
		PRIMARY KEY (
			REF_SEQ,
			DOC_ID
		);

/* 협조인 정보 */
CREATE TABLE Cooperation (
	coop_SEQ NUMBER NOT NULL, /* 협조 일련번호 */
	DOC_ID VARCHAR2(16) NOT NULL, /* 문서번호 */
	EMP_ID VARCHAR2(20) /* 사원번호 */
);

CREATE UNIQUE INDEX PK_Cooperation
	ON Cooperation (
		coop_SEQ ASC,
		DOC_ID ASC
	);

ALTER TABLE Cooperation
	ADD
		CONSTRAINT PK_Cooperation
		PRIMARY KEY (
			coop_SEQ,
			DOC_ID
		);

/* 지출결의서 */
CREATE TABLE payment (
	PAYMENT_ID NUMBER NOT NULL, /* 일련번호 */
	billing NUMBER, /* 청구금액 */
	settlement NUMBER, /* 정산금액 */
	recipient VARCHAR2(30), /* 수령인 */
	DOC_ID VARCHAR2(16) /* 문서번호 */
);

CREATE UNIQUE INDEX PK_payment
	ON payment (
		PAYMENT_ID ASC
	);

ALTER TABLE payment
	ADD
		CONSTRAINT PK_payment
		PRIMARY KEY (
			PAYMENT_ID
		);

/* 지출 내역 정보 */
CREATE TABLE PAYMENT_INFO (
	payInfo_seq NUMBER NOT NULL, /* 지출내역정보 일련번호 */
	PAYMENT_ID NUMBER NOT NULL, /* 일련번호 */
	PAY_DATE DATE, /* 날짜 */
	PAY_INFO varchar2(200), /* 지출내역 */
	AMOUNT NUMBER, /* 금액 */
	NOTE VARCHAR2(500) /* 비고 */
);

CREATE UNIQUE INDEX PK_PAYMENT_INFO
	ON PAYMENT_INFO (
		payInfo_seq ASC,
		PAYMENT_ID ASC
	);

ALTER TABLE PAYMENT_INFO
	ADD
		CONSTRAINT PK_PAYMENT_INFO
		PRIMARY KEY (
			payInfo_seq,
			PAYMENT_ID
		);

/* 출장신청서 */
CREATE TABLE btrip_application (
	DOC_ID VARCHAR2(16) NOT NULL, /* 문서번호 */
	START_DATE DATE, /* 출장 시작일 */
	END_DATE DATE, /* 출장 종료일 */
	btrip_location VARCHAR2(100), /* 출장지 */
	btrip_purpose VARCHAR2(200) /* 출장 목적 */
);

CREATE UNIQUE INDEX PK_btrip_application
	ON btrip_application (
		DOC_ID ASC
	);

ALTER TABLE btrip_application
	ADD
		CONSTRAINT PK_btrip_application
		PRIMARY KEY (
			DOC_ID
		);

/* 출장보고서 */
CREATE TABLE btrip_report (
	EXPENSE_INFO_ID NUMBER NOT NULL, /* 출장 일련번호 */
	DOC_ID VARCHAR2(16), /* 문서번호 */
	START_DATE DATE, /* 출장 시작일 */
	END_DATE DATE, /* 출장 종료일 */
	btrip_location VARCHAR2(100) /* 출장지 */
);

CREATE UNIQUE INDEX PK_btrip_report
	ON btrip_report (
		EXPENSE_INFO_ID ASC
	);

ALTER TABLE btrip_report
	ADD
		CONSTRAINT PK_btrip_report
		PRIMARY KEY (
			EXPENSE_INFO_ID
		);

/* 출장여비 정보 */
CREATE TABLE btrip_payment (
	exp_seq NUMBER NOT NULL, /* 출장여비 일련번호 */
	EXPENSE_INFO_ID NUMBER NOT NULL, /* 출장 일련번호 */
	exp_daily NUMBER, /* 일비 */
	exp_room NUMBER, /* 숙박비 */
	exp_food NUMBER, /* 식비 */
	exp_trans NUMBER, /* 교통비 */
	exp_etc NUMBER, /* 기타비 */
	exp_total NUMBER /* 합계 */
);

CREATE UNIQUE INDEX PK_btrip_payment
	ON btrip_payment (
		exp_seq ASC,
		EXPENSE_INFO_ID ASC
	);

ALTER TABLE btrip_payment
	ADD
		CONSTRAINT PK_btrip_payment
		PRIMARY KEY (
			exp_seq,
			EXPENSE_INFO_ID
		);

/* 출퇴근 */
CREATE TABLE inout (
	EMP_ID VARCHAR2(20), /* 사원번호 */
	INOUTDATE DATE, /* 근무일 */
	START_TIME VARCHAR2(9), /* 출근시간 */
	END_TIME VARCHAR2(9), /* 퇴근시간 */
	NOTE VARCHAR2(4000), /* 기타 */
	IN_CODE NUMBER, /* 출근코드 */
	OUT_CODE NUMBER /* 퇴근코드 */
);

/* 일정관리 */
CREATE TABLE SCHEDULE (
	SCH_SEQ NUMBER NOT NULL, /* 일정 일련번호 */
	EMP_ID VARCHAR2(20), /* 사원번호 */
	SCH_code NUMBER, /* 일정타입 아이디 */
	SCH_START DATE, /* 일정 시작일 */
	SCH_END DATE, /* 일정 종료일 */
	SCH_SUBJECT VARCHAR2(100), /* 일정 제목 */
	SCH_CONTENT VARCHAR2(4000), /* 일정 내용 */
	SCH_OPEN NUMBER, /* 공개여부 */
	DEP_ID NUMBER, /* 부서아이디 */
	sch_modi_flag NUMBER DEFAULT 0 /* 수정요청플래그 */
);

CREATE UNIQUE INDEX PK_SCHEDULE
	ON SCHEDULE (
		SCH_SEQ ASC
	);

ALTER TABLE SCHEDULE
	ADD
		CONSTRAINT PK_SCHEDULE
		PRIMARY KEY (
			SCH_SEQ
		);

/* 일정타입 */
CREATE TABLE schedule_type (
	SCH_code NUMBER NOT NULL, /* 일정타입 아이디 */
	SCH_NAME VARCHAR2(50) /* 일정타입 이름 */
);

CREATE UNIQUE INDEX PK_schedule_type
	ON schedule_type (
		SCH_code ASC
	);

ALTER TABLE schedule_type
	ADD
		CONSTRAINT PK_schedule_type
		PRIMARY KEY (
			SCH_code
		);

/* 주소록 */
CREATE TABLE addressbook (
	EMP_ID VARCHAR2(20) DEFAULT 0, /* 사원번호 */
	addr_NAME VARCHAR2(16), /* 이름 */
	addr_EMAIL1 VARCHAR2(100), /* 이메일1 */
	addr_EMAIL2 VARCHAR2(30), /* 이메일2 */
	addr_TEL VARCHAR2(15), /* 휴대전화 */
	addr_ETEL VARCHAR2(15), /* 전화 */
	addr_FAX VARCHAR2(20), /* 팩스 */
	DEP_ID NUMBER DEFAULT 0, /* 부서번호 */
	addr_flag NUMBER, /* 개인/부서 플래그 */
	addr_addr VARCHAR2(200), /* 주소 */
	addr_cpname VARCHAR2(200), /* 회사이름 */
	addr_cpdep VARCHAR2(200), /* 회사부서 */
	addr_cpgrade VARCHAR2(200), /* 회사직책 */
	addr_cptel VARCHAR2(15), /* 회사전화번호 */
	addr_cpaddr VARCHAR2(15) /* 회사주소 */
);

/* 프로젝트 */
CREATE TABLE project (
	ProJ_ID NUMBER NOT NULL, /* 프로젝트 일련번호 */
	proj_category NUMBER, /* 카테고리 */
	ProJ_start DATE, /* 프로젝트 시작일 */
	ProJ_end DATE, /* 프로젝트 종료일 */
	ProJ_name VARCHAR2(100), /* 프로젝트 명 */
	ProJ_explain VARCHAR2(4000), /* 프로젝트 설명 */
	ProJ_file VARCHAR2(1000), /* 프로젝트 파일 */
	EMP_ID VARCHAR2(20), /* 등록자 아이디 */
	proj_rdate DATE /* 등록일 */
);

CREATE UNIQUE INDEX PK_project
	ON project (
		ProJ_ID ASC
	);

ALTER TABLE project
	ADD
		CONSTRAINT PK_project
		PRIMARY KEY (
			ProJ_ID
		);

/* 프로젝트 인원 */
CREATE TABLE project_number (
	ProJ_ID NUMBER NOT NULL, /* 프로젝트 일련번호 */
	EMP_ID NUMBER, /* 담당자 아이디 */
	COL_start DATE, /* 담당 시작일 */
	COL_end DATE, /* 담당 종료일 */
	col_progress NUMBER, /* 진행율 */
	COL_content VARCHAR2(200) /* 담당 내용 */
);

/* 자료실 */
CREATE TABLE bbs (
	bbs_seq NUMBER NOT NULL, /* 자료번호 */
	seq NUMBER, /* 글번호 */
	bbs_origin_name VARCHAR2(40), /* 자료 원본이름 */
	bbs_path VARCHAR2(1000), /* 파일경로 */
	bbs_savefolder VARCHAR2(100), /* 저장폴더 */
	bbs_save_name VARCHAR2(100) /* 자료 저장이름 */
);

CREATE UNIQUE INDEX PK_bbs
	ON bbs (
		bbs_seq ASC
	);

ALTER TABLE bbs
	ADD
		CONSTRAINT PK_bbs
		PRIMARY KEY (
			bbs_seq
		);

/* 휴일 */
CREATE TABLE holiday (
	holi_flag NUMBER, /* 휴일 구분 */
	holi_date DATE, /* 날짜 */
	holi_name VARCHAR2(50) /* 휴일 이름 */
);

/* 첨부파일 */
CREATE TABLE file (
	file_seq NUMBER NOT NULL, /* 파일 일련번호 */
	DOC_ID VARCHAR2(16) NOT NULL, /* 문서번호 */
	origin_file_name VARCHAR2(100), /* 원본 파일 이름 */
	save_file_name VARCHAR2(100), /* 저장 파일 이름 */
	savepath VARCHAR2(1000), /* 저장경로 */
	savefolder VARCHAR2(1000) /* 저장폴더 */
);

CREATE UNIQUE INDEX PK_file
	ON file (
		file_seq ASC,
		DOC_ID ASC
	);

ALTER TABLE file
	ADD
		CONSTRAINT PK_file
		PRIMARY KEY (
			file_seq,
			DOC_ID
		);

/* 출퇴근상태 */
CREATE TABLE inout_code (
	INOUT_CODE NUMBER NOT NULL, /* 출퇴근코드 */
	INOUT_NAME VARCHAR2(50) /* 출퇴근코드 이름 */
);

CREATE UNIQUE INDEX PK_inout_code
	ON inout_code (
		INOUT_CODE ASC
	);

ALTER TABLE inout_code
	ADD
		CONSTRAINT PK_inout_code
		PRIMARY KEY (
			INOUT_CODE
		);

/* 권한 */
CREATE TABLE Permission (
	per_flag NUMBER NOT NULL, /* 권한번호 */
	per_name VARCHAR2(100) /* 권한이름 */
);

CREATE UNIQUE INDEX PK_Permission
	ON Permission (
		per_flag ASC
	);

ALTER TABLE Permission
	ADD
		CONSTRAINT PK_Permission
		PRIMARY KEY (
			per_flag
		);

/* 메뉴 */
CREATE TABLE menu (
	menu_seq NUMBER NOT NULL, /* 메뉴순서 */
	menu_name VARCHAR2(100), /* 메뉴이름 */
	permission NUMBER /* 접근권한 */
);

CREATE UNIQUE INDEX PK_menu
	ON menu (
		menu_seq ASC
	);

ALTER TABLE menu
	ADD
		CONSTRAINT PK_menu
		PRIMARY KEY (
			menu_seq
		);

/* 휴가신청서 */
CREATE TABLE vacation (
	DOC_ID VARCHAR2(16) NOT NULL, /* 문서번호 */
	va_START_DATE DATE, /* 휴가 시작일 */
	va_END_DATE DATE, /* 휴가 종료일 */
	va_location VARCHAR2(100), /* 휴가지 */
	va_purpose VARCHAR2(200), /* 휴가사유 */
	va_phone VARCHAR2(16) /* 연락처 */
);

CREATE UNIQUE INDEX PK_vacation
	ON vacation (
		DOC_ID ASC
	);

ALTER TABLE vacation
	ADD
		CONSTRAINT PK_vacation
		PRIMARY KEY (
			DOC_ID
		);

ALTER TABLE board
	ADD
		CONSTRAINT FK_boardtype_TO_board
		FOREIGN KEY (
			bcode
		)
		REFERENCES boardtype (
			bcode
		);

ALTER TABLE board
	ADD
		CONSTRAINT FK_employee_TO_board
		FOREIGN KEY (
			EMP_ID
		)
		REFERENCES employee (
			EMP_ID
		);

ALTER TABLE board_file
	ADD
		CONSTRAINT FK_board_TO_board_file
		FOREIGN KEY (
			seq
		)
		REFERENCES board (
			seq
		);

ALTER TABLE message
	ADD
		CONSTRAINT FK_board_TO_message
		FOREIGN KEY (
			seq
		)
		REFERENCES board (
			seq
		);

ALTER TABLE employee
	ADD
		CONSTRAINT FK_department_TO_employee
		FOREIGN KEY (
			DEP_ID
		)
		REFERENCES department (
			DEP_ID
		);

ALTER TABLE employee
	ADD
		CONSTRAINT FK_GRADE_TO_employee
		FOREIGN KEY (
			grade_id
		)
		REFERENCES GRADE (
			GRADE_ID
		);

ALTER TABLE employee
	ADD
		CONSTRAINT FK_Permission_TO_employee
		FOREIGN KEY (
			per_flag
		)
		REFERENCES Permission (
			per_flag
		);

ALTER TABLE DOCUMENT
	ADD
		CONSTRAINT FK_DOC_TYPE_TO_DOCUMENT
		FOREIGN KEY (
			DOC_TYPE_ID
		)
		REFERENCES DOC_TYPE (
			DOC_TYPE_ID
		);

ALTER TABLE DOCUMENT
	ADD
		CONSTRAINT FK_DOC_STATUS_TO_DOCUMENT
		FOREIGN KEY (
			DOC_STATUS_ID
		)
		REFERENCES DOC_STATUS (
			DOC_STATUS_ID
		);

ALTER TABLE journal
	ADD
		CONSTRAINT FK_DOCUMENT_TO_journal
		FOREIGN KEY (
			DOC_ID
		)
		REFERENCES DOCUMENT (
			DOC_ID
		);

ALTER TABLE RECEIVE_LIST
	ADD
		CONSTRAINT FK_DOCUMENT_TO_RECEIVE_LIST
		FOREIGN KEY (
			DOC_ID
		)
		REFERENCES DOCUMENT (
			DOC_ID
		);

ALTER TABLE RECEIVE_LIST
	ADD
		CONSTRAINT FK_department_TO_RECEIVE_LIST
		FOREIGN KEY (
			DEP_ID
		)
		REFERENCES department (
			DEP_ID
		);

ALTER TABLE SIGN_INFO
	ADD
		CONSTRAINT FK_DOCUMENT_TO_SIGN_INFO
		FOREIGN KEY (
			DOC_ID
		)
		REFERENCES DOCUMENT (
			DOC_ID
		);

ALTER TABLE SIGN_INFO
	ADD
		CONSTRAINT FK_employee_TO_SIGN_INFO
		FOREIGN KEY (
			EMP_ID
		)
		REFERENCES employee (
			EMP_ID
		);

ALTER TABLE reference
	ADD
		CONSTRAINT FK_DOCUMENT_TO_reference
		FOREIGN KEY (
			DOC_ID
		)
		REFERENCES DOCUMENT (
			DOC_ID
		);

ALTER TABLE reference
	ADD
		CONSTRAINT FK_employee_TO_reference
		FOREIGN KEY (
			EMP_ID
		)
		REFERENCES employee (
			EMP_ID
		);

ALTER TABLE Cooperation
	ADD
		CONSTRAINT FK_DOCUMENT_TO_Cooperation
		FOREIGN KEY (
			DOC_ID
		)
		REFERENCES DOCUMENT (
			DOC_ID
		);

ALTER TABLE Cooperation
	ADD
		CONSTRAINT FK_employee_TO_Cooperation
		FOREIGN KEY (
			EMP_ID
		)
		REFERENCES employee (
			EMP_ID
		);

ALTER TABLE payment
	ADD
		CONSTRAINT FK_DOCUMENT_TO_payment
		FOREIGN KEY (
			DOC_ID
		)
		REFERENCES DOCUMENT (
			DOC_ID
		);

ALTER TABLE PAYMENT_INFO
	ADD
		CONSTRAINT FK_payment_TO_PAYMENT_INFO
		FOREIGN KEY (
			PAYMENT_ID
		)
		REFERENCES payment (
			PAYMENT_ID
		);

ALTER TABLE btrip_application
	ADD
		CONSTRAINT FK_DOCUMENT_TO_btrip_application
		FOREIGN KEY (
			DOC_ID
		)
		REFERENCES DOCUMENT (
			DOC_ID
		);

ALTER TABLE btrip_report
	ADD
		CONSTRAINT FK_DOCUMENT_TO_btrip_report
		FOREIGN KEY (
			DOC_ID
		)
		REFERENCES DOCUMENT (
			DOC_ID
		);

ALTER TABLE btrip_payment
	ADD
		CONSTRAINT FK_btrip_report_TO_btrip_payment
		FOREIGN KEY (
			EXPENSE_INFO_ID
		)
		REFERENCES btrip_report (
			EXPENSE_INFO_ID
		);

ALTER TABLE inout
	ADD
		CONSTRAINT FK_employee_TO_inout
		FOREIGN KEY (
			EMP_ID
		)
		REFERENCES employee (
			EMP_ID
		);

ALTER TABLE inout
	ADD
		CONSTRAINT FK_inout_code_TO_inout
		FOREIGN KEY (
			IN_CODE
		)
		REFERENCES inout_code (
			INOUT_CODE
		);

ALTER TABLE inout
	ADD
		CONSTRAINT FK_inout_code_TO_inout2
		FOREIGN KEY (
			OUT_CODE
		)
		REFERENCES inout_code (
			INOUT_CODE
		);

ALTER TABLE SCHEDULE
	ADD
		CONSTRAINT FK_employee_TO_SCHEDULE
		FOREIGN KEY (
			EMP_ID
		)
		REFERENCES employee (
			EMP_ID
		);

ALTER TABLE SCHEDULE
	ADD
		CONSTRAINT FK_schedule_type_TO_SCHEDULE
		FOREIGN KEY (
			SCH_code
		)
		REFERENCES schedule_type (
			SCH_code
		);

ALTER TABLE SCHEDULE
	ADD
		CONSTRAINT FK_department_TO_SCHEDULE
		FOREIGN KEY (
			DEP_ID
		)
		REFERENCES department (
			DEP_ID
		);

ALTER TABLE addressbook
	ADD
		CONSTRAINT FK_employee_TO_addressbook
		FOREIGN KEY (
			EMP_ID
		)
		REFERENCES employee (
			EMP_ID
		);

ALTER TABLE addressbook
	ADD
		CONSTRAINT FK_department_TO_addressbook
		FOREIGN KEY (
			DEP_ID
		)
		REFERENCES department (
			DEP_ID
		);

ALTER TABLE project
	ADD
		CONSTRAINT FK_employee_TO_project
		FOREIGN KEY (
			EMP_ID
		)
		REFERENCES employee (
			EMP_ID
		);

ALTER TABLE project_number
	ADD
		CONSTRAINT FK_project_TO_project_number
		FOREIGN KEY (
			ProJ_ID
		)
		REFERENCES project (
			ProJ_ID
		);

ALTER TABLE bbs
	ADD
		CONSTRAINT FK_board_TO_bbs
		FOREIGN KEY (
			seq
		)
		REFERENCES board (
			seq
		);

ALTER TABLE file
	ADD
		CONSTRAINT FK_DOCUMENT_TO_file
		FOREIGN KEY (
			DOC_ID
		)
		REFERENCES DOCUMENT (
			DOC_ID
		);

ALTER TABLE vacation
	ADD
		CONSTRAINT FK_DOCUMENT_TO_vacation
		FOREIGN KEY (
			DOC_ID
		)
		REFERENCES DOCUMENT (
			DOC_ID
		);