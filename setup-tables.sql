CREATE TABLE Users (
  first varchar(20) DEFAULT NULL,
  second varchar(20) DEFAULT NULL,
  D_O_B date DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  username varchar(15) NOT NULL DEFAULT '',
  password varchar(100) DEFAULT NULL,
  creation date DEFAULT NULL,
  status varchar(100) DEFAULT NULL,
  level varchar(5) DEFAULT NULL,
  dis_pic varchar(100) DEFAULT NULL
);

ALTER TABLE Users
  ADD PRIMARY KEY (username);

CREATE TABLE Articles (
  article_id varchar(6) NOT NULL DEFAULT '',
  headline varchar(180) DEFAULT NULL,
  file_name mediumtext,
  author varchar(15) DEFAULT NULL,
  publish date DEFAULT NULL,
  tags varchar(50) DEFAULT NULL,
  comm_id varchar(5) DEFAULT NULL,
  tagline varchar(200) DEFAULT NULL,
  thumbnail varchar(100) DEFAULT NULL,
  is_validated char(1) DEFAULT NULL
);

ALTER TABLE Articles
  ADD PRIMARY KEY (article_id);

  CREATE TABLE Recent_Articles (
  tracker_id int(11) NOT NULL,
  article_id varchar(6) DEFAULT NULL
);

ALTER TABLE Recent_Articles
  ADD PRIMARY KEY (tracker_id),
  ADD KEY article_id (article_id);

ALTER TABLE Recent_Articles
  MODIFY tracker_id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

ALTER TABLE Recent_Articles
  ADD CONSTRAINT recent_articles_ibfk_1 FOREIGN KEY (article_id) REFERENCES Articles (article_id);