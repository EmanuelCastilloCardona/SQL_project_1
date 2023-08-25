--Exploration

SELECT *
FROM Project_1.dbo.GlobalLandTemperaturesByCity

SELECT AVG (AverageTemperature)
FROM Project_1.dbo.GlobalLandTemperaturesByCity

SELECT DISTINCT (City)
FROM Project_1.dbo.GlobalLandTemperaturesByCity

SELECT DISTINCT (Country)
FROM Project_1.dbo.GlobalLandTemperaturesByCity

SELECT MAX (AverageTemperature)
FROM Project_1.dbo.GlobalLandTemperaturesByCity

SELECT *
FROM Project_1.dbo.GlobalLandTemperaturesByCity
WHERE AverageTemperature > 32 AND Country = 'Denmark'

SELECT *
FROM Project_1.dbo.GlobalLandTemperaturesByCity
WHERE AverageTemperature > 32 OR Country = 'Denmark'

SELECT *
FROM Project_1.dbo.GlobalLandTemperaturesByCity
WHERE AverageTemperature is NOT NULL

SELECT City
FROM Project_1.dbo.GlobalLandTemperaturesByCity
GROUP BY City

SELECT City, COUNT(City)
FROM Project_1.dbo.GlobalLandTemperaturesByCity
GROUP BY City

SELECT City, COUNT(City)
FROM Project_1.dbo.GlobalLandTemperaturesByCity
WHERE AverageTemperature > 32 OR Country = 'Denmark'
GROUP BY City 

SELECT *
FROM Project_1.dbo.GlobalLandTemperaturesByCity
ORDER BY 4 DESC, 5 DESC

--JOINS

SELECT *
FROM Project_1.dbo.GlobalLandTemperaturesByCity
Inner JOIN Project_1.dbo.GlobalLandTemperaturesByCity2
		ON GlobalLandTemperaturesByCity.City = Project_1.dbo.GlobalLandTemperaturesByCity2.City

SELECT *
FROM Project_1.dbo.GlobalLandTemperaturesByCity
Full outer Join Project_1.dbo.GlobalLandTemperaturesByCity2
		ON GlobalLandTemperaturesByCity.City = Project_1.dbo.GlobalLandTemperaturesByCity2.City

SELECT *
FROM Project_1.dbo.GlobalLandTemperaturesByCity
Left outer Join Project_1.dbo.GlobalLandTemperaturesByCity2
		ON GlobalLandTemperaturesByCity.City = Project_1.dbo.GlobalLandTemperaturesByCity2.City

SELECT *
FROM Project_1.dbo.GlobalLandTemperaturesByCity
Right outer Join Project_1.dbo.GlobalLandTemperaturesByCity2
		ON GlobalLandTemperaturesByCity.City = Project_1.dbo.GlobalLandTemperaturesByCity2.City

--Conditionals

SELECT Country,
CASE
	WHEN AverageTemperature > 30 THEN 'HOT'
	ELSE 'Normal'
END
FROM Project_1.dbo.GlobalLandTemperaturesByCity
WHERE AverageTemperature is NOT NULL 
ORDER BY AverageTemperature

--Having

SELECT Country
FROM Project_1.dbo.GlobalLandTemperaturesByCity
WHERE AverageTemperature is NOT NULL 
HAVING AverageTemperature > 0.1
ORDER BY AverageTemperature

--Exploration in detail

SELECT *
FROM Project_1.dbo.GlobalLandTemperaturesByCity

SELECT *
FROM Project_1.dbo.GlobalLandTemperaturesByCity
WHERE AverageTemperature is NOT NULL
order by 1,2

SELECT AverageTemperature, (AverageTemperature/AverageTemperatureUncertainty)*100 as ClimateMeasure
FROM Project_1.dbo.GlobalLandTemperaturesByCity
WHERE AverageTemperature is NOT NULL
order by 1,2

SELECT MAX(AverageTemperature) as Average
FROM Project_1.dbo.GlobalLandTemperaturesByCity
WHERE AverageTemperature is NOT NULL

SELECT SUM(AverageTemperature) as Average
FROM Project_1.dbo.GlobalLandTemperaturesByCity
WHERE AverageTemperature is NOT NULL





