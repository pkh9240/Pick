

-- 회원정보
CREATE TABLE `USERS` (
	`USER_NO`   INTEGER      NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT  '회원일련번호', -- 회원일련번호
	`USER_NAME` VARCHAR(50)  NULL     COMMENT '회원이름', -- 회원이름
	`USER_PWD`  VARCHAR(50)  NOT NULL COMMENT '회원비밀번호', -- 회원비밀번호
	`USER_GEND` VARCHAR(20)  NOT NULL COMMENT '회원성별', -- 회원성별
	`USER_AGE`  VARCHAR(20)  NOT NULL COMMENT '회원나이', -- 회원나이
	`USER_MAIL` VARCHAR(40)  NOT NULL COMMENT '회원이메일', -- 회원이메일
	`USER_PHOT` VARCHAR(255) NULL     COMMENT '회원사진', -- 회원사진
	`USER_TYPE` VARCHAR(50)  NULL     COMMENT '회원유형' -- 회원유형
)
COMMENT '회원정보';
alter table USERS AUTO_INCREMENT=10000;
-- 회원정보

-- 댓글
CREATE TABLE `COMT` (
	`COMT_NO`   INTEGER      NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '댓글일련번호', -- 댓글일련번호
	`VOTE_NO`   INTEGER      NOT NULL COMMENT '투표일련번호', -- 투표일련번호
	`USER_NO`   INTEGER      NOT NULL COMMENT '회원일련번호', -- 회원일련번호
	`COMT_CONT` VARCHAR(255) NOT NULL COMMENT '댓글내용', -- 댓글내용
	`REG_DATE`  DATE         NOT NULL COMMENT '댓글작성일자' -- 댓글작성일자
)
COMMENT '댓글';
alter table COMT AUTO_INCREMENT=10000;



-- 투표권한
CREATE TABLE `VOTE_AUTH` (
	`AUTH_NO` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '투표권한일련번호', -- 투표권한일련번호
	`VOTE_NO` INTEGER NOT NULL COMMENT '투표일련번호', -- 투표일련번호
	`MALE`    CHAR(1) NOT NULL COMMENT '남자', -- 남자
	`F_MALE`  CHAR(1) NOT NULL COMMENT '여자', -- 여자
	`ONE`     CHAR(1) NOT NULL COMMENT '10대', -- 10대
	`TWO`     CHAR(1) NOT NULL COMMENT '20대', -- 20대
	`THRE`    CHAR(1) NOT NULL COMMENT '30대', -- 30대
	`FOUR`    CHAR(1) NOT NULL COMMENT '40대', -- 40대
	`FIVE`    CHAR(1) NOT NULL COMMENT '50대', -- 50대
	`SIX`     CHAR(1) NOT NULL COMMENT '60대' -- 60대
)
COMMENT '투표권한';
alter table VOTE_AUTH AUTO_INCREMENT=10000;


-- 관심사
CREATE TABLE `INTR` (
	`INTR_NO`   INTEGER      NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '관심사일련번호', -- 관심사일련번호
	`INTR_PHOT` VARCHAR(255) NOT NULL COMMENT '사진', -- 사진
	`INTR_CONT` VARCHAR(255) NOT NULL COMMENT '관심사' -- 관심사
)
COMMENT '관심사';
alter table INTR AUTO_INCREMENT=10000;


--  투표
CREATE TABLE `VOTE` (
	`VOTE_NO`   INTEGER      NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '투표일련번호', -- 투표일련번호
	`USER_NO`   INTEGER      NOT NULL COMMENT '회원일련번호', -- 회원일련번호
	`VOTE_CATG` VARCHAR(50)  NOT NULL COMMENT '카테고리', -- 카테고리
	`VOTE_TITL` VARCHAR(255) NOT NULL COMMENT '제목', -- 제목
	`VOTE_CONT` VARCHAR(255) NOT NULL COMMENT '내용', -- 내용
	`VOTE_HITS` INTEGER      NOT NULL COMMENT '조회수', -- 조회수
	`END_DATE`  DATE         NOT NULL COMMENT '종료일', -- 종료일
	`VOTE_TYPE` VARCHAR(50)  NOT NULL COMMENT '투표종류', -- 투표종류
	`VOTE_MAX`  INTEGER      NOT NULL COMMENT '선택가능개수' -- 선택가능개수
)
COMMENT ' 투표';
alter table VOTE AUTO_INCREMENT=10000;


-- 선택지
CREATE TABLE `CHOI` (
	`CHOI_NO`   INTEGER      NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '선택지일련번호', -- 선택지일련번호
	`VOTE_NO`   INTEGER      NOT NULL COMMENT '투표일련번호', -- 투표일련번호
	`CHOI_PHOT` VARCHAR(255) NOT NULL COMMENT '사진', -- 사진
	`CHOT_CONT` VARCHAR(255) NOT NULL COMMENT '글', -- 글
	`CHOT_CNT`  INTEGER      NOT NULL COMMENT '득표수' -- 득표수
)
COMMENT '선택지';
alter table CHOI AUTO_INCREMENT=10000;

-- 투표자
CREATE TABLE `USER_VOTE` (
	`USER_NO` INTEGER NOT NULL COMMENT '회원일련번호', -- 회원일련번호
	`VOTE_NO` INTEGER NOT NULL COMMENT '투표일련번호' -- 투표일련번호
)
COMMENT '투표자';

-- 투표자
ALTER TABLE `USER_VOTE`
	ADD CONSTRAINT `PK_USER_VOTE` -- 투표자 기본키
		PRIMARY KEY (
			`USER_NO`, -- 회원일련번호
			`VOTE_NO`  -- 투표일련번호
		);

-- 회원관심사
CREATE TABLE `USER_INTR` (
	`USER_NO` INTEGER NOT NULL COMMENT '회원일련번호', -- 회원일련번호
	`INTR_NO` INTEGER NOT NULL COMMENT '관심사일련번호' -- 관심사일련번호
)
COMMENT '회원관심사';

-- 회원관심사
ALTER TABLE `USER_INTR`
	ADD CONSTRAINT `PK_USER_INTR` -- 회원관심사 기본키
		PRIMARY KEY (
			`USER_NO`, -- 회원일련번호
			`INTR_NO`  -- 관심사일련번호
		);

-- 댓글
ALTER TABLE `COMT`
	ADD CONSTRAINT `FK_VOTE_TO_COMT` --  투표 -> 댓글
		FOREIGN KEY (
			`VOTE_NO` -- 투표일련번호
		)
		REFERENCES `VOTE` ( --  투표
			`VOTE_NO` -- 투표일련번호
		);

-- 댓글
ALTER TABLE `COMT`
	ADD CONSTRAINT `FK_USERS_TO_COMT` -- 회원정보 -> 댓글
		FOREIGN KEY (
			`USER_NO` -- 회원일련번호
		)
		REFERENCES `USERS` ( -- 회원정보
			`USER_NO` -- 회원일련번호
		);

-- 투표권한
ALTER TABLE `VOTE_AUTH`
	ADD CONSTRAINT `FK_VOTE_TO_VOTE_AUTH` --  투표 -> 투표권한
		FOREIGN KEY (
			`VOTE_NO` -- 투표일련번호
		)
		REFERENCES `VOTE` ( --  투표
			`VOTE_NO` -- 투표일련번호
		);

--  투표
ALTER TABLE `VOTE`
	ADD CONSTRAINT `FK_USERS_TO_VOTE` -- 회원정보 ->  투표
		FOREIGN KEY (
			`USER_NO` -- 회원일련번호
		)
		REFERENCES `USERS` ( -- 회원정보
			`USER_NO` -- 회원일련번호
		);

-- 선택지
ALTER TABLE `CHOI`
	ADD CONSTRAINT `FK_VOTE_TO_CHOI` --  투표 -> 선택지
		FOREIGN KEY (
			`VOTE_NO` -- 투표일련번호
		)
		REFERENCES `VOTE` ( --  투표
			`VOTE_NO` -- 투표일련번호
		);

-- 투표자
ALTER TABLE `USER_VOTE`
	ADD CONSTRAINT `FK_USERS_TO_USER_VOTE` -- 회원정보 -> 투표자
		FOREIGN KEY (
			`USER_NO` -- 회원일련번호
		)
		REFERENCES `USERS` ( -- 회원정보
			`USER_NO` -- 회원일련번호
		);

-- 투표자
ALTER TABLE `USER_VOTE`
	ADD CONSTRAINT `FK_VOTE_TO_USER_VOTE` --  투표 -> 투표자
		FOREIGN KEY (
			`VOTE_NO` -- 투표일련번호
		)
		REFERENCES `VOTE` ( --  투표
			`VOTE_NO` -- 투표일련번호
		);

-- 회원관심사
ALTER TABLE `USER_INTR`
	ADD CONSTRAINT `FK_USERS_TO_USER_INTR` -- 회원정보 -> 회원관심사
		FOREIGN KEY (
			`USER_NO` -- 회원일련번호
		)
		REFERENCES `USERS` ( -- 회원정보
			`USER_NO` -- 회원일련번호
		);

-- 회원관심사
ALTER TABLE `USER_INTR`
	ADD CONSTRAINT `FK_INTR_TO_USER_INTR` -- 관심사 -> 회원관심사
		FOREIGN KEY (
			`INTR_NO` -- 관심사일련번호
		)
		REFERENCES `INTR` ( -- 관심사
			`INTR_NO` -- 관심사일련번호
		);


INSERT 
INTO users (USER_NAME,USER_PWD,USER_GEND,USER_AGE,USER_MAIL,USER_PHOT,USER_TYPE)
VALUES ('박광희',1234,'male','20s','pkh0452@naver.com','../image/profile/defaultProfileImage.jpg','admin'); 


INSERT 
INTO users (USER_NAME,USER_PWD,USER_GEND,USER_AGE,USER_MAIL,USER_PHOT,USER_TYPE)
VALUES ('차병철',1234,'male','30s','bradcha85@naver.com','../images/profile/defaultProfileImage.jpg','user'); 


INSERT 
INTO users (USER_NAME,USER_PWD,USER_GEND,USER_AGE,USER_MAIL,USER_PHOT,USER_TYPE)
VALUES ('유수영',1234,'female','40s','sooyoung@naver.com','../images/profile/defaultProfileImage.jpg','user'); 


INSERT 
INTO users (USER_NAME,USER_PWD,USER_GEND,USER_AGE,USER_MAIL,USER_PHOT,USER_TYPE)
VALUES ('임다영',1234,'female','20s','imvely@naver.com','../images/profile/defaultProfileImage.jpg','user'); 



INSERT
INTO INTR(INTR_PHOT,INTR_CONT)
VALUES ('../image/interest/computer.jpg','COMPUTER');



INSERT
INTO INTR(INTR_PHOT,INTR_CONT)
VALUES ('../image/interest/food.jpg','FOOD');

INSERT
INTO INTR(INTR_PHOT,INTR_CONT)
VALUES ('../image/interest/drawing.jpg','DRAWING');

INSERT
INTO INTR(INTR_PHOT,INTR_CONT)
VALUES ('../image/interest/cosmetic.jpg','COSMETIC');

INSERT
INTO INTR(INTR_PHOT,INTR_CONT)
VALUES ('../image/interest/hair.jpg','HAIR');



INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10000,10000);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10000,10001);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10000,10002);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10000,10003);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10000,10004);

INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10001,10000);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10001,10001);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10001,10002);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10001,10003);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10001,10004);

INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10002,10000);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10002,10001);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10002,10002);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10002,10003);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10002,10004);

INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10003,10000);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10003,10001);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10003,10002);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10003,10003);
INSERT
INTO USER_INTR(USER_NO,INTR_NO) VALUES (10003,10004);
