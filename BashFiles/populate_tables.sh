#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "yspatel/05182555@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
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

INSERT INTO productioncompany(COMPANY_ID, COMPANY_NAME, FILMSTYLE_INFO, MOVIES)
VALUES (5, 'Cinematic Creations', 'Specializing in visually stunning and emotionally resonant films', 'Laugh Fest');

INSERT ALL
INTO productioncompany(COMPANY_ID, COMPANY_NAME, FILMSTYLE_INFO, MOVIES) VALUES (1, 'Warner Bros. Pictures', 'Major film studio known for producing a wide range of blockbuster movies.',
'The Shawshank Redemption (1994), The Dark Knight (2008), Inception (2010), Interstellar (2014), The Matrix (1999), The Lord of the Rings: The Fellowship of the Ring (2001), The Departed (2006), The Prestige (2006), The Dark Knight (2008), Inception (2010), The Social Network (2010), The Shape of Water (2017), Mad Max: Fury Road (2015), Dunkirk (2017), Gravity (2013), Blade Runner 2049 (2017), and many more')
INTO productioncompany(COMPANY_ID, COMPANY_NAME, FILMSTYLE_INFO, MOVIES) VALUES (2, 'Paramount Pictures', 'Major film studio with a rich history of producing iconic films.',
'The Godfather (1972), Forrest Gump (1994), Titanic (1997), Saving Private Ryan (1998), Gladiator (2000), Transformers (2007), Inglourious Basterds (2009), Interstellar (2014), Transformers: Dark of the Moon (2011), The Godfather Part III (1990), and many more')
INTO productioncompany(COMPANY_ID, COMPANY_NAME, FILMSTYLE_INFO, MOVIES) VALUES (3, 'Universal Pictures', 'One of the oldest film studios with a diverse range of film productions.',
'Jurassic Park (1993), E.T. the Extra-Terrestrial (1982), Jaws (1975), Schindler\'s List (1993), The Princess Bride (1987), The Mummy (1999), Gladiator (2000), The Dark Knight (2008), Inception (2010), Jurassic World (2015), Despicable Me (2010), Fast and Furious series, and many more') 
INTO productioncompany(COMPANY_ID, COMPANY_NAME, FILMSTYLE_INFO, MOVIES) VALUES (4, '20th Century Studios', 'Major film studio with a focus on producing successful and impactful films.',
'Deadpool (2016), Avatar (2009), The Sound of Music (1965), The Grand Budapest Hotel (2014), Star Wars: Episode IV - A New Hope (1977), The Martian (2015), Bohemian Rhapsody (2018), and many more')
INTO productioncompany(COMPANY_ID, COMPANY_NAME, FILMSTYLE_INFO, MOVIES) VALUES (6, 'Columbia Pictures', 'One of the major film studios known for a variety of film genres.',
'Men in Black (1997), Spider-Man (2002), The Social Network (2010), Whiplash (2014), The Dark Knight (2008), Inception (2010), Ghostbusters (1984), and many more')

INSERT INTO movie(movie_id, title, thecast, country_origin, runtime, thecost, video_format, release_date, rating, movie_description, genre_id, director_id, language_id, company_id)
VALUES (2, 'Laugh Fest', 'Emma Watson, Tom Hanks', 'USA', 144, 200, 'HD', TO_DATE('2023-11-15', 'YYYY-MM-DD'), 4.5, 'A hilarious comedy for all ages', 1, 1, 1, 5);

INSERT ALL
INTO movie(movie_id, title, thecast, country_origin, runtime, thecost, video_format, release_date, rating, movie_description, genre_id, director_id, language_id, company_id) VALUES 
(1, 'The Shawshank Redemption', 'Tim Robbins, Morgan Freeman', 'USA', 142, 10.99, 'HD', TO_DATE('1994-09-23', 'YYYY-MM-DD'), 9.3, 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 6, 6, 1, 1)
INTO movie(movie_id, title, thecast, country_origin, runtime, thecost, video_format, release_date, rating, movie_description, genre_id, director_id, language_id, company_id) VALUES 
(4, 'The Godfather', 'Marlon Brando, Al Pacino', 'USA', 175, 30.0, '70mm Film', TO_DATE('1972-03-24', 'YYYY-MM-DD'), 9.2, 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 5, 3, 1, 2)
INTO movie(movie_id, title, thecast, country_origin, runtime, thecost, video_format, release_date, rating, movie_description, genre_id, director_id, language_id, company_id) VALUES 
(3, 'Pulp Fiction', 'John Travolta, Uma Thurman', 'USA', 154, 28.0, '4K UHD', TO_DATE('1994-10-14', 'YYYY-MM-DD'), 8.9, 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 6, 4, 1, 5) 

INSERT INTO theUser (USER_ID, USERNAME, FNAME, LNAME, CURRENT_POINTS, EMAIL, DATE_OF_BIRTH, MOVIE_PURCHASED, PASSKEY)
VALUES (1, 'john_doe', 'John', 'Doe', 150, 'john.doe@example.com', TO_DATE('1992-05-15', 'YYYY-MM-DD'), 'Laugh Fest', 'securepassword123');

INSERT ALL 
INTO theUser (USER_ID, USERNAME, FNAME, LNAME, CURRENT_POINTS, EMAIL, DATE_OF_BIRTH, MOVIE_PURCHASED, PASSKEY) VALUES (2, 'mary_smith', 'Mary', 'Smith', 300, 'mary.smith@example.com', TO_DATE('1985-09-28', 'YYYY-MM-DD'), 'Pulp Fiction, Laugh Fest', 'marys_password456') 
INTO theUser (USER_ID, USERNAME, FNAME, LNAME, CURRENT_POINTS, EMAIL, DATE_OF_BIRTH, MOVIE_PURCHASED, PASSKEY) VALUES (3, 'sam_jones', 'Sam', 'Jones', 450, 'sam.jones@example.com', TO_DATE('1990-12-10', 'YYYY-MM-DD'), 'The Shawshank Redemption, The Godfather, Pulp Fiction, Laugh Fest', 'sam_secure789')
INTO theUser (USER_ID, USERNAME, FNAME, LNAME, CURRENT_POINTS, EMAIL, DATE_OF_BIRTH, MOVIE_PURCHASED, PASSKEY) VALUES (4, 'emily_jackson', 'Emily', 'Jackson', 150, 'emily.jackson@example.com', TO_DATE('1995-07-18', 'YYYY-MM-DD'), 'Laugh Fest', 'emily_pass321')
INTO theUser (USER_ID, USERNAME, FNAME, LNAME, CURRENT_POINTS, EMAIL, DATE_OF_BIRTH, MOVIE_PURCHASED, PASSKEY) VALUES (5, 'alex_wilson', 'Alex', 'Wilson', 0, 'alex.wilson@example.com', TO_DATE('1988-02-22', 'YYYY-MM-DD'), '', 'alex_password567')
INTO theUser (USER_ID, USERNAME, FNAME, LNAME, CURRENT_POINTS, EMAIL, DATE_OF_BIRTH, MOVIE_PURCHASED, PASSKEY) VALUES (6, 'sara_miller', 'Sara', 'Miller', 150, 'sara.miller@example.com', TO_DATE('1993-10-05', 'YYYY-MM-DD'), 'The Godfather', 'sara_secure890') 

INSERT INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, MOVIE_IDS, USER_ID)
VALUES (1, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 'john_doe', 'john.doe@example.com', 25.99, 'Credit Card', 2, 1);

INSERT ALL
INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, MOVIE_IDS, USER_ID) VALUES (3, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 'mary_smith', 'mary.smith@example.com', 30.50, 'PayPal', '3,2', 2)
INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, MOVIE_IDS, USER_ID) VALUES (4, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 'sam_jones', 'sam.jones@example.com', 15.75, 'Credit Card', '1,4,3,2', 3)
INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, MOVIE_IDS, USER_ID) VALUES (5, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 'emily_jackson', 'emily.jackson@example.com', 20.25, 'PayPal', '2', 4)
INTO billing(TRANSACTION_ID, BILL_DATE, USERNAME, EMAIL, ORDER_TOTAL, PAYMENT_METHOD, MOVIE_IDS, USER_ID) VALUES (7, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 'sara_miller', 'sara.miller@example.com', 22.75, 'PayPal', '4', 6) 

exit;
EOF