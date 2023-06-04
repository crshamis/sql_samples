SELECT *
FROM "CovidDeaths"
ORDER BY 3,4

-- SELECT *
-- FROM "CovidVaccinations"
-- ORDER BY 3,4

-- Select data that will be used in the exploration

SELECT D."location",
	D.DATE,
	D.TOTAL_CASES,
	D.NEW_CASES,
	D.TOTAL_DEATHS,
	D.POPULATION
FROM "CovidDeaths" D
ORDER BY 1,2

-- Looking at the total_case vs total_deaths

SELECT D."location",
	D.DATE,
	D.TOTAL_CASES,
	D.TOTAL_DEATHS,
	ROUND((D.TOTAL_DEATHS / D.TOTAL_CASES) * 100,
		2) AS DEATHPERCENTAGE
FROM "CovidDeaths" D
WHERE D."location" = 'United States'
ORDER BY 1,2