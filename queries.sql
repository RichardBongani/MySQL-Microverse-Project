/******ANSWERS********/
QUIZZ 1
/****QUESTION_1*****
SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000;
****/

/****QUESTION_2*****/

-- Albania	3200000
-- Algeria	32900000

/****QUESTION_3*****/
/**
SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l'
*/

/****QUESTION_4*****/
/**
name  length(name)
Italy  5
Malta  5
Spain  5
*/

/****QUESTION_5*****/
/*
936  Andorra
*/

/****QUESTION_6*****/
/*
SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000
*/

/****QUESTION_7*****/
/*
SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')
*/

QUIZZ 2

/****QUESTION_1*****/

/*
SELECT name
  FROM world
 WHERE name LIKE 'U%'
*/

/****QUESTION_2*****/
/*
SELECT population
  FROM world
 WHERE name = 'United Kingdom'
*/

/****QUESTION_3*****/
/*
'name' should be name
*/

/****QUESTION_4*****/
/*
Nauru    990
*/

/****QUESTION_5*****/
/*
SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia')
*/

/****QUESTION_6*****/
/*
SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo')
*/

/****QUESTION_7*****/
/*
Brazil & Colombia
*/

QUIZZ 3

/****QUESTION_1*****/
/*
SELECT winner FROM nobel
 WHERE winner LIKE 'C%' AND winner LIKE '%n'
*/

/****QUESTION_2*****/
/*
SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN 1950 and 1960
*/

/****QUESTION_3*****/
/*
SELECT COUNT(DISTINCT yr) FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')
*/

/****QUESTION_4*****/
/*
Medicine  Sir John Eccles
Medicine  Sir Frank Macfarlane Burnet
*/

/****QUESTION_5*****/
/*
SELECT yr FROM nobel
 WHERE yr NOT IN(SELECT yr 
                   FROM nobel
                 WHERE subject IN ('Chemistry','Physics'))
*/

/****QUESTION_6*****/
/*
SELECT DISTINCT yr
  FROM nobel
 WHERE subject='Medicine' 
   AND yr NOT IN(SELECT yr FROM nobel 
                  WHERE subject='Literature')
   AND yr NOT IN (SELECT yr FROM nobel
                   WHERE subject='Peace')
*/

/****QUESTION_7*****/
/*
Chemistry    1
Literature   1
Medicine     2
Peace        1
Physics      1
*/

QUIZZ 4

/****QUESTION_1*****/
/*
 SELECT region, name, population FROM bbc x WHERE population <= ALL (SELECT population FROM bbc y WHERE y.region=x.region AND population>0)
*/

/****QUESTION_2*****/
/*
 SELECT name,region,population FROM bbc x WHERE 50000 < ALL (SELECT population FROM bbc y WHERE x.region=y.region AND y.population>0)
*/

/****QUESTION_3*****/
/*
SELECT name, region FROM bbc x
 WHERE population < ALL (SELECT population/3 FROM bbc y WHERE y.region = x.region AND y.name != x.name)
*/

/****QUESTION_4*****/
/*
France
Germany
Russia
Turkey
*/

/****QUESTION_5*****/
/*
SELECT name FROM bbc
 WHERE gdp > (SELECT MAX(gdp) FROM bbc WHERE region = 'Africa')
*/

/****QUESTION_5*****/
/*
SELECT name FROM bbc
 WHERE population < (SELECT population FROM bbc WHERE name='Russia')
   AND population > (SELECT population FROM bbc WHERE name='Denmark')
*/

/****QUESTION_6*****/
/*
Bangladesh
India
Pakistan
*/

QUIZZ 5

/****QUESTION_1*****/

/* SELECT SUM(population) FROM bbc WHERE region = 'Europe'*/

/****QUESTION_2*****/

/*
 SELECT COUNT(name) FROM bbc WHERE population < 150000
*/

/****QUESTION_3*****/

/*
AVG(), COUNT(), MAX(), MIN(), SUM()
*/

/****QUESTION_4*****/

/*
No result due to invalid use of the WHERE function
*/

/****QUESTION_5*****/

/*
 SELECT AVG(population) FROM bbc WHERE name IN ('Poland', 'Germany', 'Denmark')
*/

/****QUESTION_6*****/

/*
SELECT region, SUM(population)/SUM(area) AS density FROM bbc GROUP BY region
*/

/****QUESTION_7*****/

/*
 SELECT name, population/area AS density FROM bbc WHERE population = (SELECT MAX(population) FROM bbc)
*/

/****QUESTION_7*****/

/*
Americas       732240
Middle East    13403102
South America  17740392
South Asia     9437710
*/


QUIZZ 6

/****QUESTION_1*****/

/*
 game  JOIN goal ON (id=matchid)
*/

/****QUESTION_2*****/

/*
 matchid, teamid, player, gtime, id, teamname, coach
*/

/****QUESTION_3*****/

/*
SELECT player, teamid, COUNT(*)
  FROM game JOIN goal ON matchid = id
 WHERE (team1 = "GRE" OR team2 = "GRE")
   AND teamid != 'GRE'
 GROUP BY player, teamid
*/

/****QUESTION_4*****/

/*
DEN  9 June 2012
GER  9 June 2012
*/

/****QUESTION_5*****/

/*
  SELECT DISTINCT player, teamid 
   FROM game JOIN goal ON matchid = id 
  WHERE stadium = 'National Stadium, Warsaw' 
 AND (team1 = 'POL' OR team2 = 'POL')
   AND teamid != 'POL'
*/

/****QUESTION_6*****/

/*
  SELECT DISTINCT player, teamid 
   FROM game JOIN goal ON matchid = id 
  WHERE stadium = 'National Stadium, Warsaw' 
 AND (team1 = 'POL' OR team2 = 'POL')
   AND teamid != 'POL'
*/

/****QUESTION_7*****/

/*
Netherlands   2
Poland        2
Republic of Ireland   1
Ukraine    2
*/


QUIZZ 7

/****QUESTION_1*****/

/*
SELECT name
  FROM actor INNER JOIN movie ON actor.id = director
 WHERE gross < budget
*/

/****QUESTION_2*****/

/*
SELECT *
  FROM actor JOIN casting ON actor.id = actorid
  JOIN movie ON movie.id = movieid
*/

/****QUESTION_3*****/

/*
SELECT name, COUNT(movieid)
  FROM casting JOIN actor ON actorid=actor.id
 WHERE name LIKE 'John %'
 GROUP BY name ORDER BY 2 DESC
*/

/****QUESTION_4*****/

/*
"Crocodile" Dundee
Crocodile Dundee in Los Angeles
Flipper
Lightning Jack
*/

/****QUESTION_5*****/

/*
SELECT name
  FROM movie JOIN casting ON movie.id = movieid
  JOIN actor ON actor.id = actorid
WHERE ord = 1 AND director = 351
*/

/****QUESTION_6*****/

/*
- link the director column in movies with the primary key in actor
- connect the primary keys of movie and actor via the casting table
*/

/****QUESTION_7*****/

/*
A Bronx Tale     1993
Bang the Drum Slowly   1973
Limitless    2011
*/


QUIZZ 8

/****QUESTION_1*****/

/*
 SELECT teacher.name, dept.name FROM teacher LEFT OUTER JOIN dept ON (teacher.dept = dept.id)
*/


/****QUESTION_2*****/

/*
 SELECT dept.name, COUNT(teacher.name) FROM teacher RIGHT JOIN dept ON dept.id = teacher.dept GROUP BY dept.name
*/

/****QUESTION_3*****/

/*
display 0 in result column for all teachers without department
*/

/****QUESTION_4*****/

/*
'four' for Throd
*/

/****QUESTION_5*****/

/*
hrivellComputing
ThrodComputing
SplintComputing
SpiregrainOther
CutflowerOther
DeadyawnOther
*/

QUIZZ 9

/*
SELECT DISTINCT a.name, b.name
  FROM stops a JOIN route z ON a.id=z.stop
  JOIN route y ON y.num = z.num
  JOIN stops b ON y.stop=b.id
 WHERE a.name='Craiglockhart' AND b.name ='Haymarket'
*/

/*
SELECT S2.id, S2.name, R2.company, R2.num
  FROM stops S1, stops S2, route R1, route R2
 WHERE S1.name='Haymarket' AND S1.id=R1.stop
   AND R1.company=R2.company AND R1.num=R2.num
   AND R2.stop=S2.id AND R2.num='2A'
*/

/*
SELECT a.company, a.num, stopa.name, stopb.name
  FROM route a JOIN route b ON (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
 WHERE stopa.name='Tollcross'
*/