-- 180823_c6_v4_drop_table.sql


DROP SEQUENCE c6_comment_reply_seq;
DROP SEQUENCE c6_board_reply_seq;
DROP SEQUENCE c6_board_file_seq;
DROP SEQUENCE c6_board_seq;
-- DROP SEQUENCE c6_ask_reply_seq;
-- DROP SEQUENCE c6_ask_file_seq;
-- DROP SEQUENCE c6_ask_seq;
DROP SEQUENCE c6_exhibition_seq;
DROP SEQUENCE c6_cities_seq;


DROP TABLE c6_board_reply cascade constraints purge;
DROP TABLE c6_board_file cascade constraints purge;
DROP TABLE c6_board cascade constraints purge;
-- DROP TABLE c6_ask_reply;
-- DROP TABLE c6_ask_file;
-- DROP TABLE c6_ask;
DROP TABLE c6_comment_reply_likes cascade constraints purge;
DROP TABLE c6_comment_reply cascade constraints purge;
DROP TABLE c6_comment_likes cascade constraints purge;
DROP TABLE c6_comment cascade constraints purge;
-- DROP TABLE c6_participating;
DROP TABLE c6_wishing cascade constraints purge;
DROP TABLE c6_member_profile cascade constraints purge;
DROP TABLE c6_member cascade constraints purge;
DROP TABLE c6_exhibition cascade constraints purge;
DROP TABLE c6_cities cascade constraints purge;
DROP TABLE c6_countries cascade constraints purge;
DROP TABLE c6_regions cascade constraints purge;
DROP TABLE c6_exbtinfo cascade constraints purge;


PURGE RECYCLEBIN;
