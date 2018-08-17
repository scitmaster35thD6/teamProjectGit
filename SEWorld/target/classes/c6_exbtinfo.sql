
CREATE TABLE c6_exbtinfo (
--  exhibitionInfo
    exhibitionTitleKor VARCHAR2(500 BYTE),
    exhibitionTitleEng VARCHAR2(500 BYTE),
    openingTerm VARCHAR2(1000 BYTE),
    openingCycle VARCHAR2(40 BYTE),
    firstOpeningYear VARCHAR2(6 BYTE),
    openingScale VARCHAR2(2000 BYTE),
    openingCountry VARCHAR2(30 BYTE),
    openingCity VARCHAR2(30 BYTE),
    exhibitionHall VARCHAR2(1000 BYTE),

--  lastYearOpeningResult
    participatingNationCount VARCHAR2(20 BYTE),
    openingCountryCount VARCHAR2(20 BYTE),
    overseasCount VARCHAR2(20 BYTE),
    openingCountryVisitorsCount VARCHAR2(20 BYTE),
    mainParticipatingNations VARCHAR2(1500 BYTE),
    KOREACompanyWhether VARCHAR2(10 BYTE),
    KOREACompanyParticipatingCount VARCHAR2(20 BYTE),
    totalVisitorsCount VARCHAR2(20 BYTE),
    overseasVisitorsCount VARCHAR2(20 BYTE),
    exhibitionArea VARCHAR2(1500 BYTE),

--  sponsorInfo
    sponsor VARCHAR2(500 BYTE),
    personInCharge VARCHAR2(1000 BYTE),
    address VARCHAR2(500 BYTE),
    telephone VARCHAR2(50 BYTE),
    fax VARCHAR2(50 BYTE),
    homepage VARCHAR2(500 BYTE),
    email VARCHAR2(500 BYTE),

--  reference
    createdDate VARCHAR2(30 BYTE),
    lastUpdatedDate VARCHAR2(30 BYTE),
    source VARCHAR2(500 BYTE),
    dataOffer VARCHAR2(500 BYTE),
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


--
purge recyclebin;
