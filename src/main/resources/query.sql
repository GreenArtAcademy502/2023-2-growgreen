CREATE DATABASE if not exists growgreen;

DROP TABLE if exists t_user;
DROP TABLE if exists t_plant;
DROP TABLE if exists t_todo;

CREATE TABLE `t_user` (
                          `iuser`	int unsigned auto_increment PRIMARY key,
                          `nm`	varchar(10)	NOT NULL,
                          `uid`	VARCHAR(10) NOT NULL UNIQUE,
                          `upw`	VARCHAR(255) NOT NULL,
                          created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
                          updated_at DATETIME ON UPDATE current_timestamp
);

CREATE TABLE `t_plant` (
                           `iplant`	int unsigned auto_increment PRIMARY key,
                           `iuser`	int UNSIGNED NOT NULL,
                           `nicknm`	VARCHAR(10)	NOT NULL,
                           `pic`	VARCHAR(2100),
                           `comment`	VARCHAR(1000),
                           created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
                           updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
                           FOREIGN KEY (iuser) REFERENCES t_user(iuser)
);


CREATE TABLE `t_todo` (
                          `itodo`	int unsigned AUTO_INCREMENT PRIMARY KEY,
                          `iuser`	int unsigned NOT NULL,
                          `iplant`	int unsigned NOT NULL,
                          `contents`	varchar(1000) not null,
                          `deadline_day`	date not null,
                          `deadline_time` time,
                          `finished_at` datetime,
                          `yn_finish`	tinyint(1) unsigned NOT NULL DEFAULT 0 CHECK(yn_finish IN (0, 1)),
                          `yn_del`	tinyint(1) unsigned	NOT NULL DEFAULT 0 CHECK(yn_del IN (0, 1)),
                          created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
                          updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
                          FOREIGN KEY (iplant) REFERENCES t_plant(iplant),
                          FOREIGN KEY (iuser) REFERENCES t_user(iuser)
);


