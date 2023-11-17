#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "yspatel/05182555@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
CREATE TABLE billing (
    transaction_id       INTEGER NOT NULL,
    bill_date            DATE,
    username             VARCHAR(500),
    email                VARCHAR(500),
    order_total          FLOAT,
    payment_method       VARCHAR(500),
    movie_ids            VARCHAR(500),
    user_id              INTEGER NOT NULL  
);

CREATE TABLE director (
    director_id          INTEGER NOT NULL,
    first_name           VARCHAR(500),
    last_name            VARCHAR(500),
    nationality          VARCHAR(500),
    director_description CLOB,
    date_of_birth        DATE
);

CREATE TABLE genre (
    genre_id       INTEGER NOT NULL,
    genre          VARCHAR2(300 CHAR)
);

CREATE TABLE thelanguage (
    language_id       INTEGER,
    thelanguage       VARCHAR(500)
);

CREATE TABLE movie (
    movie_id                        INTEGER NOT NULL,
    title                           VARCHAR(500),
    thecast                         CLOB,
    country_origin                  VARCHAR(500),
    runtime                         INTEGER NOT NULL,
    thecost                         FLOAT(5),
    video_format                    VARCHAR(500),
    release_date                    DATE,
    rating                          FLOAT(1),
    movie_description               CLOB,
    genre_id                        INTEGER NOT NULL,
    director_id                     INTEGER NOT NULL,
    language_id                     INTEGER NOT NULL,
    company_id                      INTEGER NOT NULL
);

CREATE TABLE productioncompany (
    company_id          INTEGER NOT NULL,
    company_name        VARCHAR(500),
    filmstyle_info      CLOB,
    movies              VARCHAR(500)
);

CREATE TABLE theUser (
    user_id                 INTEGER NOT NULL,
    username                VARCHAR(500),
    fname                   VARCHAR(500),
    lname                   VARCHAR(500),
    current_points          FLOAT,
    email                   VARCHAR(500),
    date_of_birth           DATE,
    movie_purchased         VARCHAR(500),
    passkey                 VARCHAR(500)
);


exit;