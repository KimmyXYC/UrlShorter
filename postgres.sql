-- Adminer 4.7.7 PostgreSQL dump

DROP TABLE IF EXISTS shorter;
CREATE TABLE shorter (
  id SERIAL PRIMARY KEY,
  short VARCHAR(10) NOT NULL,
  url TEXT NOT NULL,
  time VARCHAR(12) NOT NULL,
  ip VARCHAR(128) NOT NULL
);

COMMENT ON COLUMN shorter.short IS '短链接';
COMMENT ON COLUMN shorter.url IS '原始链接';
COMMENT ON COLUMN shorter.time IS '缩短时间';
COMMENT ON COLUMN shorter.ip IS '用户IP';

CREATE UNIQUE INDEX ON shorter (short);

-- 2021-09-13 08:05:40
