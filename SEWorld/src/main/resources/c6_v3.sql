-- 180821_c6_v3.sql


-------------------- [CREATE TABLE] --------------------
-- 전시범주
CREATE TABLE c6_category (
	category_id NUMBER(4, 0) PRIMARY KEY,
	category_name VARCHAR2(40 BYTE) NOT NULL
);
COMMENT ON TABLE c6_category IS '전시범주';
COMMENT ON COLUMN c6_category.category_id IS '전시범주 ID';
COMMENT ON COLUMN c6_category.category_name IS '전시범주 이름';


-- 회원
CREATE TABLE c6_member (
	member_id VARCHAR2(20 BYTE) PRIMARY KEY,
	member_pwd VARCHAR2(20 BYTE) NOT NULL,
	member_name VARCHAR2(40 BYTE) NOT NULL,
	member_birth DATE,
	member_email VARCHAR2(40 BYTE),
	member_phone VARCHAR2(20 BYTE),	
	reg_date DATE DEFAULT SYSDATE NOT NULL
);
COMMENT ON TABLE c6_member IS '회원';
COMMENT ON COLUMN c6_member.member_id IS '회원 ID';
COMMENT ON COLUMN c6_member.member_pwd IS ' 회원 비밀번호';
COMMENT ON COLUMN c6_member.member_name IS '회원 이름';
COMMENT ON COLUMN c6_member.member_birth IS '회원 생년월일';
COMMENT ON COLUMN c6_member.member_email IS '회원 이메일';
COMMENT ON COLUMN c6_member.member_phone IS '회원 휴대전화';
COMMENT ON COLUMN c6_member.reg_date IS '회원 등록날짜';


-- 가고싶어요
CREATE TABLE c6_wishing (
	member_id VARCHAR2(20 BYTE) NOT NULL,
	exhibit_id CHAR(13 BYTE) NOT NULL,
	create_date DATE DEFAULT SYSDATE NOT NULL,
	CONSTRAINT c6_wishing_fk1 FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id),
	CONSTRAINT c6_wishing_fk2 FOREIGN KEY(exhibit_id)
	REFERENCES c6_exhibition(exhibit_id),
	CONSTRAINT c6_wishing_pk PRIMARY KEY(member_id, exhibit_id)
);
COMMENT ON TABLE c6_wishing IS '가고싶어요';
COMMENT ON COLUMN c6_wishing.member_id IS '회원 ID';
COMMENT ON COLUMN c6_wishing.exhibit_id IS '전시정보 ID';
COMMENT ON COLUMN c6_wishing.create_date IS '등록일';


-- 참여하기
CREATE TABLE c6_participating (
	member_id VARCHAR2(20 BYTE) NOT NULL,
	exhibit_id CHAR(13 BYTE) NOT NULL,
	create_date DATE DEFAULT SYSDATE NOT NULL,
	CONSTRAINT c6_participating_fk1 FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id),
	CONSTRAINT c6_participating_fk2 FOREIGN KEY(exhibit_id)
	REFERENCES c6_exhibition(exhibit_id),
	CONSTRAINT c6_participating_pk PRIMARY KEY(member_id, exhibit_id)
);
COMMENT ON TABLE c6_participating IS '참여하기';
COMMENT ON COLUMN c6_participating.member_id IS '회원 ID';
COMMENT ON COLUMN c6_participating.exhibit_id IS '전시정보 ID';
COMMENT ON COLUMN c6_participating.create_date IS '등록일';


-- 평가하기
CREATE TABLE c6_comment (
	member_id VARCHAR2(20 BYTE) NOT NULL,
	exhibit_id CHAR(13 BYTE) NOT NULL,
	rating NUMBER(2, 1) NOT NULL,
	content VARCHAR2(2000 BYTE),
	create_date DATE DEFAULT SYSDATE NOT NULL,
	update_date DATE DEFAULT SYSDATE NOT NULL,
	CONSTRAINT c6_comment_fk1 FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id),
	CONSTRAINT c6_comment_fk2 FOREIGN KEY(exhibit_id)
	REFERENCES c6_exhibition(exhibit_id),
	CONSTRAINT c6_comment_pk PRIMARY KEY(member_id, exhibit_id)
);
COMMENT ON TABLE c6_comment IS '평가하기';
COMMENT ON COLUMN c6_comment.member_id IS '회원 ID';
COMMENT ON COLUMN c6_comment.exhibit_id IS '전시정보 ID';
COMMENT ON COLUMN c6_comment.rating IS '평점';
COMMENT ON COLUMN c6_comment.content IS '코멘트';
COMMENT ON COLUMN c6_comment.create_date IS '등록일';
COMMENT ON COLUMN c6_comment.update_date IS '수정일';


-- 문의하기
CREATE TABLE c6_ask (
	ask_id CHAR(19 BYTE) PRIMARY KEY,
	-- exhibit_id(13 BYTE) + '-A'(2 BYTE) + c6_ask_seq(4 BYTE)
	-- (ex) 'KR1000-E00001-A0001'
	member_id VARCHAR2(20 BYTE) NOT NULL,
	exhibit_id CHAR(13 BYTE) NOT NULL,
	title VARCHAR2(1000 BYTE) NOT NULL,
	content VARCHAR2(4000 BYTE) NOT NULL,
	create_date DATE DEFAULT SYSDATE NOT NULL,
	update_date DATE DEFAULT SYSDATE NOT NULL,
	CONSTRAINT c6_ask_fk1 FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id),
	CONSTRAINT c6_ask_fk2 FOREIGN KEY(exhibit_id)
	REFERENCES c6_exhibition(exhibit_id)
);
COMMENT ON TABLE c6_ask IS '문의하기';
COMMENT ON COLUMN c6_ask.ask_id IS '문의하기 ID';
COMMENT ON COLUMN c6_ask.member_id IS '회원 ID';
COMMENT ON COLUMN c6_ask.exhibit_id IS '전시정보 ID';
COMMENT ON COLUMN c6_ask.title IS '제목';
COMMENT ON COLUMN c6_ask.content IS '내용';
COMMENT ON COLUMN c6_ask.create_date IS '등록일';
COMMENT ON COLUMN c6_ask.update_date IS '수정일';


-- 문의하기 첨부파일
CREATE TABLE c6_ask_file (
	ask_file_id CHAR(25 BYTE) PRIMARY KEY,
	-- ask_id(19 BYTE) + '-F'(2 BYTE) + c6_ask_file_seq(4 BYTE)
	-- (ex) 'KR1000-E00001-A0001-F0001'
	ask_id CHAR(19 BYTE) NOT NULL,
	og_filename VARCHAR2(260 BYTE) NOT NULL,
	sv_filename VARCHAR2(40 BYTE) NOT NULL,
	file_size NUMBER,
	create_date DATE DEFAULT SYSDATE NOT NULL,
	update_Date DATE DEFAULT SYSDATE NOT NULL,
	CONSTRAINT c6_ask_file_fk FOREIGN KEY(ask_id)
	REFERENCES c6_ask(ask_id)
);
COMMENT ON TABLE c6_ask_file IS '문의하기 첨부파일';
COMMENT ON COLUMN c6_ask_file.ask_file_id IS '문의하기 첨부파일 ID';
COMMENT ON COLUMN c6_ask_file.ask_id IS '문의하기 ID';
COMMENT ON COLUMN c6_ask_file.og_filename IS '원본 파일이름';
COMMENT ON COLUMN c6_ask_file.sv_filename IS '저장된 파일이름';
COMMENT ON COLUMN c6_ask_file.file_size IS '파일 크기';
COMMENT ON COLUMN c6_ask_file.create_date IS '등록일';
COMMENT ON COLUMN c6_ask_file.update_date IS '수정일';


-- 문의하기 댓글
CREATE TABLE c6_ask_reply (
	ask_reply_id CHAR(25 BYTE) PRIMARY KEY,
	-- ask_id(19 BYTE) + '-R'(2 BYTE) + c6_ask_reply_seq(4 BYTE)
	-- (ex) 'KR1000-E00001-A0001-R0001'
	ask_id CHAR(19 BYTE) NOT NULL,
	member_id VARCHAR2(20 BYTE) NOT NULL,
	content VARCHAR2(4000 BYTE) NOT NULL,
	create_date DATE DEFAULT SYSDATE NOT NULL,
	update_date DATE DEFAULT SYSDATE NOT NULL,
	CONSTRAINT c6_ask_reply_fk1 FOREIGN KEY(ask_id)
	REFERENCES c6_ask(ask_id),
	CONSTRAINT c6_ask_reply_fk2 FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id)
);
COMMENT ON TABLE c6_ask_reply IS '문의하기 댓글';
COMMENT ON COLUMN c6_ask_reply.ask_reply_id IS '문의하기 댓글 ID';
COMMENT ON COLUMN c6_ask_reply.ask_id IS '문의하기 ID';
COMMENT ON COLUMN c6_ask_reply.member_id IS '회원 ID';
COMMENT ON COLUMN c6_ask_reply.content IS '내용';
COMMENT ON COLUMN c6_ask_reply.create_date IS '등록일';
COMMENT ON COLUMN c6_ask_reply.update_date IS '수정일';


-- 게시판
CREATE TABLE c6_board (
	board_id CHAR(10 BYTE) PRIMARY KEY,
	-- 'B'(1 BYTE) + c6_board_seq(9 BYTE)
	-- (ex) 'B000000001'
	member_id VARCHAR2(20 BYTE) NOT NULL,
	category VARCHAR2(40 BYTE),
	title VARCHAR2(1000 BYTE) NOT NULL,
	content VARCHAR2(4000 BYTE) NOT NULL,
	create_date DATE DEFAULT SYSDATE NOT NULL,
	update_date DATE DEFAULT SYSDATE NOT NULL,
	CONSTRAINT c6_board_fk FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id)
);
COMMENT ON TABLE c6_board IS '게시판';
COMMENT ON COLUMN c6_board.board_id IS '게시판 ID';
COMMENT ON COLUMN c6_board.member_id IS '회원 ID';
COMMENT ON COLUMN c6_board.category IS '게시판 범주';
COMMENT ON COLUMN c6_board.title IS '제목';
COMMENT ON COLUMN c6_board.content IS '내용';
COMMENT ON COLUMN c6_board.create_date IS '등록일';
COMMENT ON COLUMN c6_board.update_date IS '수정일';


-- 게시판 첨부파일
CREATE TABLE c6_board_file (
    board_file_id CHAR(16 BYTE) PRIMARY KEY,
    -- board_id(10 BYTE) + '-F'(2 BYTE) + c6_board_file_seq(4 BYTE)
	-- (ex) 'B000000001-F0001'
	board_id CHAR(10 BYTE) NOT NULL,
	og_filename VARCHAR2(260 BYTE) NOT NULL,
	sv_filename VARCHAR2(40 BYTE) NOT NULL,
	file_size NUMBER,
	create_date DATE DEFAULT SYSDATE NOT NULL,
	update_Date DATE DEFAULT SYSDATE NOT NULL,
	CONSTRAINT c6_board_file_fk FOREIGN KEY(board_id)
	REFERENCES c6_board(board_id)
);
COMMENT ON TABLE c6_board_file IS '게시판 첨부파일';
COMMENT ON COLUMN c6_board_file.board_file_id IS '게시판 첨부파일 ID';
COMMENT ON COLUMN c6_board_file.board_id IS '게시판 ID';
COMMENT ON COLUMN c6_board_file.og_filename IS '원본 파일이름';
COMMENT ON COLUMN c6_board_file.sv_filename IS '저장된 파일이름';
COMMENT ON COLUMN c6_board_file.file_size IS '파일 크기';
COMMENT ON COLUMN c6_board_file.create_date IS '등록일';
COMMENT ON COLUMN c6_board_file.update_date IS '수정일';


-- 게시판 댓글
CREATE TABLE c6_board_reply (
	board_reply_id CHAR(16 BYTE) PRIMARY KEY,
	-- board_id(10 BYTE) + '-R'(2 BYTE) + c6_board_reply_seq(4 BYTE)
	-- (ex) 'B000000001-R0001'
	board_id CHAR(10 BYTE) NOT NULL,
	member_id VARCHAR2(20 BYTE) NOT NULL,
	content VARCHAR2(4000 BYTE) NOT NULL,
    create_date DATE DEFAULT SYSDATE NOT NULL,
	update_date DATE DEFAULT SYSDATE NOT NULL,
	CONSTRAINT c6_board_reply_fk1 FOREIGN KEY(board_id)
	REFERENCES c6_board(board_id),
	CONSTRAINT c6_board_reply_fk2 FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id)
);
COMMENT ON TABLE c6_board_reply IS '게시판 댓글';
COMMENT ON COLUMN c6_board_reply.board_reply_id IS '게시판 댓글 ID';
COMMENT ON COLUMN c6_board_reply.board_id IS '게시판 ID';
COMMENT ON COLUMN c6_board_reply.member_id IS '회원 ID';
COMMENT ON COLUMN c6_board_reply.content IS '내용';
COMMENT ON COLUMN c6_board_reply.create_date IS '등록일';
COMMENT ON COLUMN c6_board_reply.update_date IS '수정일';


CREATE SEQUENCE c6_ask_seq;
CREATE SEQUENCE c6_ask_file_seq;
CREATE SEQUENCE c6_ask_reply_seq;
CREATE SEQUENCE c6_board_seq;
CREATE SEQUENCE c6_board_file_seq;
CREATE SEQUENCE c6_board_reply_seq;


-- 팔로우 관계
CREATE TABLE c6_followship (
);


-- 일정 공유
CREATE TABLE c6_sharing (
);


--------------------- [DROP TABLE] ---------------------
DROP SEQUENCE c6_board_reply_seq;
DROP SEQUENCE c6_board_file_seq;
DROP SEQUENCE c6_board_seq;
DROP SEQUENCE c6_ask_reply_seq;
DROP SEQUENCE c6_ask_file_seq;
DROP SEQUENCE c6_ask_seq;


DROP TABLE c6_sharing;
DROP TABLE c6_followship;
DROP TABLE c6_board_reply;
DROP TABLE c6_board_file;
DROP TABLE c6_board;
DROP TABLE c6_ask_reply;
DROP TABLE c6_ask_file;
DROP TABLE c6_ask;
DROP TABLE c6_comment;
DROP TABLE c6_participating;
DROP TABLE c6_wishing;
DROP TABLE c6_member;
DROP TABLE c6_category;


PURGE RECYCLEBIN;


----------------------- [DELETE] -----------------------
DELETE c6_sharing;
DELETE c6_followship;
DELETE c6_board_reply;
DELETE c6_board;
DELETE c6_ask_reply;
DELETE c6_ask;
DELETE c6_comment;
DELETE c6_participating;
DELETE c6_wishing;
DELETE c6_member;
DELETE c6_exhibition;
DELETE c6_category;
DELETE c6_cities;
DELETE c6_countries;
DELETE c6_regions;


----------------------- [SELECT] -----------------------
SELECT COUNT(*)
FROM c6_exbtinfo;


SELECT *
FROM c6_exbtinfo
WHERE exhibitionItem LIKE '%소프트웨어%' OR exhibitionItem LIKE '%software%'
ORDER BY openingTerm;


SELECT *
FROM c6_exhibition;