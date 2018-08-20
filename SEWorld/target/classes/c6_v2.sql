-- c6_v2.sql


-------------------- [CREATE TABLE] --------------------
-- 대륙
CREATE TABLE c6_regions (
	region_id NUMBER(1, 0) PRIMARY KEY,
	region_name VARCHAR2(40 BYTE) UNIQUE NOT NULL
);
COMMENT ON TABLE c6_regions IS '대륙';
COMMENT ON COLUMN c6_regions.region_id IS '대륙 ID';
COMMENT ON COLUMN c6_regions.region_name IS '대륙 이름';


-- 국가
CREATE TABLE c6_countries (
	country_id CHAR(2 BYTE) PRIMARY KEY,
	country_name VARCHAR2(40 BYTE) UNIQUE NOT NULL,
	region_id NUMBER(1, 0) NOT NULL,
	CONSTRAINT c6_countries_fk FOREIGN KEY(region_id)
	REFERENCES c6_regions(region_id)
);
COMMENT ON TABLE c6_countries IS '국가';
COMMENT ON COLUMN c6_countries.country_id IS '국가 ID';
COMMENT ON COLUMN c6_countries.country_name IS '국가 이름';
COMMENT ON COLUMN c6_countries.region_id IS '대륙 ID';


-- 도시
CREATE TABLE c6_cities (
	city_id NUMBER(4, 0) PRIMARY KEY,
	city_name VARCHAR2(40 BYTE) UNIQUE NOT NULL,
	country_id CHAR(2 BYTE) NOT NULL,
	CONSTRAINT c6_cities_fk FOREIGN KEY(country_id)
	REFERENCES c6_countries(country_id)
);
COMMENT ON TABLE c6_cities IS '도시';
COMMENT ON COLUMN c6_cities.city_id IS '도시 ID';
COMMENT ON COLUMN c6_cities.city_name IS '도시 이름';
COMMENT ON COLUMN c6_cities.country_id IS '국가 ID';


-- 전시범주
CREATE TABLE c6_category (
	category_id NUMBER(4, 0) PRIMARY KEY,
	category_name VARCHAR2(40 BYTE) NOT NULL
);
COMMENT ON TABLE c6_category IS '전시범주';
COMMENT ON COLUMN c6_category.category_id IS '전시범주 ID';
COMMENT ON COLUMN c6_category.category_name IS '전시범주 이름';


-- 전시정보
CREATE TABLE c6_exhibit (
	exhibit_id CHAR(13 BYTE) PRIMARY KEY,
	-- country_id(2 BYTE) + city_id(4 BYTE) + '-E'(2 BYTE) + c6_country_kr(5 BYTE)
	-- (ex) 'KR1000-E00001'
	exhibition_title_kor VARCHAR2(500 BYTE) NOT NULL,
	exhibition_title_eng VARCHAR2(500 BYTE) NOT NULL,
    opening_term VARCHAR2(19 BYTE) NOT NULL,
	first_opening_year NUMBER(4, 0) NOT NULL,
	opening_country VARCHAR2(30 BYTE) NOT NULL,
	opening_city VARCHAR2(30 BYTE),
	exhibition_hall VARCHAR2(500 BYTE) NOT NULL,
	sponsor VARCHAR2(500 BYTE) NOT NULL,
	created_date DATE NOT NULL,
	updated_date DATE NOT NULL,
	data_offer VARCHAR2(241 BYTE) NOT NULL,
	CONSTRAINT c6_exhibit_fk1 FOREIGN KEY(opening_country)
	REFERENCES c6_countries(country_name),
	CONSTRAINT c6_exhibit_fk2 FOREIGN KEY(opening_city)
	REFERENCES c6_cities(city_name)
);
COMMENT ON TABLE c6_exhibit IS '전시정보';
COMMENT ON COLUMN c6_exhibit.exhibit_id IS '전시정보 ID';
COMMENT ON COLUMN c6_exhibit.exhibition_title_kor IS '전시회명 한글';
COMMENT ON COLUMN c6_exhibit.exhibition_title_eng IS '전시회명 영문';
COMMENT ON COLUMN c6_exhibit.opening_term IS '개최기간';
COMMENT ON COLUMN c6_exhibit.first_opening_year IS '최초개최연도';
COMMENT ON COLUMN c6_exhibit.opening_country IS '개최국가';
COMMENT ON COLUMN c6_exhibit.opening_city IS '개최도시';
COMMENT ON COLUMN c6_exhibit.exhibition_hall IS '전시장';
COMMENT ON COLUMN c6_exhibit.sponsor IS '주최기관';
COMMENT ON COLUMN c6_exhibit.created_date IS '등록일';
COMMENT ON COLUMN c6_exhibit.updated_date IS '수정일';
COMMENT ON COLUMN c6_exhibit.data_offer IS '자료제공';


-- 전시정보 뷰
CREATE VIEW c6_exhibit_view AS
SELECT exhibitionTitleKor, exhibitionTitleEng, openingTerm, firstOpeningYear, openingCountry, openingCity, exhibitionHall,
       sponsor, createdDate, lastUpdatedDate, dataOffer
FROM c6_exbtinfo
WITH READ ONLY;


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
	REFERENCES c6_exhibit(exhibit_id),
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
	REFERENCES c6_exhibit(exhibit_id),
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
	REFERENCES c6_exhibit(exhibit_id),
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
	REFERENCES c6_exhibit(exhibit_id)
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
CREATE SEQUENCE c6_country_kr_seq; -- 국가별 시퀀스 생성


-- 팔로우 관계
CREATE TABLE c6_followship (
);


-- 일정 공유
CREATE TABLE c6_sharing (
);


--------------------- [DROP TABLE] ---------------------
DROP SEQUENCE c6_country_kr_seq;
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
DROP TABLE c6_exhibit;
DROP TABLE c6_category;
DROP TABLE c6_cities;
DROP TABLE c6_countries;
DROP TABLE c6_regions;


DROP VIEW c6_exhibit_view;


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
DELETE c6_exhibit;
DELETE c6_category;
DELETE c6_cities;
DELETE c6_countries;
DELETE c6_regions;


----------------------- [INSERT] -----------------------


----------------------- [SELECT] -----------------------
SELECT *
FROM c6_exbtinfo
WHERE exhibitionItem LIKE '%소프트웨어%' OR exhibitionItem LIKE '%software%';


SELECT DISTINCT openingcountry, openingcity
FROM c6_exbtinfo
ORDER BY 1;


PURGE RECYCLEBIN;