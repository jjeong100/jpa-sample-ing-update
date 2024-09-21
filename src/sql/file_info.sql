CREATE TABLE FILE_INFO
(
    ID              BIGSERIAL NOT NULL , 
    FILE_NAME       VARCHAR(400) NOT NULL ,
    FILE_EXT        VARCHAR(10) NULL ,
    FILE_SIZE       INTEGER NULL ,
    DIRECTORY       VARCHAR(1400) NULL ,
    FILE_TYPE       VARCHAR(1) NULL ,
    DEL_YN          VARCHAR(1) DEFAULT 'N' ,
    ACTION_YN       VARCHAR(1) DEFAULT 'N' ,
    UPDATE_DT       TIMESTAMP NULL
);

CREATE UNIQUE INDEX XPK_FILE_INFO ON FILE_INFO
(ID ASC);

ALTER TABLE FILE_INFO
    ADD CONSTRAINT  PK_FILE_INFO PRIMARY KEY (ID,FILE_NAME);
    
COMMENT ON TABLE FILE_INFO             IS '파일 정보' ;
COMMENT ON COLUMN FILE_INFO.ID         IS '아이디' ;
COMMENT ON COLUMN FILE_INFO.FILE_NAME  IS '파일 명' ;
COMMENT ON COLUMN FILE_INFO.FILE_EXT   IS '파일 확장자' ;
COMMENT ON COLUMN FILE_INFO.FILE_SIZE  IS '파일 사이즈' ;
COMMENT ON COLUMN FILE_INFO.DIRECTORY  IS '디렉터리(위치)' ;
COMMENT ON COLUMN FILE_INFO.FILE_TYPE  IS '파일타입(M:영화,I:이미지,..)' ;
COMMENT ON COLUMN FILE_INFO.DEL_YN     IS '삭제 여부' ;
COMMENT ON COLUMN FILE_INFO.ACTION_YN  IS '삭제 실행 여부' ;
COMMENT ON COLUMN FILE_INFO.UPDATE_DT  IS '수정일시' ;