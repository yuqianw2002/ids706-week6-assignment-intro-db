-- See the dataset
SELECT * FROM university_rankings;

-- Total university in each year
SELECT year, count(*) AS total_record
From university_rankings
GROUP BY year;

SELECT country, count(*) AS "Num of Universities"
FROM university_rankings
WHERE year = 2015
GROUP BY country;

-- Total rows and columns in the data
SELECT
    (SELECT COUNT(*) FROM university_rankings) AS total_rows,
    COUNT(*) AS total_columns
FROM pragma_table_info('university_rankings');

-- MAX, MIN, MEAN alumi_employment
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




--

