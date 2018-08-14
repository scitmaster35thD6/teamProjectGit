-------------------- [CREATE TABLE] --------------------

-- 대륙
CREATE TABLE c6_regions (
	region_id NUMBER(1, 0) PRIMARY KEY,
	region_name VARCHAR2(40 BYTE) UNIQUE
);

-- 국가
CREATE TABLE c6_countries (
	country_id CHAR(2 BYTE) PRIMARY KEY,
	country_name VARCHAR2(40 BYTE) UNIQUE,
	region_id NUMBER(1, 0),
	CONSTRAINT c6_countries_fk FOREIGN KEY(region_id)
	REFERENCES c6_regions(region_id)
);

-- 도시
CREATE TABLE c6_cities (
	city_id NUMBER(4, 0) PRIMARY KEY,
	city_name VARCHAR2(40 BYTE) UNIQUE,
	country_id CHAR(2 BYTE),
	CONSTRAINT c6_cities_fk FOREIGN KEY(country_id)
	REFERENCES c6_countries(country_id)
);

-- 전시종류
CREATE TABLE c6_category (
	category_id NUMBER(4, 0) PRIMARY KEY,
	category_name VARCHAR2(40 BYTE) UNIQUE
);

-- 전시정보
CREATE TABLE c6_exhibit (
	exhibit_id CHAR(5 BYTE) PRIMARY KEY,
	title_kor VARCHAR2(100 BYTE),
	title_eng VARCHAR2(100 BYTE),
	day_opened DATE,
	day_closed DATE,
	category_name VARCHAR2(40 BYTE),
	opening_region VARCHAR2(40 BYTE),
	opening_country VARCHAR2(40 BYTE),
	opening_city VARCHAR2(40 BYTE),
	exhibit_hall VARCHAR2(40 BYTE),
	sponsor VARCHAR2(40 BYTE),
	source VARCHAR2(100 BYTE),
	created_date DATE,
	updated_date DATE,
	CONSTRAINT c6_exhibit_fk1 FOREIGN KEY(category_name)
	REFERENCES c6_category(category_name),
	CONSTRAINT c6_exhibit_fk2 FOREIGN KEY(opening_region)
	REFERENCES c6_regions(region_name),
	CONSTRAINT c6_exhibit_fk3 FOREIGN KEY(opening_country)
	REFERENCES c6_countries(country_name),
	CONSTRAINT c6_exhibit_fk4 FOREIGN KEY(opening_city)
	REFERENCES c6_cities(city_name)
);

-- 회원
CREATE TABLE c6_member (
	member_id VARCHAR2(20 BYTE) PRIMARY KEY,
	member_name VARCHAR2(40 BYTE) NOT NULL,
	member_pwd VARCHAR2(20 BYTE) NOT NULL
);

-- 가고싶어요
CREATE TABLE c6_wishing (
	member_id VARCHAR2(20 BYTE) NOT NULL,
	exhibit_id CHAR(5 BYTE) NOT NULL,
	create_date DATE,
	CONSTRAINT c6_wishing_fk1 FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id),
	CONSTRAINT c6_wishing_fk2 FOREIGN KEY(exhibit_id)
	REFERENCES c6_exhibit(exhibit_id),
	CONSTRAINT c6_wishing_pk PRIMARY KEY(member_id, exhibit_id)
);

-- 참여하기
CREATE TABLE c6_participating (
	member_id VARCHAR2(20 BYTE) NOT NULL,
	exhibit_id CHAR(5 BYTE) NOT NULL,
	create_date DATE,
	CONSTRAINT c6_participating_fk1 FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id),
	CONSTRAINT c6_participating_fk2 FOREIGN KEY(exhibit_id)
	REFERENCES c6_exhibit(exhibit_id),
	CONSTRAINT c6_participating_pk PRIMARY KEY(member_id, exhibit_id)
);

-- 평가하기
CREATE TABLE c6_comment (
	member_id VARCHAR2(20 BYTE) NOT NULL,
	exhibit_id CHAR(5 BYTE) NOT NULL,
	rating NUMBER(2, 1),
	content VARCHAR2(1000 BYTE),
	create_date DATE,
	update_date DATE,
	CONSTRAINT c6_comment_fk1 FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id),
	CONSTRAINT c6_comment_fk2 FOREIGN KEY(exhibit_id)
	REFERENCES c6_exhibit(exhibit_id),
	CONSTRAINT c6_comment_pk PRIMARY KEY(member_id, exhibit_id)
);

-- 문의하기
CREATE TABLE c6_ask (
	ask_id CHAR(10 BYTE) PRIMARY KEY,
	member_id VARCHAR2(20 BYTE) NOT NULL,
	exhibit_id CHAR(5 BYTE) NOT NULL,
	content VARCHAR2(1000 BYTE),
	create_date DATE,
	update_date DATE,
	CONSTRAINT c6_ask_fk1 FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id),
	CONSTRAINT c6_ask_fk2 FOREIGN KEY(exhibit_id)
	REFERENCES c6_exhibit(exhibit_id)
);

-- 문의하기 댓글
CREATE TABLE c6_ask_reply (
	ask_reply_id CHAR(15 BYTE) PRIMARY KEY,
	member_id VARCHAR2(20 BYTE) NOT NULL,
	exhibit_id CHAR(5 BYTE) NOT NULL,
	content VARCHAR2(1000 BYTE),
	create_date DATE,
	update_date DATE,
	CONSTRAINT c6_ask_reply_fk1 FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id),
	CONSTRAINT c6_ask_reply_fk2 FOREIGN KEY(exhibit_id)
	REFERENCES c6_exhibit(exhibit_id)
);

-- 게시판
CREATE TABLE c6_board (
	board_id CHAR(10 BYTE) PRIMARY KEY,
	member_id VARCHAR2(20 BYTE) NOT NULL,
	category VARCHAR2(40 BYTE),
	title VARCHAR2(100 BYTE),
	content VARCHAR2(4000 BYTE),
	create_date DATE,
	update_date DATE,
	CONSTRAINT c6_board_fk FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id)
);

-- 게시판 댓글
CREATE TABLE c6_board_reply (
	board_reply_id CHAR(15 BYTE) PRIMARY KEY,
	board_id CHAR(5 BYTE) NOT NULL,
	member_id VARCHAR2(20 BYTE) NOT NULL,
	content VARCHAR2(40 BYTE),
	CONSTRAINT c6_board_reply_fk1 FOREIGN KEY(board_id)
	REFERENCES c6_board(board_id),
	CONSTRAINT c6_board_reply_fk2 FOREIGN KEY(member_id)
	REFERENCES c6_member(member_id)
);

CREATE SEQUENCE c6_exhibit_seq;
CREATE SEQUENCE c6_ask_seq;
CREATE SEQUENCE c6_ask_reply_seq;
CREATE SEQUENCE c6_board_seq;
CREATE SEQUENCE c6_board_reply_seq;


-- 팔로우 관계
CREATE TABLE c6_followship (
);

-- 일정 공유
CREATE TABLE c6_sharing (
);



--------------------- [DROP TABLE] ---------------------
DROP TABLE c6_sharing;
DROP TABLE c6_followship;
DROP TABLE c6_board_reply;
DROP TABLE c6_board;
DROP TABLE c6_ask_reply;
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
