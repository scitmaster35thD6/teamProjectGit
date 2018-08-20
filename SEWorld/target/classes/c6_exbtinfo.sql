-- c6_exbtinfo.sql


CREATE TABLE c6_exbtinfo (
--  exhibitionInfo
    exhibitionTitleKor VARCHAR2(500 BYTE) NOT NULL,
    exhibitionTitleEng VARCHAR2(500 BYTE) NOT NULL,
    openingTerm VARCHAR2(19 BYTE) NOT NULL,
    openingCycle VARCHAR2(40 BYTE),
    firstOpeningYear VARCHAR2(6 BYTE) NOT NULL,
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
    exhibitionItem VARCHAR2(2000 BYTE),
    remarks VARCHAR2(2000 BYTE)

--  paging
--  pageNo
--  totalPageCount
--  numOfRows
);


--
DROP TABLE c6_exbtinfo;


--
DELETE FROM c6_exbtinfo;
COMMIT;
