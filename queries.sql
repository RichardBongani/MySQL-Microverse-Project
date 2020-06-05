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