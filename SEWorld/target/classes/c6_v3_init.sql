-- 180821_c6_init.sql


---------------------- [API data] ----------------------
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
    fax VARCHAR2(30 BYTE),
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


-- 전시정보 뷰
CREATE VIEW c6_exbtinfo_view AS
SELECT exhibitionTitleKor, exhibitionTitleEng, openingTerm, firstOpeningYear,
       openingCountry, openingCity, exhibitionHall,
       sponsor, createdDate, lastUpdatedDate, dataOffer
FROM c6_exbtinfo
WITH READ ONLY;


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


----------------------- [INSERT] -----------------------
-- c6_regions
INSERT INTO c6_regions VALUES (1, 'Europe');
INSERT INTO c6_regions VALUES (2, 'Middle East');
INSERT INTO c6_regions VALUES (3, 'Africa');
INSERT INTO c6_regions VALUES (4, 'Oceania');
INSERT INTO c6_regions VALUES (5, 'Asia');
INSERT INTO c6_regions VALUES (6, 'North America');
INSERT INTO c6_regions VALUES (7, 'Latin America');


-- c6_countries
INSERT INTO c6_countries VALUES ('GT', '과테말라', 6);
INSERT INTO c6_countries VALUES ('GR', '그리스', 1);
INSERT INTO c6_countries VALUES ('NG', '나이지리아', 3);
INSERT INTO c6_countries VALUES ('ZA', '남아프리카 공화국', 3);
INSERT INTO c6_countries VALUES ('NL', '네덜란드', 1);
INSERT INTO c6_countries VALUES ('NZ', '뉴질랜드', 4);
INSERT INTO c6_countries VALUES ('TW', '대만 (타이완)', 5);
INSERT INTO c6_countries VALUES ('DK', '덴마크', 1);
INSERT INTO c6_countries VALUES ('DO', '도미니카 공화국', 6);
INSERT INTO c6_countries VALUES ('DE', '독일', 1);
INSERT INTO c6_countries VALUES ('RU', '러시아', 1);
INSERT INTO c6_countries VALUES ('RB', '레바논', 2);
INSERT INTO c6_countries VALUES ('RO', '루마니아', 1);
INSERT INTO c6_countries VALUES ('MY', '말레이시아', 5);
INSERT INTO c6_countries VALUES ('MX', '멕시코', 7);
INSERT INTO c6_countries VALUES ('MA', '모로코', 3);
INSERT INTO c6_countries VALUES ('MN', '몽골', 5);
INSERT INTO c6_countries VALUES ('US', '미국', 6);
INSERT INTO c6_countries VALUES ('MM', '미얀마', 5);
INSERT INTO c6_countries VALUES ('BD', '방글라데시', 5);
INSERT INTO c6_countries VALUES ('VE', '베네수엘라', 7);
INSERT INTO c6_countries VALUES ('VN', '베트남', 5);
INSERT INTO c6_countries VALUES ('BE', '벨기에', 1);
INSERT INTO c6_countries VALUES ('BG', '불가리아', 1);
INSERT INTO c6_countries VALUES ('BR', '브라질', 7);
INSERT INTO c6_countries VALUES ('RS', '세르비아', 1);
INSERT INTO c6_countries VALUES ('LK', '스리랑카', 5);
INSERT INTO c6_countries VALUES ('SE', '스웨덴', 1);
INSERT INTO c6_countries VALUES ('CH', '스위스', 1);
INSERT INTO c6_countries VALUES ('ES', '스페인', 1);
INSERT INTO c6_countries VALUES ('SK', '슬로바키아', 1);
INSERT INTO c6_countries VALUES ('SG', '싱가포르', 5);
INSERT INTO c6_countries VALUES ('AE', '아랍에미리트', 2);
INSERT INTO c6_countries VALUES ('AR', '아르헨티나', 7);
INSERT INTO c6_countries VALUES ('DZ', '알제리', 3);
INSERT INTO c6_countries VALUES ('GB', '영국', 1);
INSERT INTO c6_countries VALUES ('OM', '오만', 2);
INSERT INTO c6_countries VALUES ('AU', '오스트레일리아', 4);
INSERT INTO c6_countries VALUES ('AT', '오스트리아', 1);
INSERT INTO c6_countries VALUES ('JO', '요르단', 2);
INSERT INTO c6_countries VALUES ('UZ', '우즈베키스탄', 5);
INSERT INTO c6_countries VALUES ('UA', '우크라이나', 1);
INSERT INTO c6_countries VALUES ('IR', '이란', 2);
INSERT INTO c6_countries VALUES ('IL', '이스라엘', 2);
INSERT INTO c6_countries VALUES ('EG', '이집트', 2);
INSERT INTO c6_countries VALUES ('IT', '이탈리아', 1);
INSERT INTO c6_countries VALUES ('IN', '인도', 5);
INSERT INTO c6_countries VALUES ('ID', '인도네시아', 5);
INSERT INTO c6_countries VALUES ('JP', '일본', 5);
INSERT INTO c6_countries VALUES ('CN', '중국', 5);
INSERT INTO c6_countries VALUES ('CZ', '체코', 1);
INSERT INTO c6_countries VALUES ('CL', '칠레', 7);
INSERT INTO c6_countries VALUES ('KZ', '카자흐스탄', 5);
INSERT INTO c6_countries VALUES ('QA', '카타르', 2);
INSERT INTO c6_countries VALUES ('KH', '캄보디아', 5);
INSERT INTO c6_countries VALUES ('CA', '캐나다', 6);
INSERT INTO c6_countries VALUES ('KE', '케냐', 3);
INSERT INTO c6_countries VALUES ('CI', '코트디부아르', 3);
INSERT INTO c6_countries VALUES ('CO', '콜롬비아', 7);
INSERT INTO c6_countries VALUES ('KW', '쿠웨이트', 2);
INSERT INTO c6_countries VALUES ('HR', '크로아티아', 1);
INSERT INTO c6_countries VALUES ('TH', '타이', 5);
INSERT INTO c6_countries VALUES ('TR', '터키', 2);
INSERT INTO c6_countries VALUES ('TT', '트리니다드 토바고', 6);
INSERT INTO c6_countries VALUES ('PA', '파나마', 7);
INSERT INTO c6_countries VALUES ('PK', '파키스탄', 5);
INSERT INTO c6_countries VALUES ('PE', '페루', 7);
INSERT INTO c6_countries VALUES ('PL', '폴란드', 1);
INSERT INTO c6_countries VALUES ('FR', '프랑스', 1);
INSERT INTO c6_countries VALUES ('FI', '핀란드', 1);
INSERT INTO c6_countries VALUES ('PH', '필리핀', 5);
INSERT INTO c6_countries VALUES ('HU', '헝가리', 1);
INSERT INTO c6_countries VALUES ('HK', '홍콩', 5);
--------------------------------------------------------


-- 도시
CREATE TABLE c6_cities AS
SELECT TO_CHAR(ROWNUM, '0000')city_id, city_name, country_id
FROM (SELECT DISTINCT e.openingcity city_name, c.country_id country_id
      FROM c6_exbtinfo e JOIN c6_countries c
      ON e.openingcountry = c.country_name
      ORDER BY 1);
ALTER TABLE c6_cities ADD CONSTRAINT c6_cities_pk PRIMARY KEY(city_id);
ALTER TABLE c6_cities ADD UNIQUE (city_name);
ALTER TABLE c6_cities ADD CONSTRAINT c6_cities_fk FOREIGN KEY(country_id) REFERENCES c6_countries(country_id);

COMMENT ON TABLE c6_cities IS '도시';
COMMENT ON COLUMN c6_cities.city_id IS '도시 ID';
COMMENT ON COLUMN c6_cities.city_name IS '도시 이름';
COMMENT ON COLUMN c6_cities.country_id IS '국가 ID';


-- 전시정보
CREATE TABLE c6_exhibition AS
SELECT REPLACE(co.country_id || ci.city_id || '-E' || TO_CHAR(v.rnum, '00000'), ' ', '') exhibit_id,
       v.exhibitionTitleKor exhibition_title_kor, v.exhibitionTitleEng exhibition_title_eng, v.openingTerm opening_term,
       v.firstOpeningYear first_opening_year, v.openingCountry opening_country, v.openingCity opening_city,
       v.exhibitionHall exhibition_hall, v.sponsor sponsor, v.createdDate created_date, v.lastUpdatedDate updated_date, v.dataOffer data_offer
FROM (SELECT ROWNUM rnum, exhibitionTitleKor, exhibitionTitleEng, openingTerm, firstOpeningYear,
             openingCountry, openingCity, exhibitionHall, sponsor, createdDate, lastUpdatedDate, dataOffer
      FROM c6_exbtinfo) v
JOIN c6_countries co ON v.openingCountry = co.country_name
JOIN c6_cities ci ON v.openingCity = ci.city_name;
-- exhibit_id 규칙
-- country_id(2 BYTE) + city_id(4 BYTE) + '-E'(2 BYTE) + c6_exhibit_seq(5 BYTE)
-- (ex) 'KR1000-E00001'
ALTER TABLE c6_exhibition MODIFY (exhibit_id CHAR(13 BYTE));
ALTER TABLE c6_exhibition ADD CONSTRAINT c6_exhibition_pk PRIMARY KEY(exhibit_id);
ALTER TABLE c6_exhibition ADD CONSTRAINT c6_exhibition_fk1 FOREIGN KEY(opening_country) REFERENCES c6_countries(country_name);
ALTER TABLE c6_exhibition ADD CONSTRAINT c6_exhibition_fk2 FOREIGN KEY(opening_city) REFERENCES c6_cities(city_name);

COMMENT ON TABLE c6_exhibition IS '전시정보';
COMMENT ON COLUMN c6_exhibition.exhibit_id IS '전시정보 ID';
COMMENT ON COLUMN c6_exhibition.exhibition_title_kor IS '전시회명 한글';
COMMENT ON COLUMN c6_exhibition.exhibition_title_eng IS '전시회명 영문';
COMMENT ON COLUMN c6_exhibition.opening_term IS '개최기간';
COMMENT ON COLUMN c6_exhibition.first_opening_year IS '최초개최연도';
COMMENT ON COLUMN c6_exhibition.opening_country IS '개최국가';
COMMENT ON COLUMN c6_exhibition.opening_city IS '개최도시';
COMMENT ON COLUMN c6_exhibition.exhibition_hall IS '전시장';
COMMENT ON COLUMN c6_exhibition.sponsor IS '주최기관';
COMMENT ON COLUMN c6_exhibition.created_date IS '등록일';
COMMENT ON COLUMN c6_exhibition.updated_date IS '수정일';
COMMENT ON COLUMN c6_exhibition.data_offer IS '자료제공';


------------------------ [DROP] ------------------------
DROP TABLE c6_exhibition;
DROP TABLE c6_cities;
DROP TABLE c6_countries;
DROP TABLE c6_regions;

