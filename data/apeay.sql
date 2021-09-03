--1.
Select MAX(yearID), MIN(yearID)
From teams;

--2.
Select 
	nameFirst, nameLast, height, teamID, G_all
From people AS p
Join appearances As a
ON p.playerID = a.playerID
ORDER BY height ASC;


--3.
Select *
From collegeplaying
Where schoolid = 'vanderbilt';

Select*
From Salaries;

Select p.nameFirst, p.nameLast, SUM(DISTINCT salary) As s1, s2.schoolname
From people AS p
Join collegeplaying AS cp
ON p.playerID = cp.playerID
Join schools As s2
ON cp.schoolid = s2.schoolid
JOIN salaries AS s
ON p.playerID = s.playerID
Where s2.schoolname = 'Vanderbilt University'
GROUP BY p.nameFirst, p.nameLast, s2.schoolname
ORDER BY s1 DESC;


--4.
Select Pos
From Fielding;

Select PO, 
	CASE WHEN Pos = 'OF' THEN 'Outfield'
		 WHEN Pos = '1B' AND Pos = '2B' AND Pos = 'SS' AND Pos = '3B' THEN 'Infield'
		 ELSE 'Battery' END AS Position
FROM Fielding
Where yearID = '2016'
Group BY Pos, PO;
--Not working


--5.
Select CAST(AVG(SO) AS DECIMAL(10,2)), CAST(AVG(HR) AS DECIMAL(10,2)), (yearID)/10*10 AS decade
From Batting
GROUP BY yearID
ORDER BY yearID DESC;


--6.



