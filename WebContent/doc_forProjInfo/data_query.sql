INSERT INTO department (dep_id, dep_name)
     VALUES (99, 'exectuives');

INSERT INTO department (dep_id, dep_name)
     VALUES (10, 'management');

INSERT INTO department (dep_id, dep_name)
     VALUES (20, 'development');

INSERT INTO department (dep_id, dep_name)
     VALUES (30, 'planning');

INSERT INTO permission (per_flag, PER_NAME)
     VALUES (0, 'masterAll');

INSERT INTO permission (per_flag, PER_NAME)
     VALUES (1, 'masterErp');

INSERT INTO permission (per_flag, PER_NAME)
     VALUES (2, 'masterHR');

INSERT INTO permission (per_flag, PER_NAME)
     VALUES (3, 'general');

INSERT INTO grade (grade_id, grade_name)
     VALUES (0, 'CEO');

INSERT INTO grade (grade_id, grade_name)
     VALUES (1, 'Manager');

INSERT INTO grade (grade_id, grade_name)
     VALUES (2, 'Director');

INSERT INTO grade (grade_id, grade_name)
     VALUES (3, 'Chief');

INSERT INTO grade (grade_id, grade_name)
     VALUES (4, 'Supervisor');

INSERT INTO grade (grade_id, grade_name)
     VALUES (5, 'Assistant');

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (99,
             '서울특별시 용산구',
             '유엔빌리지길 22',
             'ceoChoi',
             'kitri.com',
             '99990103' + seq_employee_SEQ.NEXTVAL,
             '최영기',
             '1111',
             '0103456789',
             0);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (10,
             '서울특별시 용산구',
             '유엔빌리지길 20',
             'ManagerKang',
             'kitri.com',
             '10990103' + seq_employee_SEQ.NEXTVAL,
             '강중영',
             '1111',
             '0104560789',
             1);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (20,
             '서울특별시 용산구',
             '유엔빌리지길 19',
             'ManagerNam',
             'kitri.com',
             '20990103' + seq_employee_SEQ.NEXTVAL,
             '남정우',
             '1111',
             '0102456789',
             1);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (30,
             '서울특별시 용산구',
             '유엔빌리지길 18',
             'ManagerJang',
             'kitri.com',
             '30990103' + seq_employee_SEQ.NEXTVAL,
             '장진우',
             '1111',
             '0102446789',
             1);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (10,
             '서울특별시 용산구',
             '유엔빌리지길 17',
             'DirectorMin',
             'kitri.com',
             '10990103' + seq_employee_SEQ.NEXTVAL,
             '민정환',
             '1111',
             '0102488789',
             2);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (20,
             '서울특별시 용산구',
             '유엔빌리지길 16',
             'DirectorYoon',
             'kitri.com',
             '20990103' + seq_employee_SEQ.NEXTVAL,
             '윤성일',
             '1111',
             '0102344789',
             2);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (30,
             '서울특별시 용산구',
             '유엔빌리지길 15',
             'DirectorKim',
             'kitri.com',
             '30990103' + seq_employee_SEQ.NEXTVAL,
             '김경호',
             '1111',
             '0102488789',
             2);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (10,
             '서울특별시 용산구',
             '유엔빌리지길 14',
             'ChiefLee',
             'kitri.com',
             '10050103' + seq_employee_SEQ.NEXTVAL,
             '이진원',
             '1111',
             '0102464589',
             3);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (10,
             '서울특별시 용산구',
             '유엔빌리지길 13',
             'ChiefHan',
             'kitri.com',
             '10050103' + seq_employee_SEQ.NEXTVAL,
             '한인규',
             '1111',
             '0102234589',
             3);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (20,
             '서울특별시 용산구',
             '유엔빌리지길 12',
             'ChiefPark',
             'kitri.com',
             '20050103' + seq_employee_SEQ.NEXTVAL,
             '박민준',
             '1111',
             '0102238789',
             3);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (20,
             '서울특별시 용산구',
             '유엔빌리지길 11',
             'ChiefAhn',
             'kitri.com',
             '20050103' + seq_employee_SEQ.NEXTVAL,
             '안진환',
             '1111',
             '0102231289',
             3);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (30,
             '서울특별시 용산구',
             '유엔빌리지길 10',
             'ChiefJin',
             'kitri.com',
             '30050103' + seq_employee_SEQ.NEXTVAL,
             '진기행',
             '1111',
             '0102238733',
             3);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (30,
             '서울특별시 용산구',
             '유엔빌리지길 09',
             'ChiefHamm',
             'kitri.com',
             '30050103' + seq_employee_SEQ.NEXTVAL,
             '함미옥',
             '1111',
             '0102230033',
             3);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (10,
             '서울특별시 용산구',
             '유엔빌리지길 08',
             'SupervisorHong',
             'kitri.com',
             '10100103' + seq_employee_SEQ.NEXTVAL,
             '홍영진',
             '1111',
             '0102461189',
             4);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (10,
             '서울특별시 용산구',
             '유엔빌리지길 08',
             'SupervisorShin',
             'kitri.com',
             '10100103' + seq_employee_SEQ.NEXTVAL,
             '신혜나',
             '1111',
             '01021295399',
             4);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (10,
             '서울특별시 용산구',
             '유엔빌리지길 07',
             'SupervisorHan',
             'kitri.com',
             '10100103' + seq_employee_SEQ.NEXTVAL,
             '한인규',
             '1111',
             '01021291299',
             4);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (20,
             '서울특별시 용산구',
             '유엔빌리지길 06',
             'SupervisorWoo',
             'kitri.com',
             '10100103' + seq_employee_SEQ.NEXTVAL,
             '우석준',
             '1111',
             '01021212399',
             4);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (20,
             '서울특별시 용산구',
             '유엔빌리지길 05',
             'SupervisorYang',
             'kitri.com',
             '10100103' + seq_employee_SEQ.NEXTVAL,
             '양윤옥',
             '1111',
             '01021212300',
             4);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (20,
             '서울특별시 용산구',
             '유엔빌리지길 04',
             'SupervisorCha',
             'kitri.com',
             '10100103' + seq_employee_SEQ.NEXTVAL,
             '차경아',
             '1111',
             '01066212300',
             4);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (30,
             '서울특별시 용산구',
             '유엔빌리지길 03',
             'SupervisorOh',
             'kitri.com',
             '10100103' + seq_employee_SEQ.NEXTVAL,
             '오생근',
             '1111',
             '01066882300',
             4);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (30,
             '서울특별시 용산구',
             '유엔빌리지길 02',
             'SupervisorJoo',
             'kitri.com',
             '10100103' + seq_employee_SEQ.NEXTVAL,
             '주경철',
             '1111',
             '01066882334',
             4);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (30,
             '서울특별시 용산구',
             '유엔빌리지길 01',
             'SupervisorKoo',
             'kitri.com',
             '10100103' + seq_employee_SEQ.NEXTVAL,
             '구은화',
             '1111',
             '01066122334',
             4);

UPDATE employee
   SET emp_status = 0;
   
COMMIT;

INSERT INTO department (dep_id, dep_name)
     VALUES (40, 'HR');

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (40,
             '서울특별시 마포구',
             '연남로 01',
             'ManagerHYJ',
             'kitri.com',
             '40990103' + seq_employee_SEQ.NEXTVAL,
             '한윤정',
             '1111',
             '01012322334',
             1);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (40,
             '서울특별시 마포구',
             '연남로 02',
             'DirectorLYG',
             'kitri.com',
             '40990103' + seq_employee_SEQ.NEXTVAL,
             '이영경',
             '1111',
             '01012562334',
             2);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (40,
             '서울특별시 마포구',
             '연남로 03',
             'CheifLYJ',
             'kitri.com',
             '40990103' + seq_employee_SEQ.NEXTVAL,
             '임영주',
             '1111',
             '01044562334',
             3);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (40,
             '서울특별시 마포구',
             '연남로 04',
             'CheifMHS',
             'kitri.com',
             '40990103' + seq_employee_SEQ.NEXTVAL,
             '문학수',
             '1111',
             '01044566334',
             3);

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (40,
             '서울특별시 마포구',
             '연남로 05',
             'SupervisorKYH',
             'kitri.com',
             '40990103' + seq_employee_SEQ.NEXTVAL,
             '김윤호',
             '1111',
             '01047766334',
             4);
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (40,
             '서울특별시 마포구',
             '연남로 06',
             'SupervisorRDC',
             'kitri.com',
             '40990103' + seq_employee_SEQ.NEXTVAL,
             '라동철',
             '1111',
             '01047769934',
             4);
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (40,
             '서울특별시 마포구',
             '연남로 07',
             'SupervisorHY',
             'kitri.com',
             '40100103' + seq_employee_SEQ.NEXTVAL,
             '허엽',
             '1111',
             '01047700934',
             4);
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (40,
             '서울특별시 마포구',
             '연남로 08',
             'AssistantKDG',
             'kitri.com',
             '40100103' + seq_employee_SEQ.NEXTVAL,
             '김동근',
             '1111',
             '01047711934',
             5);
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (40,
             '서울특별시 마포구',
             '연남로 09',
             'AssistantJCS',
             'kitri.com',
             '40100103' + seq_employee_SEQ.NEXTVAL,
             '정충신',
             '1111',
             '01022711934',
             5);
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (40,
             '서울특별시 마포구',
             '연남로 10',
             'AssistantAMH',
             'kitri.com',
             '40100103' + seq_employee_SEQ.NEXTVAL,
             '안미현',
             '1111',
             '01027611934',
             5);
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (40,
             '서울특별시 마포구',
             '연남로 11',
             'AssistantAMH',
             'kitri.com',
             '40150103' + seq_employee_SEQ.NEXTVAL,
             '조정진',
             '1111',
             '01027611988',
             5);

Update employee
set per_flag = 3;

Update employee
set per_flag = 0
where grade_id = 0;

Update employee
set per_flag = 1
where dep_id = 20;


Update employee
set per_flag = 2
where dep_id = 40;

commit;

INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (10,
             '서울특별시 마포구',
             '연남로 12',
             'AssistantKAR',
             'kitri.com',
             '10150103' + seq_employee_SEQ.NEXTVAL,
             '곽아람',
             '1111',
             '01027612288',
             5);
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (10,
             '서울특별시 마포구',
             '연남로 12',
             'AssistantLSM',
             'kitri.com',
             '10150103' + seq_employee_SEQ.NEXTVAL,
             '이선민',
             '1111',
             '01020012288',
             5);
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (10,
             '서울특별시 마포구',
             '연남로 13',
             'AssistantHJH',
             'kitri.com',
             '10150103' + seq_employee_SEQ.NEXTVAL,
             '홍준호',
             '1111',
             '01020012288',
             5);	
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (10,
             '서울특별시 마포구',
             '연남로 13',
             'AssistantYHS',
             'kitri.com',
             '10150103' + seq_employee_SEQ.NEXTVAL,
             '염호상',
             '1111',
             '01020054288',
             5);	
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (20,
             '서울특별시 마포구',
             '연남로 14',
             'AssistantSKS',
             'kitri.com',
             '20150103' + seq_employee_SEQ.NEXTVAL,
             '심규선',
             '1111',
             '01025654288',
             5);	
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (20,
             '서울특별시 마포구',
             '연남로 15',
             'AssistantLMH',
             'kitri.com',
             '20150103' + seq_employee_SEQ.NEXTVAL,
             '이목희',
             '1111',
             '01025699288',
             5);	
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (20,
             '서울특별시 마포구',
             '연남로 15',
             'AssistantKYH',
             'kitri.com',
             '20150103' + seq_employee_SEQ.NEXTVAL,
             '김윤호',
             '1111',
             '01067699288',
             5);	
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (20,
             '서울특별시 마포구',
             '연남로 16',
             'AssistantJYK',
             'kitri.com',
             '20150103' + seq_employee_SEQ.NEXTVAL,
             '전영기',
             '1111',
             '01067699448',
             5);
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (30,
             '서울특별시 마포구',
             '연남로 17',
             'AssistantJSJ',
             'kitri.com',
             '30150103' + seq_employee_SEQ.NEXTVAL,
             '조석장',
             '1111',
             '01067692248',
             5);	
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (30,
             '서울특별시 마포구',
             '연남로 17',
             'AssistantKDH',
             'kitri.com',
             '30150103' + seq_employee_SEQ.NEXTVAL,
             '고두현',
             '1111',
             '01067622248',
             5);
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (30,
             '서울특별시 마포구',
             '연남로 17',
             'AssistantJSY',
             'kitri.com',
             '30150103' + seq_employee_SEQ.NEXTVAL,
             '정승양',
             '1111',
             '01067666248',
             5);
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (30,
             '서울특별시 마포구',
             '연남로 19',
             'AssistantSHD',
             'kitri.com',
             '30150103' + seq_employee_SEQ.NEXTVAL,
             '서화동',
             '1111',
             '01067556248',
             5);	
INSERT INTO employee (dep_id,
                      emp_addr1,
                      emp_addr2,
                      emp_email1,
                      emp_email2,
                      emp_id,
                      emp_name,
                      emp_pw,
                      emp_tel,
                      grade_id)
     VALUES (30,
             '서울특별시 마포구',
             '연남로 20',
             'AssistantKDH',
             'kitri.com',
             '30150103' + seq_employee_SEQ.NEXTVAL,
             '고두현',
             '1111',
             '010622356248',
             5);	
Update employee
set per_flag = 3;

Update employee
set per_flag = 0
where grade_id = 0;

Update employee
set per_flag = 1
where dep_id = 20;


Update employee
set per_flag = 2
where dep_id = 40;

commit;	

Insert into doc_type(doc_type_id,doc_type_name)
values(1,'기안서');
Insert into doc_type(doc_type_id,doc_type_name)
values(2,'품의서');
Insert into doc_type(doc_type_id,doc_type_name)
values(3,'지출결의서');
Insert into doc_type(doc_type_id,doc_type_name)
values(4,'출장신청서');
Insert into doc_type(doc_type_id,doc_type_name)
values(5,'출장보고서');
Insert into doc_type(doc_type_id,doc_type_name)
values(6,'휴가신청서');
Insert into doc_type(doc_type_id,doc_type_name)
values(7,'업무일지');

COMMIT;