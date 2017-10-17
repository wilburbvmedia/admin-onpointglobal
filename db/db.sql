CREATE TABLE applications(
  id_application    bigint(9) NOT NULL AUTO_INCREMENT,
  name        varchar(100) NOT NULL,
  email       varchar(50),
  phone       int NOT NULL,
  subject     varchar(50),
  message     varchar(150),
  cv         varchar(150),
  domain      varchar(100),
  PRIMARY KEY (id_application)
)

CREATE TABLE jobs(
  id_job      bigint(9) NOT NULL AUTO_INCREMENT,
  date        varchar(50) NOT NULL,
  job_title   text,
  location    varchar(50),
  job_type    varchar(50),
  domain      varchar(100),
  description  text,
  PRIMARY KEY (id_job)
)