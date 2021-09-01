Select yearID
From teams;


Select 
	nameFirst, nameLast, height, teamID, G_all
From people AS p
Join appearances As a
ON p.playerID = a.playerID
ORDER BY height ASC;



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


