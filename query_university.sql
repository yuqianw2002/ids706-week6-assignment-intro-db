-- See the dataset
SELECT * FROM university_rankings;

-- Total university in each year
SELECT year, count(*) AS total_record
From university_rankings
GROUP BY year;

-- The ranking for 2015, number of university of each country
SELECT country, count(*) AS "Num of Universities"
FROM university_rankings
WHERE year = 2015
GROUP BY country;

-- Total rows and columns in the data
SELECT
    (SELECT COUNT(*) FROM university_rankings) AS total_rows,
    COUNT(*) AS total_columns
FROM pragma_table_info('university_rankings');

-- MAX, MIN, MEAN for some numeric columns
SELECT country,
    MIN(alumni_employment) AS minimum,
    MAX(alumni_employment) AS maximum,
    AVG(alumni_employment) AS average
FROM university_rankings
GROUP BY country;

SELECT country,
    MIN(score) AS minimum,
    MAX(score) AS maximum,
    AVG(score) AS average
FROM university_rankings
GROUP BY country;

-- 1. Insert university into the database
-- Institution: Duke Tech
-- Country: USA
-- World Rank: 350
-- Score: 60.5
INSERT INTO university_rankings (institution, country, world_rank, score, year)
VALUES ('Duke Tech', 'USA', 350, 60.5, 2014);

SELECT * -- verify insert
FROM university_rankings
WHERE institution = 'Duke Tech';

-- 2. A policy consultant has reached out to you with the following question.
-- How many universities from Japan show up in the global top 200 in 2013?
SELECT institution, world_rank
FROM university_rankings
WHERE year = 2013 AND world_rank < 200 AND country = 'Japan';

-- 3. The score for University of Oxford in 2014 was miscalculated.
-- Increase its score by +1.2 points. Update the row to reflect this update.
SELECT institution, score, year -- check before update
FROM university_rankings
WHERE institution = 'University of Oxford' AND year = 2014;

UPDATE university_rankings -- Update the score of Oxford
SET score = score + 1.2
WHERE institution = 'University of Oxford' AND year = 2014;

SELECT institution, score, year -- check after update
FROM university_rankings
WHERE institution = 'University of Oxford' AND year = 2014;

-- 4. After reviewing, the ranking committee decided that universities with a score
-- below 45 in 2015 should not have been included in the published dataset. Clean up the records to reflect this.
SELECT count(institution) AS 'Number to delete' -- check before clean up
FROM university_rankings
WHERE year = 2015 AND score < 45;

DELETE FROM university_rankings -- delete from database
WHERE year = 2015 AND score < 45;

SELECT count(institution) AS 'Number to delete' -- check after clean up
FROM university_rankings
WHERE year = 2015 AND score < 45;

SELECT count(*) AS 'Number of universities 2015' -- recheck school numbers in 2015 ranking
FROM university_rankings
WHERE year = 2015;







