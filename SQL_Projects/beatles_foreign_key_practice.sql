CREATE TABLE tbl_song (
	song_id INT NOT NULL PRIMARY KEY IDENTITY (54,1),
	song_song VARCHAR(50) NOT NULL
	);

CREATE TABLE tbl_date (
	date_ID INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	date_date VARCHAR(50) NOT NULL,
	song_id INT FOREIGN KEY REFERENCES tbl_song(song_id)
	);


INSERT INTO tbl_song
	(song_song)
	VALUES
	('Misery'),
	('Baby It''s You'),
	('Thank You Little Girl'),
	('From Me to You'),
	('Money That''s What I Want'),
	('You Really Got a Hold on Me'),
	('Roll Over Beethoven'),
	('It Won''t Be Long'),
	('Devil in Her Heart'),
	('Please Mr Postman'),
	('Till There was You'),
	('All my Loving'),
	('It Won''t Be Long'),
	('All I''ve Got to Do'),
	('All My Loving'),
	('Don''t Bother Me'),
	('Little Child'),
	('Till There Was You'),
	('Please Mr Postman')
	;

	SELECT * FROM tbl_song;

	INSERT INTO tbl_date
	(date_date, song_id)
	VALUES
	('20 February 1963', 54),
	('20 February 1963', 55),
	('13 March 1963', 56),
	('14 March 1963', 57),
	('21 August 1963', 58),
	('21 August 1963', 59),
	('21 August 1963', 60),
	('21 August 1963', 61),
	('21 August 1963', 62),
	('21 August 1963', 63),
	('21 August 1963', 64),
	('21 August 1963', 65),
	('29 October 1963', 66),
	('29 October 1963', 67),
	('29 October 1963', 68),
	('29 October 1963', 69),
	('29 October 1963', 70),
	('29 October 1963', 71),
	('29 October 1963', 72)
	;

	SELECT* FROM tbl_date;


SELECT tbl_date.date_date 'Recording Date:', tbl_song.song_song 'Song title:'
FROM tbl_song 
INNER JOIN tbl_date 
ON tbl_song.song_id = tbl_date.song_id;