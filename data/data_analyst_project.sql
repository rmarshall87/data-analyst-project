-- Question 1
/*SELECT count(*) AS exact_count 
FROM data_analyst_jobs;
*/

-- Question 2) ExxonMobil is company on 10th row
/*SELECT *
FROM data_analyst_jobs
LIMIT 10;
*/

-- Question 3a) 21 listings in TN
/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location='TN';
*/

-- Question 3b) 6 in KY
/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location='KY';
*/

-- Question 4) 3 reviews above 4
/*SELECT *
FROM data_analyst_jobs
WHERE location='TN'
AND star_rating>4.0;
*/

-- Question 5) 151 listings with review count between 500-1000
/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count>=500 and review_count<=1000;
*/

-- Question 6) Nebraska
/*SELECT location AS state,AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY location
ORDER BY avg_rating;
*/

-- Question 7) 881
/*SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs;
*/

-- Question 8) 230
/*SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE location='CA';
*/

-- Question 9a) 41 including null
/*SELECT AVG(star_rating), company
FROM data_analyst_jobs
WHERE review_count>=5000
GROUP BY company;
*/

-- Question 9b) 184 companies with 5000+ reviews/3.9 star average
/*SELECT COUNT(company), AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count>=5000;
*/

-- Question 10) GM w/ 4.2 rating
/*SELECT AVG(star_rating) as avg_rating, company
FROM data_analyst_jobs
WHERE review_count>=5000
GROUP BY company
ORDER BY avg_rating DESC;
*/

-- Question 11) 774 analyst jobs
/*SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE title ILIKE '%analyst%';
*/

-- Question 12) 4 jobs, Tableau common word
/*SELECT *
FROM data_analyst_jobs
WHERE title NOT ILIKE '%analyst%'
AND title NOT ILIKE '%analytics%';
*/

-- Bonus) Top 4 domains
-- Internet & Software w/ 62 listings
-- Banks & Financial Services w/ 61 listings
-- Consulting & Business Services w/ 57 listings
-- Health Care w/ 52 listings

/*SELECT COUNT(days_since_posting) as hard_to_fill, domain
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%'
AND days_since_posting>21
AND domain IS NOT null
GROUP BY domain
ORDER BY hard_to_fill DESC;
*/