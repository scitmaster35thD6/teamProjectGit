-- 180827_c6_v4_create_table.sql


CREATE TABLE c6_exbtinfo (
--  exhibitionInfo
    exhibitionTitleKor VARCHAR2(500 BYTE) NOT NULL,
    exhibitionTitleEng VARCHAR2(500 BYTE) NOT NULL,
    openingTerm VARCHAR2(19 BYTE) NOT NULL,
    openingCycle VARCHAR2(40 BYTE),
    firstOpeningYear VARCHAR2(9 BYTE), -- NOT NULL
    openingScale VARCHAR2(2000 BYTE),
    openingCountry VARCHAR2(30 BYTE) NOT NULL,
    openingCity VARCHAR2(30 BYTE),
    exhibitionHall VARCHAR2(500 BYTE) NOT NULL,

--  lastYearOpeningResult
    participatingNationCount NUMBER, -- NOT NULL
    openingCountryCount NUMBER, -- NOT NULL
    overseasCount NUMBER, -- NOT NULL
    openingCountryVisitorsCount NUMBER,
    mainParticipatingNations VARCHAR2(1500 BYTE),
    KOREACompanyWhether CHAR(1 BYTE),
    KOREACompanyParticipatingCount NUMBER,
    totalVisitorsCount NUMBER,
    overseasVisitorsCount NUMBER,
    exhibitionArea VARCHAR2(1500 BYTE),

--  sponsorInfo
    sponsor VARCHAR2(500 BYTE), -- NOT NULL
    personInCharge VARCHAR2(500 BYTE),
    address VARCHAR2(500 BYTE),
    telephone VARCHAR2(50 BYTE),
    fax VARCHAR2(50 BYTE),
    homepage VARCHAR2(500 BYTE),
    email VARCHAR2(500 BYTE),

--  reference
    createdDate DATE NOT NULL,
    lastUpdatedDate DATE NOT NULL,
    source VARCHAR2(500 BYTE),
    dataOffer VARCHAR2(241 BYTE),
    exhibitionItem VARCHAR2(2136 BYTE),
    remarks VARCHAR2(2000 BYTE)
);


-- 대륙
CREATE TABLE c6_regions (
    regionId NUMBER(1, 0) PRIMARY KEY,
    regionName VARCHAR2(40 BYTE) UNIQUE NOT NULL
);
COMMENT ON TABLE c6_regions IS '대륙';
COMMENT ON COLUMN c6_regions.regionId IS '대륙 ID';
COMMENT ON COLUMN c6_regions.regionName IS '대륙 이름';


-- 국가
CREATE TABLE c6_countries (
    countryId CHAR(2 BYTE) PRIMARY KEY,
    countryName VARCHAR2(40 BYTE) UNIQUE NOT NULL,
    regionId NUMBER(1, 0) NOT NULL,
    CONSTRAINT c6_countries_fk FOREIGN KEY(regionId)
    REFERENCES c6_regions(regionId)
);
COMMENT ON TABLE c6_countries IS '국가';
COMMENT ON COLUMN c6_countries.countryId IS '국가 ID';
COMMENT ON COLUMN c6_countries.countryName IS '국가 이름';
COMMENT ON COLUMN c6_countries.regionId IS '대륙 ID';


-- 도시
CREATE TABLE c6_cities (
    cityId NUMBER(4, 0) PRIMARY KEY,
    cityName VARCHAR2(40 BYTE) UNIQUE NOT NULL,
    countryId CHAR(2 BYTE) NOT NULL,
    CONSTRAINT c6_cities_fk FOREIGN KEY(countryId)
    REFERENCES c6_countries(countryId)
);
COMMENT ON TABLE c6_cities IS '도시';
COMMENT ON COLUMN c6_cities.cityId IS '도시 ID';
COMMENT ON COLUMN c6_cities.cityName IS '도시 이름';
COMMENT ON COLUMN c6_cities.countryId IS '국가 ID';


-- 전시정보
CREATE TABLE c6_exhibition (
    exhibitionId CHAR(13 BYTE) PRIMARY KEY,
    -- countryId(2 BYTE) + cityId(4 BYTE) + '-E'(2 BYTE) + c6_exhibition_seq(5 BYTE)
    -- (ex) 'KR1000-E00001'
    exhibitionTitleKor VARCHAR2(500 BYTE) NOT NULL,
    exhibitionTitleEng VARCHAR2(500 BYTE) NOT NULL,
    openingTerm VARCHAR2(19 BYTE) NOT NULL,
    firstOpeningYear VARCHAR2(9 BYTE),
    openingCountry VARCHAR2(30 BYTE) NOT NULL,
    openingCity VARCHAR2(30 BYTE),
    exhibitionHall VARCHAR2(500 BYTE) NOT NULL,
    sponsor VARCHAR2(500 BYTE),
    createdDate DATE NOT NULL,
    updatedDate DATE NOT NULL,
    dataOffer VARCHAR2(241 BYTE) NOT NULL,
    CONSTRAINT c6_exhibition_fk1 FOREIGN KEY(openingCountry)
    REFERENCES c6_countries(countryName),
    CONSTRAINT c6_exhibition_fk2 FOREIGN KEY(openingCity)
    REFERENCES c6_cities(cityName)
);
COMMENT ON TABLE c6_exhibition IS '전시정보';
COMMENT ON COLUMN c6_exhibition.exhibitionId IS '전시정보 ID';
COMMENT ON COLUMN c6_exhibition.exhibitionTitleKor IS '전시회명 한글';
COMMENT ON COLUMN c6_exhibition.exhibitionTitleEng IS '전시회명 영문';
COMMENT ON COLUMN c6_exhibition.openingTerm IS '개최기간';
COMMENT ON COLUMN c6_exhibition.firstOpeningYear IS '최초개최연도';
COMMENT ON COLUMN c6_exhibition.openingCountry IS '개최국가';
COMMENT ON COLUMN c6_exhibition.openingCity IS '개최도시';
COMMENT ON COLUMN c6_exhibition.exhibitionHall IS '전시장';
COMMENT ON COLUMN c6_exhibition.sponsor IS '주최기관';
COMMENT ON COLUMN c6_exhibition.createdDate IS '등록일';
COMMENT ON COLUMN c6_exhibition.updatedDate IS '수정일';
COMMENT ON COLUMN c6_exhibition.dataOffer IS '자료제공';


-- 회원
CREATE TABLE c6_member (
    memberId VARCHAR2(20 BYTE) PRIMARY KEY,
    memberPwd VARCHAR2(20 BYTE) NOT NULL,
    memberName VARCHAR2(40 BYTE) NOT NULL,
    memberBirth DATE,
    memberEmail VARCHAR2(40 BYTE),
    memberPhone VARCHAR2(20 BYTE), 
    regDate DATE DEFAULT SYSDATE NOT NULL
);
COMMENT ON TABLE c6_member IS '회원';
COMMENT ON COLUMN c6_member.memberId IS '회원 ID';
COMMENT ON COLUMN c6_member.memberPwd IS ' 회원 비밀번호';
COMMENT ON COLUMN c6_member.memberName IS '회원 이름';
COMMENT ON COLUMN c6_member.memberBirth IS '회원 생년월일';
COMMENT ON COLUMN c6_member.memberEmail IS '회원 이메일';
COMMENT ON COLUMN c6_member.memberPhone IS '회원 휴대전화';
COMMENT ON COLUMN c6_member.regDate IS '회원 등록날짜';


-- 가고싶어요
CREATE TABLE c6_wishing (
    memberId VARCHAR2(20 BYTE) NOT NULL,
    exhibitionId CHAR(13 BYTE) NOT NULL,
    createdDate DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT c6_wishing_fk1 FOREIGN KEY(memberId)
    REFERENCES c6_member(memberId),
    CONSTRAINT c6_wishing_fk2 FOREIGN KEY(exhibitionId)
    REFERENCES c6_exhibition(exhibitionId),
    CONSTRAINT c6_wishing_pk PRIMARY KEY(memberId, exhibitionId)
);
COMMENT ON TABLE c6_wishing IS '가고싶어요';
COMMENT ON COLUMN c6_wishing.memberId IS '회원 ID';
COMMENT ON COLUMN c6_wishing.exhibitionId IS '전시정보 ID';
COMMENT ON COLUMN c6_wishing.createdDate IS '등록일';


-- 참여하기
CREATE TABLE c6_participating (
    memberId VARCHAR2(20 BYTE) NOT NULL,
    exhibitionId CHAR(13 BYTE) NOT NULL,
    createdDate DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT c6_participating_fk1 FOREIGN KEY(memberId)
    REFERENCES c6_member(memberId),
    CONSTRAINT c6_participating_fk2 FOREIGN KEY(exhibitionId)
    REFERENCES c6_exhibition(exhibitionId),
    CONSTRAINT c6_participating_pk PRIMARY KEY(memberId, exhibitionId)
);
COMMENT ON TABLE c6_participating IS '참여하기';
COMMENT ON COLUMN c6_participating.memberId IS '회원 ID';
COMMENT ON COLUMN c6_participating.exhibitionId IS '전시정보 ID';
COMMENT ON COLUMN c6_participating.createdDate IS '등록일';


-- 평가하기
CREATE TABLE c6_comment (
    memberId VARCHAR2(20 BYTE) NOT NULL,
    exhibitionId CHAR(13 BYTE) NOT NULL,
    rating NUMBER(2, 1) NOT NULL,
    content VARCHAR2(2000 BYTE),
    createdDate DATE DEFAULT SYSDATE NOT NULL,
    updatedDate DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT c6_comment_fk1 FOREIGN KEY(memberId)
    REFERENCES c6_member(memberId),
    CONSTRAINT c6_comment_fk2 FOREIGN KEY(exhibitionId)
    REFERENCES c6_exhibition(exhibitionId),
    CONSTRAINT c6_comment_pk PRIMARY KEY(memberId, exhibitionId)
);
COMMENT ON TABLE c6_comment IS '평가하기';
COMMENT ON COLUMN c6_comment.memberId IS '회원 ID';
COMMENT ON COLUMN c6_comment.exhibitionId IS '전시정보 ID';
COMMENT ON COLUMN c6_comment.rating IS '평점';
COMMENT ON COLUMN c6_comment.content IS '코멘트';
COMMENT ON COLUMN c6_comment.createdDate IS '등록일';
COMMENT ON COLUMN c6_comment.updatedDate IS '수정일';


-- 문의하기
CREATE TABLE c6_ask (
    askId CHAR(19 BYTE) PRIMARY KEY,
    -- exhibitionId(13 BYTE) + '-A'(2 BYTE) + c6_ask_seq(4 BYTE)
    -- (ex) 'KR1000-E00001-A0001'
    memberId VARCHAR2(20 BYTE) NOT NULL,
    exhibitionId CHAR(13 BYTE) NOT NULL,
    title VARCHAR2(1000 BYTE) NOT NULL,
    content VARCHAR2(4000 BYTE) NOT NULL,
    createdDate DATE DEFAULT SYSDATE NOT NULL,
    updatedDate DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT c6_ask_fk1 FOREIGN KEY(memberId)
    REFERENCES c6_member(memberId),
    CONSTRAINT c6_ask_fk2 FOREIGN KEY(exhibitionId)
    REFERENCES c6_exhibition(exhibitionId)
);
COMMENT ON TABLE c6_ask IS '문의하기';
COMMENT ON COLUMN c6_ask.askId IS '문의하기 ID';
COMMENT ON COLUMN c6_ask.memberId IS '회원 ID';
COMMENT ON COLUMN c6_ask.exhibitionId IS '전시정보 ID';
COMMENT ON COLUMN c6_ask.title IS '제목';
COMMENT ON COLUMN c6_ask.content IS '내용';
COMMENT ON COLUMN c6_ask.createdDate IS '등록일';
COMMENT ON COLUMN c6_ask.updatedDate IS '수정일';


-- 문의하기 첨부파일
CREATE TABLE c6_ask_file (
    askFileId CHAR(25 BYTE) PRIMARY KEY,
    -- askId(19 BYTE) + '-F'(2 BYTE) + c6_ask_file_seq(4 BYTE)
    -- (ex) 'KR1000-E00001-A0001-F0001'
    askId CHAR(19 BYTE) NOT NULL,
    ogFilename VARCHAR2(260 BYTE) NOT NULL,
    svFilename VARCHAR2(40 BYTE) NOT NULL,
    fileSize NUMBER,
    createdDate DATE DEFAULT SYSDATE NOT NULL,
    updatedDate DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT c6_ask_file_fk FOREIGN KEY(askId)
    REFERENCES c6_ask(askId)
);
COMMENT ON TABLE c6_ask_file IS '문의하기 첨부파일';
COMMENT ON COLUMN c6_ask_file.askFileId IS '문의하기 첨부파일 ID';
COMMENT ON COLUMN c6_ask_file.askId IS '문의하기 ID';
COMMENT ON COLUMN c6_ask_file.ogFilename IS '원본 파일이름';
COMMENT ON COLUMN c6_ask_file.svFilename IS '저장된 파일이름';
COMMENT ON COLUMN c6_ask_file.fileSize IS '파일 크기';
COMMENT ON COLUMN c6_ask_file.createdDate IS '등록일';
COMMENT ON COLUMN c6_ask_file.updatedDate IS '수정일';


-- 문의하기 댓글
CREATE TABLE c6_ask_reply (
    askReplyId CHAR(25 BYTE) PRIMARY KEY,
    -- askId(19 BYTE) + '-R'(2 BYTE) + c6_ask_reply_seq(4 BYTE)
    -- (ex) 'KR1000-E00001-A0001-R0001'
    askId CHAR(19 BYTE) NOT NULL,
    memberId VARCHAR2(20 BYTE) NOT NULL,
    content VARCHAR2(4000 BYTE) NOT NULL,
    createdDate DATE DEFAULT SYSDATE NOT NULL,
    updatedDate DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT c6_ask_reply_fk1 FOREIGN KEY(askId)
    REFERENCES c6_ask(askId),
    CONSTRAINT c6_ask_reply_fk2 FOREIGN KEY(memberId)
    REFERENCES c6_member(memberId)
);
COMMENT ON TABLE c6_ask_reply IS '문의하기 댓글';
COMMENT ON COLUMN c6_ask_reply.askReplyId IS '문의하기 댓글 ID';
COMMENT ON COLUMN c6_ask_reply.askId IS '문의하기 ID';
COMMENT ON COLUMN c6_ask_reply.memberId IS '회원 ID';
COMMENT ON COLUMN c6_ask_reply.content IS '내용';
COMMENT ON COLUMN c6_ask_reply.createdDate IS '등록일';
COMMENT ON COLUMN c6_ask_reply.updatedDate IS '수정일';


-- 게시판
CREATE TABLE c6_board (
    boardId CHAR(10 BYTE) PRIMARY KEY,
    -- 'B'(1 BYTE) + c6_board_seq(9 BYTE)
    -- (ex) 'B000000001'
    memberId VARCHAR2(20 BYTE) NOT NULL,
    category VARCHAR2(40 BYTE),
    title VARCHAR2(1000 BYTE) NOT NULL,
    content VARCHAR2(4000 BYTE) NOT NULL,
    createdDate DATE DEFAULT SYSDATE NOT NULL,
    updatedDate DATE DEFAULT SYSDATE NOT NULL,
    exhibitionId CHAR(13 BYTE),
    CONSTRAINT c6_board_fk1 FOREIGN KEY(memberId)
    REFERENCES c6_member(memberId),
    CONSTRAINT c6_board_fk2 FOREIGN KEY(exhibitionId)
    REFERENCES c6_exhibition(exhibitionId),
);
COMMENT ON TABLE c6_board IS '게시판';
COMMENT ON COLUMN c6_board.boardId IS '게시판 ID';
COMMENT ON COLUMN c6_board.memberId IS '회원 ID';
COMMENT ON COLUMN c6_board.category IS '게시판 범주';
COMMENT ON COLUMN c6_board.title IS '제목';
COMMENT ON COLUMN c6_board.content IS '내용';
COMMENT ON COLUMN c6_board.createdDate IS '등록일';
COMMENT ON COLUMN c6_board.updatedDate IS '수정일';
COMMENT ON COLUMN c6_board.exhibitionId IS '전시회 ID';


-- 게시판 첨부파일
CREATE TABLE c6_board_file (
    boardFileId CHAR(16 BYTE) PRIMARY KEY,
    -- boardId(10 BYTE) + '-F'(2 BYTE) + c6_board_file_seq(4 BYTE)
    -- (ex) 'B000000001-F0001'
    boardId CHAR(10 BYTE) NOT NULL,
    ogFilename VARCHAR2(260 BYTE) NOT NULL,
    svFilename VARCHAR2(40 BYTE) NOT NULL,
    fileSize NUMBER,
    createdDate DATE DEFAULT SYSDATE NOT NULL,
    updatedDate DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT c6_board_file_fk FOREIGN KEY(boardId)
    REFERENCES c6_board(boardId)
);
COMMENT ON TABLE c6_board_file IS '게시판 첨부파일';
COMMENT ON COLUMN c6_board_file.boardFileId IS '게시판 첨부파일 ID';
COMMENT ON COLUMN c6_board_file.boardId IS '게시판 ID';
COMMENT ON COLUMN c6_board_file.ogFilename IS '원본 파일이름';
COMMENT ON COLUMN c6_board_file.svFilename IS '저장된 파일이름';
COMMENT ON COLUMN c6_board_file.fileSize IS '파일 크기';
COMMENT ON COLUMN c6_board_file.createdDate IS '등록일';
COMMENT ON COLUMN c6_board_file.updatedDate IS '수정일';


-- 게시판 댓글
CREATE TABLE c6_board_reply (
    boardReplyId CHAR(16 BYTE) PRIMARY KEY,
    -- boardId(10 BYTE) + '-R'(2 BYTE) + c6_board_reply_seq(4 BYTE)
    -- (ex) 'B000000001-R0001'
    boardId CHAR(10 BYTE) NOT NULL,
    memberId VARCHAR2(20 BYTE) NOT NULL,
    content VARCHAR2(4000 BYTE) NOT NULL,
    createdDate DATE DEFAULT SYSDATE NOT NULL,
    updatedDate DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT c6_board_reply_fk1 FOREIGN KEY(boardId)
    REFERENCES c6_board(boardId),
    CONSTRAINT c6_board_reply_fk2 FOREIGN KEY(memberId)
    REFERENCES c6_member(memberId)
);
COMMENT ON TABLE c6_board_reply IS '게시판 댓글';
COMMENT ON COLUMN c6_board_reply.boardReplyId IS '게시판 댓글 ID';
COMMENT ON COLUMN c6_board_reply.boardId IS '게시판 ID';
COMMENT ON COLUMN c6_board_reply.memberId IS '회원 ID';
COMMENT ON COLUMN c6_board_reply.content IS '내용';
COMMENT ON COLUMN c6_board_reply.createdDate IS '등록일';
COMMENT ON COLUMN c6_board_reply.updatedDate IS '수정일';


CREATE SEQUENCE c6_cities_seq START WITH 1360 INCREMENT BY 1 MAXVALUE 9999;
CREATE SEQUENCE c6_exhibition_seq START WITH 15960 INCREMENT BY 1 MAXVALUE 99999;
CREATE SEQUENCE c6_ask_seq;
CREATE SEQUENCE c6_ask_file_seq;
CREATE SEQUENCE c6_ask_reply_seq;
CREATE SEQUENCE c6_board_seq;
CREATE SEQUENCE c6_board_file_seq;
CREATE SEQUENCE c6_board_reply_seq;
