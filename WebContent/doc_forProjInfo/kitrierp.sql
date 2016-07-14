drop sequence SEQ_BBS_SEQ;

drop sequence SEQ_BFILE_SEQ;

drop sequence SEQ_BOARD_SEQ;

drop sequence SEQ_DOC_APPR_SEQ;

drop sequence SEQ_DOC_COOP_SEQ;

drop sequence SEQ_DOC_EXP_SEQ;

drop sequence SEQ_DOC_EXPENSE_INFO_ID;

drop sequence SEQ_DOC_FILE_SEQ;

drop sequence SEQ_DOC_ID;

drop sequence SEQ_DOC_PAYINFO_SEQ;

drop sequence SEQ_DOC_PAYMENT_ID;

drop sequence SEQ_DOC_RECEI_SEQ;

drop sequence SEQ_DOC_REF_SEQ;

drop sequence SEQ_EMPLOYEE_SEQ;

drop sequence SEQ_INOUT_CODE;

drop sequence SEQ_MENU_SEQ;

drop sequence SEQ_MESSAGE_MSEQ;

drop sequence SEQ_PER_FLAG;

drop sequence SEQ_PROJ_CATEGORY;

drop sequence SEQ_PROJ_ID;

drop sequence SEQ_SCH_SEQ;

drop sequence SEQ_SCH_TYPE;
create sequence SEQ_BBS_SEQ
start with 1
increment by 1;

create sequence SEQ_BFILE_SEQ
start with 1
increment by 1;

create sequence SEQ_BOARD_SEQ
start with 1
increment by 1;

create sequence SEQ_DOC_APPR_SEQ
start with 1
increment by 1;

create sequence SEQ_DOC_COOP_SEQ
start with 1
increment by 1;

create sequence SEQ_DOC_EXP_SEQ
start with 1
increment by 1;

create sequence SEQ_DOC_EXPENSE_INFO_ID
start with 1
increment by 1;

create sequence SEQ_DOC_FILE_SEQ
start with 1
increment by 1;

create sequence SEQ_DOC_ID
start with 1
increment by 1;

create sequence SEQ_DOC_PAYINFO_SEQ
start with 1
increment by 1;

create sequence SEQ_DOC_PAYMENT_ID
start with 1
increment by 1;

create sequence SEQ_DOC_RECEI_SEQ
start with 1
increment by 1;

create sequence SEQ_DOC_REF_SEQ
start with 1
increment by 1;

create sequence SEQ_EMPLOYEE_SEQ
start with 1
increment by 1;

create sequence SEQ_INOUT_CODE
start with 1
increment by 1;

create sequence SEQ_MENU_SEQ
start with 1
increment by 1;

create sequence SEQ_MESSAGE_MSEQ
start with 1
increment by 1;

create sequence SEQ_PER_FLAG
start with 1
increment by 1;

create sequence SEQ_PROJ_CATEGORY
start with 1
increment by 1;

create sequence SEQ_PROJ_ID
start with 1
increment by 1;

create sequence SEQ_SCH_SEQ
start with 1
increment by 1;

create sequence SEQ_SCH_TYPE
start with 1
increment by 1;

ALTER TABLE board
	DROP
		CONSTRAINT FK_boardtype_TO_board
		CASCADE;

ALTER TABLE board
	DROP
		CONSTRAINT FK_employee_TO_board
		CASCADE;

ALTER TABLE board_file
	DROP
		CONSTRAINT FK_board_TO_board_file
		CASCADE;

ALTER TABLE message
	DROP
		CONSTRAINT FK_board_TO_message
		CASCADE;

ALTER TABLE employee
	DROP
		CONSTRAINT FK_department_TO_employee
		CASCADE;

ALTER TABLE employee
	DROP
		CONSTRAINT FK_GRADE_TO_employee
		CASCADE;

ALTER TABLE employee
	DROP
		CONSTRAINT FK_Permission_TO_employee
		CASCADE;

ALTER TABLE DOCUMENT
	DROP
		CONSTRAINT FK_DOC_TYPE_TO_DOCUMENT
		CASCADE;

ALTER TABLE DOCUMENT
	DROP
		CONSTRAINT FK_DOC_STATUS_TO_DOCUMENT
		CASCADE;

ALTER TABLE journal
	DROP
		CONSTRAINT FK_DOCUMENT_TO_journal
		CASCADE;

ALTER TABLE RECEIVE_LIST
	DROP
		CONSTRAINT FK_DOCUMENT_TO_RECEIVE_LIST
		CASCADE;

ALTER TABLE RECEIVE_LIST
	DROP
		CONSTRAINT FK_department_TO_RECEIVE_LIST
		CASCADE;

ALTER TABLE SIGN_INFO
	DROP
		CONSTRAINT FK_DOCUMENT_TO_SIGN_INFO
		CASCADE;

ALTER TABLE SIGN_INFO
	DROP
		CONSTRAINT FK_employee_TO_SIGN_INFO
		CASCADE;

ALTER TABLE reference
	DROP
		CONSTRAINT FK_DOCUMENT_TO_reference
		CASCADE;

ALTER TABLE reference
	DROP
		CONSTRAINT FK_employee_TO_reference
		CASCADE;

ALTER TABLE Cooperation
	DROP
		CONSTRAINT FK_DOCUMENT_TO_Cooperation
		CASCADE;

ALTER TABLE Cooperation
	DROP
		CONSTRAINT FK_employee_TO_Cooperation
		CASCADE;

ALTER TABLE payment
	DROP
		CONSTRAINT FK_DOCUMENT_TO_payment
		CASCADE;

ALTER TABLE PAYMENT_INFO
	DROP
		CONSTRAINT FK_payment_TO_PAYMENT_INFO
		CASCADE;

ALTER TABLE btrip application
	DROP
		CONSTRAINT FK_DOCUMENT_TO_btrip application
		CASCADE;

ALTER TABLE btrip report
	DROP
		CONSTRAINT FK_DOCUMENT_TO_btrip report
		CASCADE;

ALTER TABLE btrip_payment
	DROP
		CONSTRAINT FK_btrip report_TO_btrip_payment
		CASCADE;

ALTER TABLE inout
	DROP
		CONSTRAINT FK_employee_TO_inout
		CASCADE;

ALTER TABLE inout
	DROP
		CONSTRAINT FK_inout_code_TO_inout
		CASCADE;

ALTER TABLE inout
	DROP
		CONSTRAINT FK_inout_code_TO_inout2
		CASCADE;

ALTER TABLE SCHEDULE
	DROP
		CONSTRAINT FK_employee_TO_SCHEDULE
		CASCADE;

ALTER TABLE SCHEDULE
	DROP
		CONSTRAINT FK_schedule_type_TO_SCHEDULE
		CASCADE;

ALTER TABLE SCHEDULE
	DROP
		CONSTRAINT FK_department_TO_SCHEDULE
		CASCADE;

ALTER TABLE addressbook
	DROP
		CONSTRAINT FK_employee_TO_addressbook
		CASCADE;

ALTER TABLE addressbook
	DROP
		CONSTRAINT FK_department_TO_addressbook
		CASCADE;

ALTER TABLE project
	DROP
		CONSTRAINT FK_employee_TO_project
		CASCADE;

ALTER TABLE project_number
	DROP
		CONSTRAINT FK_project_TO_project_number
		CASCADE;

ALTER TABLE bbs
	DROP
		CONSTRAINT FK_board_TO_bbs
		CASCADE;

ALTER TABLE file
	DROP
		CONSTRAINT FK_DOCUMENT_TO_file
		CASCADE;

ALTER TABLE vacation
	DROP
		CONSTRAINT FK_DOCUMENT_TO_vacation
		CASCADE;

ALTER TABLE board
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE board_file
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE boardtype
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE message
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE employee
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE department
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE GRADE
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE DOCUMENT
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE DOC_TYPE
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE journal
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE DOC_STATUS
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE RECEIVE_LIST
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE SIGN_INFO
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE reference
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Cooperation
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE payment
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE PAYMENT_INFO
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE btrip application
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE btrip report
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE btrip_payment
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE SCHEDULE
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE schedule_type
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE project
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE bbs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE file
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE inout_code
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Permission
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE menu
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE vacation
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_board;

DROP INDEX PK_board_file;

DROP INDEX PK_boardtype;

DROP INDEX PK_message;

DROP INDEX PK_employee;

DROP INDEX PK_department;

DROP INDEX PK_GRADE;

DROP INDEX PK_DOCUMENT;

DROP INDEX PK_DOC_TYPE;

DROP INDEX PK_journal;

DROP INDEX PK_DOC_STATUS;

DROP INDEX PK_RECEIVE_LIST;

DROP INDEX PK_SIGN_INFO;

DROP INDEX PK_reference;

DROP INDEX PK_Cooperation;

DROP INDEX PK_payment;

DROP INDEX PK_PAYMENT_INFO;

DROP INDEX PK_btrip application;

DROP INDEX PK_btrip report;

DROP INDEX PK_btrip_payment;

DROP INDEX PK_SCHEDULE;

DROP INDEX PK_schedule_type;

DROP INDEX PK_project;

DROP INDEX PK_bbs;

DROP INDEX PK_file;

DROP INDEX PK_inout_code;

DROP INDEX PK_Permission;

DROP INDEX PK_menu;

DROP INDEX PK_vacation;

/* �Խ��� */
DROP TABLE board 
	CASCADE CONSTRAINTS;

/* �Խ���_���� */
DROP TABLE board_file 
	CASCADE CONSTRAINTS;

/* �Խ��� ���� */
DROP TABLE boardtype 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE message 
	CASCADE CONSTRAINTS;

/* ������� */
DROP TABLE employee 
	CASCADE CONSTRAINTS;

/* �μ� */
DROP TABLE department 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE GRADE 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE DOCUMENT 
	CASCADE CONSTRAINTS;

/* �������� */
DROP TABLE DOC_TYPE 
	CASCADE CONSTRAINTS;

/* �������� */
DROP TABLE journal 
	CASCADE CONSTRAINTS;

/* ���� ������� */
DROP TABLE DOC_STATUS 
	CASCADE CONSTRAINTS;

/* ���� ��� */
DROP TABLE RECEIVE_LIST 
	CASCADE CONSTRAINTS;

/* ������ ���� */
DROP TABLE SIGN_INFO 
	CASCADE CONSTRAINTS;

/* ������ ���� */
DROP TABLE reference 
	CASCADE CONSTRAINTS;

/* ������ ���� */
DROP TABLE Cooperation 
	CASCADE CONSTRAINTS;

/* ������Ǽ� */
DROP TABLE payment 
	CASCADE CONSTRAINTS;

/* ���� ���� ���� */
DROP TABLE PAYMENT_INFO 
	CASCADE CONSTRAINTS;

/* �����û�� */
DROP TABLE btrip application 
	CASCADE CONSTRAINTS;

/* ���庸�� */
DROP TABLE btrip report 
	CASCADE CONSTRAINTS;

/* ���忩�� ���� */
DROP TABLE btrip_payment 
	CASCADE CONSTRAINTS;

/* ����� */
DROP TABLE inout 
	CASCADE CONSTRAINTS;

/* �������� */
DROP TABLE SCHEDULE 
	CASCADE CONSTRAINTS;

/* ����Ÿ�� */
DROP TABLE schedule_type 
	CASCADE CONSTRAINTS;

/* �ּҷ� */
DROP TABLE addressbook 
	CASCADE CONSTRAINTS;

/* ������Ʈ */
DROP TABLE project 
	CASCADE CONSTRAINTS;

/* ������Ʈ �ο� */
DROP TABLE project_number 
	CASCADE CONSTRAINTS;

/* �ڷ�� */
DROP TABLE bbs 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE holiday 
	CASCADE CONSTRAINTS;

/* ÷������ */
DROP TABLE file 
	CASCADE CONSTRAINTS;

/* ����ٻ��� */
DROP TABLE inout_code 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE Permission 
	CASCADE CONSTRAINTS;

/* �޴� */
DROP TABLE menu 
	CASCADE CONSTRAINTS;

/* �ް���û�� */
DROP TABLE vacation 
	CASCADE CONSTRAINTS;

/* �Խ��� */
CREATE TABLE board (
	seq NUMBER NOT NULL, /* �۹�ȣ */
	bcode NUMBER NOT NULL, /* �Խ��� ���� ��ȣ */
	subject VARCHAR2(50), /* ���� */
	contents VARCHAR2(100), /* ���� */
	logtime DATE, /* �ۼ��� */
	EMP_ID NUMBER /* �ۼ��� �����ȣ */
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

/* �Խ���_���� */
CREATE TABLE board_file (
	bfile_seq NUMBER NOT NULL, /* ���Ϲ�ȣ */
	bfile_origin_name VARCHAR2(40), /* ���� �����̸� */
	bfile_path VARCHAR2(1000), /* ���ϰ�� */
	bfile_savefolder VARCHAR2(100), /* �������� */
	seq NUMBER, /* �۹�ȣ */
	bfile_save_name <���� ���� ����> /* ���������̸� */
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

/* �Խ��� ���� */
CREATE TABLE boardtype (
	bcode NUMBER NOT NULL, /* �Խ��� ���� ��ȣ */
	bname VARCHAR2(20) /* �Խ��� ���� �̸� */
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

/* ���� */
CREATE TABLE message (
	mseq NUMBER NOT NULL, /* �����۹�ȣ */
	seq NUMBER NOT NULL, /* �۹�ȣ */
	receiver_id VARCHAR2(16), /* �޴»�� ���̵� */
	msg_flag NUMBER DEFAULT 0, /* Ȯ�ο��� */
	delete_send NUMBER, /* ����_������ */
	delete_recei NUMBER /* ����_������ */
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

/* ������� */
CREATE TABLE employee (
	EMP_ID NUMBER NOT NULL, /* �����ȣ */
	EMP_PW VARCHAR2(20) NOT NULL, /* �н����� */
	grade_id NUMBER NOT NULL, /* ���޹�ȣ */
	EMP_NAME VARCHAR2(16), /* �̸� */
	EMP_email1 VARCHAR2(100), /* �̸��� */
	EMP_tel VARCHAR2(15), /* ��ȭ��ȣ */
	profile_image VARCHAR2(1000), /* �������̹��� */
	DEP_ID NUMBER, /* �μ���ȣ */
	EMP_ADDR1 VARCHAR2(50), /* �ּ� */
	EMP_ADDR2 VARCHAR2(100), /* ���ּ� */
	EMP_EMAIL2 VARCHAR2(30), /* �̸��� ������ */
	EMP_STATUS NUMBER, /* �ٹ����� */
	per_flag NUMBER /* ���ѹ�ȣ */
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

/* �μ� */
CREATE TABLE department (
	DEP_ID NUMBER NOT NULL, /* �μ���ȣ */
	DEP_NAME VARCHAR2(40), /* �μ��̸� */
	Manager_ID NUMBER /* �μ��� ���̵� */
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

/* ���� */
CREATE TABLE GRADE (
	GRADE_ID NUMBER NOT NULL, /* ���޹�ȣ */
	GRADE_NAME VARCHAR2(16) /* �����̸� */
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

/* ���� */
CREATE TABLE DOCUMENT (
	DOC_ID VARCHAR2(16) NOT NULL, /* ������ȣ */
	DOC_STATUS_ID NUMBER NOT NULL, /* ������� ��ȣ */
	EMP_ID NUMBER, /* ����� ���̵� */
	DOC_TYPE_ID NUMBER, /* ����Ÿ�� ���̵� */
	DOC_SUBJECT VARCHAR2(100), /* ���� */
	DOC_CONTENT VARCHAR2(4000), /* ���� */
	DOC_DATE DATE, /* ����� */
	DOC_DEADLINE DATE, /* ���� �Ϸ� ������ */
	DOC_OPEN NUMBER, /* �������� */
	DOC_DEP_ID NUMBER, /* �ۼ��μ� ���̵� */
	DOC_NOTE VARCHAR2(4000) /* ��� */
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

/* �������� */
CREATE TABLE DOC_TYPE (
	DOC_TYPE_ID NUMBER NOT NULL, /* ����Ÿ�� ���̵� */
	DOC_TYPE_NAME VARCHAR2(30) /* Ÿ�� �̸� */
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

/* �������� */
CREATE TABLE journal (
	DOC_ID VARCHAR2(16) NOT NULL, /* ������ȣ */
	jou_today VARCHAR2(4000), /* ���ϳ��� */
	jou_nextday VARCHAR2(4000), /* ���ϳ��� */
	jou_note VARCHAR2(4000), /* Ư�̻��� �� ���ǻ��� */
	jou_issue VARCHAR2(4000) DEFAULT ���� ���̺� ���
 /* �ǰ� */
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

/* ���� ������� */
CREATE TABLE DOC_STATUS (
	DOC_STATUS_ID NUMBER NOT NULL, /* ������� ��ȣ */
	DOC_STATUS_NAME VARCHAR2(20) /* ������� �̸� */
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

/* ���� ��� */
CREATE TABLE RECEIVE_LIST (
	RECEI_SEQ NUMBER NOT NULL, /* ���� �Ϸù�ȣ */
	DOC_ID VARCHAR2(16), /* ������ȣ */
	DEP_ID NUMBER /* �μ���ȣ */
);

CREATE UNIQUE INDEX PK_RECEIVE_LIST
	ON RECEIVE_LIST (
		RECEI_SEQ ASC
	);

ALTER TABLE RECEIVE_LIST
	ADD
		CONSTRAINT PK_RECEIVE_LIST
		PRIMARY KEY (
			RECEI_SEQ
		);

/* ������ ���� */
CREATE TABLE SIGN_INFO (
	appr_seq NUMBER NOT NULL, /* ������ �Ϸù�ȣ */
	DOC_ID VARCHAR2(16), /* ������ȣ */
	EMP_ID NUMBER /* �����ȣ */
);

CREATE UNIQUE INDEX PK_SIGN_INFO
	ON SIGN_INFO (
		appr_seq ASC
	);

ALTER TABLE SIGN_INFO
	ADD
		CONSTRAINT PK_SIGN_INFO
		PRIMARY KEY (
			appr_seq
		);

/* ������ ���� */
CREATE TABLE reference (
	REF_SEQ NUMBER NOT NULL, /* ���� �Ϸù�ȣ */
	DOC_ID VARCHAR2(16), /* ������ȣ */
	EMP_ID NUMBER /* �����ȣ */
);

CREATE UNIQUE INDEX PK_reference
	ON reference (
		REF_SEQ ASC
	);

ALTER TABLE reference
	ADD
		CONSTRAINT PK_reference
		PRIMARY KEY (
			REF_SEQ
		);

/* ������ ���� */
CREATE TABLE Cooperation (
	coop_SEQ NUMBER NOT NULL, /* ���� �Ϸù�ȣ */
	DOC_ID VARCHAR2(16), /* ������ȣ */
	EMP_ID NUMBER /* �����ȣ */
);

CREATE UNIQUE INDEX PK_Cooperation
	ON Cooperation (
		coop_SEQ ASC
	);

ALTER TABLE Cooperation
	ADD
		CONSTRAINT PK_Cooperation
		PRIMARY KEY (
			coop_SEQ
		);

/* ������Ǽ� */
CREATE TABLE payment (
	PAYMENT_ID NUMBER NOT NULL, /* �Ϸù�ȣ */
	billing NUMBER, /* û���ݾ� */
	settlement NUMBER, /* ����ݾ� */
	recipient VARCHAR2(30), /* ������ */
	DOC_ID VARCHAR2(16) /* ������ȣ */
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

/* ���� ���� ���� */
CREATE TABLE PAYMENT_INFO (
	payInfo_seq NUMBER NOT NULL, /* ���⳻������ �Ϸù�ȣ */
	PAYMENT_ID NUMBER NOT NULL, /* �Ϸù�ȣ */
	PAY_DATE DATE, /* ��¥ */
	PAY_INFO PAY_INFO, /* ���⳻�� */
	AMOUNT NUMBER, /* �ݾ� */
	NOTE VARCHAR2(500) /* ��� */
);

CREATE UNIQUE INDEX PK_PAYMENT_INFO
	ON PAYMENT_INFO (
		payInfo_seq ASC
	);

ALTER TABLE PAYMENT_INFO
	ADD
		CONSTRAINT PK_PAYMENT_INFO
		PRIMARY KEY (
			payInfo_seq
		);

/* �����û�� */
CREATE TABLE btrip application (
	DOC_ID VARCHAR2(16) NOT NULL, /* ������ȣ */
	START_DATE DATE, /* ���� ������ */
	END_DATE DATE, /* ���� ������ */
	btrip_location VARCHAR2(100), /* ������ */
	btrip_purpose VARCHAR2(200) /* ���� ���� */
);

CREATE UNIQUE INDEX PK_btrip application
	ON btrip application (
		DOC_ID ASC
	);

ALTER TABLE btrip application
	ADD
		CONSTRAINT PK_btrip application
		PRIMARY KEY (
			DOC_ID
		);

/* ���庸�� */
CREATE TABLE btrip report (
	EXPENSE_INFO_ID NUMBER NOT NULL, /* ���� �Ϸù�ȣ */
	DOC_ID VARCHAR2(16), /* ������ȣ */
	START_DATE DATE, /* ���� ������ */
	END_DATE DATE, /* ���� ������ */
	btrip_location VARCHAR2(100) /* ������ */
);

CREATE UNIQUE INDEX PK_btrip report
	ON btrip report (
		EXPENSE_INFO_ID ASC
	);

ALTER TABLE btrip report
	ADD
		CONSTRAINT PK_btrip report
		PRIMARY KEY (
			EXPENSE_INFO_ID
		);

/* ���忩�� ���� */
CREATE TABLE btrip_payment (
	exp_seq NUMBER NOT NULL, /* ���忩�� �Ϸù�ȣ */
	EXPENSE_INFO_ID NUMBER NOT NULL, /* ���� �Ϸù�ȣ */
	exp_daily NUMBER, /* �Ϻ� */
	exp_room NUMBER, /* ���ں� */
	exp_food NUMBER, /* �ĺ� */
	exp_trans NUMBER, /* ����� */
	exp_etc NUMBER, /* ��Ÿ�� */
	exp_total NUMBER /* �հ� */
);

CREATE UNIQUE INDEX PK_btrip_payment
	ON btrip_payment (
		exp_seq ASC
	);

ALTER TABLE btrip_payment
	ADD
		CONSTRAINT PK_btrip_payment
		PRIMARY KEY (
			exp_seq
		);

/* ����� */
CREATE TABLE inout (
	EMP_ID NUMBER, /* �����ȣ */
	INOUTDATE DATE, /* �ٹ��� */
	START_TIME VARCHAR2(9), /* ��ٽð� */
	END_TIME VARCHAR2(9), /* ��ٽð� */
	NOTE VARCHAR2(4000), /* ��Ÿ */
	IN_CODE NUMBER, /* ����ڵ� */
	OUT_CODE NUMBER /* ����ڵ� */
);

/* �������� */
CREATE TABLE SCHEDULE (
	SCH_SEQ NUMBER NOT NULL, /* ���� �Ϸù�ȣ */
	EMP_ID NUMBER, /* �����ȣ */
	SCH_code NUMBER, /* ����Ÿ�� ���̵� */
	SCH_START DATE, /* ���� ������ */
	SCH_END DATE, /* ���� ������ */
	SCH_SUBJECT VARCHAR2(100), /* ���� ���� */
	SCH_CONTENT VARCHAR2(4000), /* ���� ���� */
	SCH_OPEN NUMBER, /* �������� */
	DEP_ID NUMBER, /* �μ����̵� */
	sch_modi_flag NUMBER DEFAULT 0 /* ������û�÷��� */
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

/* ����Ÿ�� */
CREATE TABLE schedule_type (
	SCH_code NUMBER NOT NULL, /* ����Ÿ�� ���̵� */
	SCH_NAME VARCHAR2(50) /* ����Ÿ�� �̸� */
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

/* �ּҷ� */
CREATE TABLE addressbook (
	EMP_ID NUMBER DEFAULT 0, /* �����ȣ */
	addr_NAME VARCHAR2(16), /* �̸� */
	addr_EMAIL1 VARCHAR2(100), /* �̸���1 */
	addr_EMAIL2 VARCHAR2(30), /* �̸���2 */
	addr_TEL VARCHAR2(15), /* �޴���ȭ */
	addr_ETEL VARCHAR2(15), /* ��ȭ */
	addr_FAX VARCHAR2(20), /* �ѽ� */
	DEP_ID NUMBER DEFAULT 0, /* �μ���ȣ */
	addr_flag NUMBER, /* ����/�μ� �÷��� */
	addr_addr VARCHAR2(200), /* �ּ� */
	addr_cpname VARCHAR2(200), /* ȸ���̸� */
	addr_cpdep VARCHAR2(200), /* ȸ��μ� */
	addr_cpgrade VARCHAR2(200), /* ȸ����å */
	addr_cptel VARCHAR2(15), /* ȸ����ȭ��ȣ */
	addr_cpaddr VARCHAR2(15) /* ȸ���ּ� */
);

/* ������Ʈ */
CREATE TABLE project (
	ProJ_ID NUMBER NOT NULL, /* ������Ʈ �Ϸù�ȣ */
	proj_category NUMBER, /* ī�װ� */
	ProJ_start DATE, /* ������Ʈ ������ */
	ProJ_end DATE, /* ������Ʈ ������ */
	ProJ_name VARCHAR2(100), /* ������Ʈ �� */
	ProJ_explain VARCHAR2(4000), /* ������Ʈ ���� */
	ProJ_file VARCHAR2(1000), /* ������Ʈ ���� */
	EMP_ID NUMBER, /* ����� ���̵� */
	proj_rdate DATE /* ����� */
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

/* ������Ʈ �ο� */
CREATE TABLE project_number (
	ProJ_ID NUMBER NOT NULL, /* ������Ʈ �Ϸù�ȣ */
	EMP_ID NUMBER, /* ����� ���̵� */
	COL_start DATE, /* ��� ������ */
	COL_end DATE, /* ��� ������ */
	col_progress NUMBER, /* ������ */
	COL_content VARCHAR2(200) /* ��� ���� */
);

/* �ڷ�� */
CREATE TABLE bbs (
	bbs_seq NUMBER NOT NULL, /* �ڷ��ȣ */
	seq NUMBER, /* �۹�ȣ */
	bbs_origin_name VARCHAR2(40), /* �ڷ� �����̸� */
	bbs_path VARCHAR2(1000), /* ���ϰ�� */
	bbs_savefolder VARCHAR2(100), /* �������� */
	bbs_save_name VARCHAR2(100) /* �ڷ� �����̸� */
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

/* ���� */
CREATE TABLE holiday (
	holi_flag NUMBER, /* ���� ���� */
	holi_date DATE, /* ��¥ */
	holi_name VARCHAR2(50) /* ���� �̸� */
);

/* ÷������ */
CREATE TABLE file (
	file_seq NUMBER NOT NULL, /* ���� �Ϸù�ȣ */
	DOC_ID VARCHAR2(16), /* ������ȣ */
	origin_file_name VARCHAR2(100), /* ���� ���� �̸� */
	save_file_name VARCHAR2(100), /* ���� ���� �̸� */
	savepath VARCHAR2(1000), /* ������ */
	savefolder VARCHAR2(1000) /* �������� */
);

CREATE UNIQUE INDEX PK_file
	ON file (
		file_seq ASC
	);

ALTER TABLE file
	ADD
		CONSTRAINT PK_file
		PRIMARY KEY (
			file_seq
		);

/* ����ٻ��� */
CREATE TABLE inout_code (
	INOUT_CODE NUMBER NOT NULL, /* ������ڵ� */
	INOUT_NAME VARCHAR2(50) /* ������ڵ� �̸� */
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

/* ���� */
CREATE TABLE Permission (
	per_flag NUMBER NOT NULL, /* ���ѹ�ȣ */
	per_name VARCHAR2(100) /* �����̸� */
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

/* �޴� */
CREATE TABLE menu (
	menu_seq NUMBER NOT NULL, /* �޴����� */
	menu_name VARCHAR2(100), /* �޴��̸� */
	permission NUMBER /* ���ٱ��� */
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

/* �ް���û�� */
CREATE TABLE vacation (
	DOC_ID VARCHAR2(16) NOT NULL, /* ������ȣ */
	va_START_DATE DATE, /* �ް� ������ */
	va_END_DATE DATE, /* �ް� ������ */
	va_location VARCHAR2(100), /* �ް��� */
	va_purpose VARCHAR2(200), /* �ް����� */
	va_phone VARCHAR2(16) /* ����ó */
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

ALTER TABLE btrip application
	ADD
		CONSTRAINT FK_DOCUMENT_TO_btrip application
		FOREIGN KEY (
			DOC_ID
		)
		REFERENCES DOCUMENT (
			DOC_ID
		);

ALTER TABLE btrip report
	ADD
		CONSTRAINT FK_DOCUMENT_TO_btrip report
		FOREIGN KEY (
			DOC_ID
		)
		REFERENCES DOCUMENT (
			DOC_ID
		);

ALTER TABLE btrip_payment
	ADD
		CONSTRAINT FK_btrip report_TO_btrip_payment
		FOREIGN KEY (
			EXPENSE_INFO_ID
		)
		REFERENCES btrip report (
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
		
ALTER TABLE sign_info
ADD (appr_flag NUMber);