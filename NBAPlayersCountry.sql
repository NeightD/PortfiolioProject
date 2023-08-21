Select *
From PortfolioProject..NBA

-- Filtering out data to show only nba players and what country they're from

Select fname, lname, country
From PortfolioProject..NBA

-- Showing how many players there are from each country
Select country, COUNT(DISTINCT playerid) as Pcount
From PortfolioProject..NBA
Group by country
Order by 2 DESC 

-- Showing how many players there are from each country and what positions they play

Select country, COUNT(position) as Guards
From PortfolioProject..NBA
Where position like 'Guard'
Group by country
Order by 2 DESC

Select country, COUNT(position) as Forwards
From PortfolioProject..NBA
Where position like 'Forward'
Group by country
Order by 2 DESC

Select country, COUNT(position) as Forward_Centers
From PortfolioProject..NBA
Where position like 'Forward-Center'
or position like 'center-forward'
Group by country
Order by 2 DESC


Select country, COUNT(position) as Center
From PortfolioProject..NBA
Where position like 'Center'
Group by country
Order by 2 DESC

Select country, COUNT(position) as FG
From PortfolioProject..NBA
Where position like 'Forward-guard'
or position like 'guard-forward'
Group by country
Order by 2 DESC
