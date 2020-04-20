/* 1
Show the total number of prizes awarded.
*/
SELECT COUNT(winner) FROM nobel


/* 2 
List each subject - just once
*/
SELECT distinct(subject) FROM nobel


/* 3 
Show the total number of prizes awarded for Physics.
*/
SELECT count(winner) FROM nobel
WHERE subject = 'Physics'


/* 4 
For each subject show the subject and the number of prizes.
*/
SELECT subject, count(winner) FROM nobel
GROUP BY subject


/* 5 
For each subject show the first year that the prize was awarded.
*/
SELECT subject, min(yr) FROM nobel
GROUP BY subject


/* 6
For each subject show the number of prizes awarded in the year 2000.
*/
SELECT subject, count(winner) FROM nobel
WHERE yr = 2000
GROUP BY subject


/* 7 
Show the number of different winners for each subject.
*/
SELECT subject, count(distinct winner) FROM nobel
GROUP BY subject


/* 8 
For each subject show how many years have had prizes awarded.
*/
SELECT subject,count(distinct yr) FROM nobel
GROUP BY subject
HAVING count(yr)>0


/* 9 
Show the years in which three prizes were given for Physics.
*/
SELECT yr FROM nobel
WHERE subject = 'Physics'
GROUP BY yr
HAVING count(winner)=3


/* 10
Show winners who have won more than once.
*/
SELECT winner FROM nobel
GROUP BY winner
HAVING count(subject)>1