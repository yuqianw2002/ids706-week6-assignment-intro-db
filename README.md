# ids706-week6-assignment-intro-db

## Basic Analysis
The dataset of 'university_ranking' has 2200 rows and 14 columns. For 2012 and 2013, there were 100 universities on the ranking. For 2014 and 2015, there were 1000 universities on the ranking. There are 59 countries in the ranking.
Then look into two numeric columns. First alumni_employment col

## CRUD Operations
1. The ranking committee has decided to publish new results for a new university in 2014. Insert this university into the database.
- Result: 1 new row record for Duke Tech insert into university_ranking, country is USA, world_rank = 350, score = 60.5, year = 2014, and other columns are 'null'. 

2. A policy consultant has reached out to you with the following question. How many universities from Japan show up in the global top 200 in 2013?
- Result: There are six universites from Japan show up in the global top 200 in 2013. They are 'University of Tokyo', 'Kyoto University', 'Osaka University', 'Keio University', 'Nagoya University', and 'Tohoku University'. 

3. The score for University of Oxford in 2014 was miscalculated. Increase its score by +1.2 points. Update the row to reflect this update.
- Result: The score of University of Oxford in 2014 update from 97.51 to 98.71. 

4. After reviewing, the ranking committee decided that universities with a score below 45 in 2015 should not have been included in the published dataset. Clean up the records to reflect this.
- Result: There are 556 universities that score below 45 in 2015. After deleting them from the university_ranking database, the school number updated from the original 1000 to 444. 

