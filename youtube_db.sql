--DROP TABLE youtubemx;
--DROP TABLE XRate;

-------------- CREATE YOUTUBE TABLE
CREATE TABLE youtubemx(
    Index INT PRIMARY KEY,
	Video_Id TEXT,
    Trending_Date DATE,
    Title TEXT,
    Channel_Title TEXT,
	Views INT,
	Likes INT,
	Dislikes INT
);

-------------- CREATE EXCHANGE RATE TABLE
CREATE TABLE XRate(
	Index INT PRIMARY KEY,
	date DATE,
	XRate FLOAT	
);

-------------- JOIN TABLES BY DATE
SELECT x.XRate, x.date, y.Channel_Title, y.Views FROM XRate AS x
JOIN youtubemx AS y
ON y.Trending_Date = x.date;

--------------
SELECT * FROM youtubemx;
SELECT * FROM XRate;
