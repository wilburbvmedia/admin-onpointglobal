CREATE TABLE applications(
  id_application    bigint(9) NOT NULL AUTO_INCREMENT,
  name        varchar(128) NOT NULL,
  email       varchar(64),
  phone varchar(16),
  subject     varchar(64),
  message     varchar(128),
  cv         varchar(256),
  domain      varchar(128),
  PRIMARY KEY (id_application)
);

CREATE TABLE jobs(
  id_job      bigint(9) NOT NULL AUTO_INCREMENT,
  date        date NOT NULL,
  job_title   varchar(256),
  location    varchar(64),
  job_type    varchar(64),
  domain      varchar(128),
  description  longtext,
  PRIMARY KEY (id_job)
);