CREATE TABLE billing (
    transaction_id       INTEGER NOT NULL,
    bill_date            DATE,
    username             VARCHAR(500),
    email                VARCHAR(500),
    order_total          FLOAT,
    payment_method       VARCHAR(500),
    user_id              INTEGER NOT NULL 
    
);

ALTER TABLE billing ADD CONSTRAINT billing_pk PRIMARY KEY ( transaction_id );

CREATE TABLE director (
    director_id          INTEGER NOT NULL,
    first_name           VARCHAR(500),
    last_name            VARCHAR(500),
    nationality          VARCHAR(500),
    director_description CLOB,
    date_of_birth        DATE
);

ALTER TABLE DIRECTOR ADD CONSTRAINT director_pk PRIMARY KEY ( director_id );

CREATE TABLE genre (
    genre_id       INTEGER NOT NULL,
    genre          VARCHAR2(300 CHAR)
);

ALTER TABLE genre ADD CONSTRAINT genre_pk PRIMARY KEY ( genre_id );

CREATE TABLE thelanguage (
    language_id    INTEGER,
    thelanguage       VARCHAR(500)
);

ALTER TABLE thelanguage ADD CONSTRAINT lang_pk PRIMARY KEY ( language_id ); 

CREATE TABLE movie (
    movie_id                        INTEGER NOT NULL,
    title                           VARCHAR(500),
    country_origin                  VARCHAR(500),
    runtime                         DATE,
    thecost                         FLOAT(5),
    video_format                    VARCHAR(500),
    relese_date                     DATE,
    rating                          FLOAT(1),
    movie_description               CLOB,
    genre_id                        INTEGER NOT NULL,
    director_id                     INTEGER NOT NULL,
    language_id                     INTEGER NOT NULL,
    company_id                      INTEGER NOT NULL
);

ALTER TABLE movie ADD CONSTRAINT movie_pk PRIMARY KEY ( movie_id );

CREATE TABLE productioncompany (
    company_id          INTEGER NOT NULL,
    company_name        VARCHAR(500),
    filmstyle_info      CLOB,
    movies              VARCHAR(500)
);

ALTER TABLE productioncompany ADD CONSTRAINT productioncompany_pk PRIMARY KEY ( company_id );

CREATE TABLE theUser (
    user_id                 INTEGER NOT NULL,
    username                VARCHAR(500),
    fname                   VARCHAR(500),
    lname                   VARCHAR(500),
    current_points          FLOAT,
    email                   VARCHAR(500),
    date_of_birth           DATE,
    passkey                 VARCHAR(500)

);

ALTER TABLE theUser ADD CONSTRAINT user_pk PRIMARY KEY ( user_id );

ALTER TABLE billing
    ADD CONSTRAINT billing_user_fk FOREIGN KEY (user_id )
        REFERENCES theUser ( user_id );

ALTER TABLE movie
    ADD CONSTRAINT movie_genre_fk FOREIGN KEY (genre_id )
        REFERENCES genre ( genre_id );

ALTER TABLE movie
    ADD CONSTRAINT movie_director_fk FOREIGN KEY (director_id )
        REFERENCES director ( director_id );

ALTER TABLE movie
    ADD CONSTRAINT movie_lang_fk FOREIGN KEY (language_id )
        REFERENCES theLanguage (language_id);

ALTER TABLE movie
    ADD CONSTRAINT movie_pc_fk FOREIGN KEY ( company_id )
        REFERENCES productioncompany ( company_id );

INSERT INTO thelanguage(LANGUAGE_ID, THELANGUAGE)
VALUES (1, 'English'); 

INSERT ALL
INTO thelanguage (LANGUAGE_ID, THELANGUAGE) VALUES (2, 'Spanish')
INTO thelanguage (LANGUAGE_ID, THELANGUAGE) VALUES (3, 'French')
INTO thelanguage (LANGUAGE_ID, THELANGUAGE) VALUES (4, 'Mandarin Chinese')
INTO thelanguage (LANGUAGE_ID, THELANGUAGE) VALUES (5, 'Hindi')
INTO thelanguage (LANGUAGE_ID, THELANGUAGE) VALUES (6, 'Japanese')
INTO thelanguage (LANGUAGE_ID, THELANGUAGE) VALUES (7, 'Korean')
INTO thelanguage (LANGUAGE_ID, THELANGUAGE) VALUES (8, 'German')
INTO thelanguage (LANGUAGE_ID, THELANGUAGE) VALUES (9, 'Italian')
INTO thelanguage (LANGUAGE_ID, THELANGUAGE) VALUES (10, 'Russian')
SELECT * from dual; 

INSERT INTO genre(GENRE_ID, GENRE)
VALUES  (1, 'Comedy');

INSERT ALL
INTO genre (genre_id, genre) VALUES (2, 'Adventure')
INTO genre (genre_id, genre) VALUES (3, 'Animation')
INTO genre (genre_id, genre) VALUES (4, 'Action')
INTO genre (genre_id, genre) VALUES (5, 'Crime')
INTO genre (genre_id, genre) VALUES (6, 'Drama')
INTO genre (genre_id, genre) VALUES (7, 'Fantasy')
INTO genre (genre_id, genre) VALUES (8, 'Horror')
INTO genre (genre_id, genre) VALUES (9, 'Mystery')
INTO genre (genre_id, genre) VALUES (10, 'Romance')
INTO genre (genre_id, genre) VALUES (11, 'Science Fiction')
INTO genre (genre_id, genre) VALUES (12, 'Thriller')
INTO genre (genre_id, genre) VALUES (13, 'Documentary')
INTO genre (genre_id, genre) VALUES (14, 'Family')
INTO genre (genre_id, genre) VALUES (15, 'Historical')
INTO genre (genre_id, genre) VALUES (16, 'Musical')
INTO genre (genre_id, genre) VALUES (17, 'War')
INTO genre (genre_id, genre) VALUES (18, 'Western')
SELECT * from dual; 

INSERT INTO director(DIRECTOR_ID, FIRST_NAME, LAST_NAME, NATIONALITY, DIRECTOR_DESCRIPTION, DATE_OF_BIRTH)
VALUES (0, 'John', 'Dars', 'USA', 'Visionary maestro of laughter, crafting comedic masterpieces that tickle the funny bone and warm the heart.', TO_DATE('1970-01-01', 'YYYY-MM-DD'));

INSERT ALL
INTO director(DIRECTOR_ID, FIRST_NAME, LAST_NAME, NATIONALITY, DIRECTOR_DESCRIPTION, DATE_OF_BIRTH) VALUES (2, 'Christopher', 'Nolan', 'British', 'Acclaimed filmmaker known for mind-bending narratives and innovative visuals.', TO_DATE('1970-07-30', 'YYYY-MM-DD')) 
INTO director(DIRECTOR_ID, FIRST_NAME, LAST_NAME, NATIONALITY, DIRECTOR_DESCRIPTION, DATE_OF_BIRTH) VALUES (3, 'Francis Ford', 'Coppola', 'American', 'Legendary director behind The Godfather trilogy.', TO_DATE('1939-04-07', 'YYYY-MM-DD'))
INTO director(DIRECTOR_ID, FIRST_NAME, LAST_NAME, NATIONALITY, DIRECTOR_DESCRIPTION, DATE_OF_BIRTH) VALUES (4, 'Quentin', 'Tarantino', 'American', 'Renowned for his unique storytelling and dialogue.', TO_DATE('1963-03-27', 'YYYY-MM-DD'))
INTO director(DIRECTOR_ID, FIRST_NAME, LAST_NAME, NATIONALITY, DIRECTOR_DESCRIPTION, DATE_OF_BIRTH) VALUES (5, 'Steven', 'Spielberg', 'American', 'Iconic filmmaker with a diverse range of blockbuster hits.', TO_DATE('1946-12-18', 'YYYY-MM-DD'))
INTO director(DIRECTOR_ID, FIRST_NAME, LAST_NAME, NATIONALITY, DIRECTOR_DESCRIPTION, DATE_OF_BIRTH) VALUES (6, 'Frank', 'Darabont', 'American', 'Known for his work on The Shawshank Redemption and The Green Mile.', TO_DATE('1959-01-28', 'YYYY-MM-DD'))
INTO director(DIRECTOR_ID, FIRST_NAME, LAST_NAME, NATIONALITY, DIRECTOR_DESCRIPTION, DATE_OF_BIRTH) VALUES (7, 'Peter', 'Jackson', 'New Zealander', 'Acclaimed director of The Lord of the Rings trilogy.', TO_DATE('1961-10-31', 'YYYY-MM-DD'))
INTO director(DIRECTOR_ID, FIRST_NAME, LAST_NAME, NATIONALITY, DIRECTOR_DESCRIPTION, DATE_OF_BIRTH) VALUES (8, 'David', 'Fincher', 'American', 'Known for his work on Se7en and Fight Club.', TO_DATE('1962-08-28', 'YYYY-MM-DD'))
INTO director(DIRECTOR_ID, FIRST_NAME, LAST_NAME, NATIONALITY, DIRECTOR_DESCRIPTION, DATE_OF_BIRTH) VALUES (9, 'Ridley', 'Scott', 'British', 'Renowned director with classics like Blade Runner and Gladiator.', TO_DATE('1937-11-30', 'YYYY-MM-DD'))
INTO director(DIRECTOR_ID, FIRST_NAME, LAST_NAME, NATIONALITY, DIRECTOR_DESCRIPTION, DATE_OF_BIRTH) VALUES (10, 'Stanley', 'Kubrick', 'American', 'Influential filmmaker with masterpieces like 2001: A Space Odyssey.', TO_DATE('1928-07-26', 'YYYY-MM-DD'))
INTO director(DIRECTOR_ID, FIRST_NAME, LAST_NAME, NATIONALITY, DIRECTOR_DESCRIPTION, DATE_OF_BIRTH) VALUES (11, 'Alfred', 'Hitchcock', 'British', 'Master of suspense with classics like Rear Window and Psycho.', TO_DATE('1899-08-13', 'YYYY-MM-DD'))
SELECT * FROM dual; 

INSERT INTO productioncompany(COMPANY_ID, COMPANY_NAME, FILMSTYLE_INFO, MOVIES)
VALUES (5, 'Cinematic Creations', 'Specializing in visually stunning and emotionally resonant films', 'Laugh Fest');

INSERT ALL
INTO productioncompany(COMPANY_ID, COMPANY_NAME, FILMSTYLE_INFO, MOVIES) VALUES (1, 'Warner Bros. Pictures', 'Major film studio known for producing a wide range of blockbuster movies.',
'The Shawshank Redemption (1994), The Dark Knight (2008), Inception (2010), Interstellar (2014), The Matrix (1999), The Lord of the Rings: The Fellowship of the Ring (2001), The Departed (2006), The Prestige (2006), The Dark Knight (2008), Inception (2010), The Social Network (2010), The Shape of Water (2017), Mad Max: Fury Road (2015), Dunkirk (2017), Gravity (2013), Blade Runner 2049 (2017), and many more')
INTO productioncompany(COMPANY_ID, COMPANY_NAME, FILMSTYLE_INFO, MOVIES) VALUES (2, 'Paramount Pictures', 'Major film studio with a rich history of producing iconic films.',
'The Godfather (1972), Forrest Gump (1994), Titanic (1997), Saving Private Ryan (1998), Gladiator (2000), Transformers (2007), Inglourious Basterds (2009), Interstellar (2014), Transformers: Dark of the Moon (2011), The Godfather Part III (1990), and many more')
INTO productioncompany(COMPANY_ID, COMPANY_NAME, FILMSTYLE_INFO, MOVIES) VALUES (3, 'Universal Pictures', 'One of the oldest film studios with a diverse range of film productions.',
'Jurassic Park (1993), E.T. the Extra-Terrestrial (1982), Jaws (1975), Schindler\''s List (1993), The Princess Bride (1987), The Mummy (1999), Gladiator (2000), The Dark Knight (2008), Inception (2010), Jurassic World (2015), Despicable Me (2010), Fast and Furious series, and many more') 
INTO productioncompany(COMPANY_ID, COMPANY_NAME, FILMSTYLE_INFO, MOVIES) VALUES (4, '20th Century Studios', 'Major film studio with a focus on producing successful and impactful films.',
'Deadpool (2016), Avatar (2009), The Sound of Music (1965), The Grand Budapest Hotel (2014), Star Wars: Episode IV - A New Hope (1977), The Martian (2015), Bohemian Rhapsody (2018), and many more')
INTO productioncompany(COMPANY_ID, COMPANY_NAME, FILMSTYLE_INFO, MOVIES) VALUES (6, 'Columbia Pictures', 'One of the major film studios known for a variety of film genres.',
'Men in Black (1997), Spider-Man (2002), The Social Network (2010), Whiplash (2014), The Dark Knight (2008), Inception (2010), Ghostbusters (1984), and many more')
SELECT * FROM dual; 

INSERT INTO movie(movie_id, title, country_origin, runtime, thecost, video_format, release_date, rating, movie_description, genre_id, director_id, language_id, company_id)
VALUES (2, 'Laugh Fest', 'USA', 144, 25.99, 'HD', TO_DATE('2023-11-15', 'YYYY-MM-DD'), 4.5, 'A hilarious comedy for all ages', 1, 0, 1, 5);

INSERT ALL
INTO movie(movie_id, title, country_origin, runtime, thecost, video_format, release_date, rating, movie_description, genre_id, director_id, language_id, company_id) VALUES 
(1, 'The Shawshank Redemption', 'USA', 142, 10.99, 'HD', TO_DATE('1994-09-23', 'YYYY-MM-DD'), 9.3, 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 6, 6, 1, 1)
INTO movie(movie_id, title, country_origin, runtime, thecost, video_format, release_date, rating, movie_description, genre_id, director_id, language_id, company_id) VALUES 
(4, 'The Godfather', 'USA', 175, 30.0, '70mm Film', TO_DATE('1972-03-24', 'YYYY-MM-DD'), 9.2, 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 5, 3, 1, 2)
INTO movie(movie_id, title, country_origin, runtime, thecost, video_format, release_date, rating, movie_description, genre_id, director_id, language_id, company_id) VALUES 
(3, 'Pulp Fiction', 'USA', 154, 28.0, '4K UHD', TO_DATE('1994-10-14', 'YYYY-MM-DD'), 8.9, 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 6, 4, 1, 5)
SELECT * FROM dual;

INSERT INTO theUser (USER_ID, USERNAME, FNAME, LNAME, CURRENT_POINTS, EMAIL, DATE_OF_BIRTH, PASSKEY) VALUES (1, 'john_doe', 'John', 'Doe', 150, 'john.doe@example.com', TO_DATE('1992-05-15', 'YYYY-MM-DD'), 'securepassword123');

INSERT ALL 
INTO theUser (USER_ID, USERNAME, FNAME, LNAME, CURRENT_POINTS, EMAIL, DATE_OF_BIRTH, PASSKEY) VALUES (2, 'mary_smith', 'Mary', 'Smith', 300, 'mary.smith@example.com', TO_DATE('1985-09-28', 'YYYY-MM-DD'), 'marys_password456') 
INTO theUser (USER_ID, USERNAME, FNAME, LNAME, CURRENT_POINTS, EMAIL, DATE_OF_BIRTH, PASSKEY) VALUES (3, 'sam_jones', 'Sam', 'Jones', 450, 'sam.jones@example.com', TO_DATE('1990-12-10', 'YYYY-MM-DD'), 'sam_secure789')
INTO theUser (USER_ID, USERNAME, FNAME, LNAME, CURRENT_POINTS, EMAIL, DATE_OF_BIRTH, PASSKEY) VALUES (4, 'emily_jackson', 'Emily', 'Jackson', 150, 'emily.jackson@example.com', TO_DATE('1995-07-18', 'YYYY-MM-DD'), 'emily_pass321')
INTO theUser (USER_ID, USERNAME, FNAME, LNAME, CURRENT_POINTS, EMAIL, DATE_OF_BIRTH, PASSKEY) VALUES (5, 'alex_wilson', 'Alex', 'Wilson', 0, 'alex.wilson@example.com', TO_DATE('1988-02-22', 'YYYY-MM-DD'), 'alex_password567')
INTO theUser (USER_ID, USERNAME, FNAME, LNAME, CURRENT_POINTS, EMAIL, DATE_OF_BIRTH, PASSKEY) VALUES (6, 'sara_miller', 'Sara', 'Miller', 150, 'sara.miller@example.com', TO_DATE('1993-10-05', 'YYYY-MM-DD'), 'sara_secure890')
SELECT * FROM dual;

INSERT INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD,  USER_ID)
VALUES (1, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 'john_doe', 'john.doe@example.com', 25.99, 'Credit Card', 1);

INSERT ALL
INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, USER_ID) VALUES (2, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 'mary_smith', 'mary.smith@example.com', 28.0, 'PayPal', 2)
INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, USER_ID) VALUES (3, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 'mary_smith', 'mary.smith@example.com', 25.99, 'PayPal', 2)
INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, USER_ID) VALUES (4, TO_DATE('2022-08-10', 'YYYY-MM-DD'), 'sam_jones', 'sam.jones@example.com', 10.99, 'Credit Card', 3)
INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, USER_ID) VALUES (5, TO_DATE('2022-08-10', 'YYYY-MM-DD'), 'sam_jones', 'sam.jones@example.com', 30.0, 'Credit Card', 3)
INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, USER_ID) VALUES (6, TO_DATE('2022-08-10', 'YYYY-MM-DD'), 'sam_jones', 'sam.jones@example.com', 28.0, 'Credit Card', 3)
INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, USER_ID) VALUES (7, TO_DATE('2022-08-10', 'YYYY-MM-DD'), 'sam_jones', 'sam.jones@example.com', 25.99, 'Credit Card', 3)
INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, USER_ID) VALUES (8, TO_DATE('2023-09-15', 'YYYY-MM-DD'), 'emily_jackson', 'emily.jackson@example.com', 25.99, 'PayPal', 4)
INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, USER_ID) VALUES (9, TO_DATE('2023-07-05', 'YYYY-MM-DD'), 'sara_miller', 'sara.miller@example.com', 30.0, 'PayPal', 6)
SELECT * FROM dual; 


ALTER TABLE billing DROP COLUMN MOVIES_PUR; 
ALTER TABLE MOVIE DROP COLUMN THECAST; 
ALTER TABLE THEUSER DROP COLUMN MOVIE_PURCHASED; 

CREATE TABLE billing_movies (
    transaction_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    PRIMARY KEY (transaction_id, user_id, movie_id),
    FOREIGN KEY (transaction_id) REFERENCES billing (TRANSACTION_ID),
    FOREIGN KEY (user_id) REFERENCES theUser (USER_ID),
    FOREIGN KEY (movie_id) REFERENCES movie (MOVIE_ID)
);


CREATE TABLE movie_actor (
    movie_id INTEGER NOT NULL,
    actor_name VARCHAR(500) NOT NULL,
    PRIMARY KEY (movie_id, actor_name),
    FOREIGN KEY (movie_id) REFERENCES movie (movie_id)
);

INSERT ALL
INTO movie_actor(movie_id, actor_name) VALUES (1, 'Tim Robbins')
INTO movie_actor(movie_id, actor_name) VALUES (1, 'Morgan Freeman')
INTO movie_actor(movie_id, actor_name) VALUES (4, 'Marlon Brando')
INTO movie_actor(movie_id, actor_name) VALUES (4, 'Al Pacino')
INTO movie_actor(movie_id, actor_name) VALUES (3, 'John Travolta')
INTO movie_actor(movie_id, actor_name) VALUES (3, 'Uma Thurman')
SELECT * FROM dual;

INSERT INTO billing_movies (transaction_id, user_id, movie_id) VALUES (1, 1, 2);
INSERT INTO billing_movies (transaction_id, user_id, movie_id) VALUES (2, 2, 3);
INSERT INTO billing_movies (transaction_id, user_id, movie_id) VALUES (3, 2, 2);
INSERT INTO billing_movies (transaction_id, user_id, movie_id) VALUES (4, 3, 1);
INSERT INTO billing_movies (transaction_id, user_id, movie_id) VALUES (5, 3, 4);
INSERT INTO billing_movies (transaction_id, user_id, movie_id) VALUES (6, 3, 3);
INSERT INTO billing_movies (transaction_id, user_id, movie_id) VALUES (7, 3, 2);
INSERT INTO billing_movies (transaction_id, user_id, movie_id) VALUES (8, 4, 2);
INSERT INTO billing_movies (transaction_id, user_id, movie_id) VALUES (9, 6, 4);

SELECT*FROM BILLING;
SELECT*FROM BILLING_MOVIES;
SELECT*FROM DIRECTOR;
SELECT*FROM GENRE;
SELECT*FROM MOVIE;
SELECT*FROM MOVIE_ACTOR;
SELECT*FROM PRODUCTIONCOMPANY;
SELECT*FROM THELANGUAGE;
SELECT*FROM THEUSER;

