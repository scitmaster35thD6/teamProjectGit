
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
    participatingNationCount VARCHAR2(8 BYTE),
    openingCountryCount VARCHAR2(8 BYTE),
    overseasCount VARCHAR2(8 BYTE),
    openingCountryVisitorsCount VARCHAR2(8 BYTE),
    mainParticipatingNations VARCHAR2(1500 BYTE),
    KOREACompanyWhether VARCHAR2(1 BYTE),
    KOREACompanyParticipatingCount VARCHAR2(8 BYTE),
    totalVisitorsCount VARCHAR2(8 BYTE),
    overseasVisitorsCount VARCHAR2(8 BYTE),
    exhibitionArea VARCHAR2(1500 BYTE),

--  sponsorInfo
    sponsor VARCHAR2(500 BYTE) NOT NULL,
    personInCharge VARCHAR2(500 BYTE),
    address VARCHAR2(500 BYTE),
    telephone VARCHAR2(50 BYTE),
    fax VARCHAR2(30 BYTE),
    homepage VARCHAR2(500 BYTE),
    email VARCHAR2(500 BYTE),

--  reference
    createdDate VARCHAR2(19 BYTE) NOT NULL,
    lastUpdatedDate VARCHAR2(19 BYTE) NOT NULL,
    source VARCHAR2(500 BYTE),
    dataOffer VARCHAR2(241 BYTE) NOT NULL,
    exhibitionItem VARCHAR2(2000 BYTE),
    remarks VARCHAR2(2000 BYTE)

--  paging
--  pageNo
--  totalPageCount
--  numOfRows
);