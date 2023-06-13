Use db_beatlesTour1963
GO

CREATE TABLE tbl_tourDates (
	tourdate_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	tour_date VARCHAR(50) NOT NULL,
	tour_location VARCHAR(50) NOT NULL,
	tour_venue VARCHAR(50) NOT NULL
	);

CREATE TABLE tbl_recordingSession (
	recordingSession_id INT PRIMARY KEY NOT NULL IDENTITY (1000,1),
	recordingSession_date VARCHAR(50) NOT NULL,
	recordingSession_song VARCHAR(50) NOT NULL,
	recordingSession_type VARCHAR(50) NOT NULL
	);

INSERT INTO tbl_tourDates
	(tour_date, tour_location, tour_venue)
	VALUES
	('20 February 1963', 'Doncaster', 'Swimming Baths'),
	('4 March 1963','St. Helens	England','Plaza Ballroom'),
	('7 March 1963','Nottingham','Elizabethan Ballroom'),
	('8 March 1963','Harrogate','Royal Hall'),
	('13 March 1963',	'York',	'Rialto Theater'),
	('14 March 1963','Wolverhampton','Gaumont Theater'),
	('20 August 1963', 'Bournemouth',	'Gaumont'),
	('21 August 1963', 'Bournemouth',	'Gaumont'),
	('29 October 1963',	'Eskilstuna',	'Sporthallen')
;

INSERT INTO tbl_recordingSession
	(recording_date, recording_song, recording_type)
	VALUES
	('20 February 1963', 'Misery', 'Overdub Piano'),
	('20 February 1963', 'Baby It''s You', 'Overdub Piano, Celeste'),
	('13 March 1963', 'Thank You Little Girl', 'Harmonica Overdubs'),
	('14 March 1963', 'From Me to You', 'Editing'),
	('21 August 1963', '[Money] That''s What I Want)' , 'Editing'),
	('21 August 1963', 'You Really Got a Hold on Me', 'Editing'),
	('21 August 1963', 'Roll Over Beethoven', 'Editing'),
	('21 August 1963', 'It Won''t Be Long', 'Editing'),
	('21 August 1963', 'Devil in Her Heart', 'Mono Mixing'),
	('21 August 1963', 'Please Mr Postman', 'Mono Mixing'),
	('21 August 1963', 'Till There was You', 'Mono Mixing'),
	('21 August 1963', 'All my Loving', 'Mono Mixing'),
	('29 October 1963', 'It Won''t Be Long', 'Stereo Mixing'),
	('29 October 1963', 'All I''ve Got to Do', 'Stereo Mixing'),
	('29 October 1963', 'All My Loving', 'Stereo Mixing'),
	('29 October 1963', 'Don''t Bother Me', 'Stereo Mixing'),
	('29 October 1963', 'Little Child', 'Stereo Mixing'),
	('29 October 1963', 'Till There Was You', 'Stereo Mixing'),
	('29 October 1963', 'Please Mr Postman', 'Stereo Mixing')
	;