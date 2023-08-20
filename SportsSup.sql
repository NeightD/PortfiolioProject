-- Selecting only the data I am using

Select supplement, evidence_level, Claimed_improved_aspect_of_fitness, exercise, fitness_category, notes
From PortfolioProject..[Sports_Supplements]

-- Looking for supplements that have little to no evidence score (score of 1 or less)

Select supplement, evidence_level, Claimed_improved_aspect_of_fitness, exercise, fitness_category, notes
From PortfolioProject..[Sports_Supplements]
Where evidence_level <= 1

-- Looking at what supplements have the highest evidence score

Select supplement, evidence_level, Claimed_improved_aspect_of_fitness, exercise, fitness_category, notes
From PortfolioProject..[Sports_Supplements]
Where evidence_level >= 2
Order by 1,2 DESC

-- Find the average evidence level for each supplement

Select supplement, avg(evidence_level) as average_evidence_level 
From PortfolioProject..[Sports_Supplements]
Group by supplement
Order by 2 DESC

-- Finding the strongest supplement for lifting

Select supplement, evidence_level, exercise
From PortfolioProject..[Sports_Supplements]
Where exercise = 'lifting'
Order by 2 DESC

-- Finding the strongest supplement for sports

Select supplement, evidence_level, exercise
From PortfolioProject..[Sports_Supplements]
Where exercise = 'sports'
Order by 2 DESC

-- Finding the strongest supplement for lifting and sports

Select supplement, evidence_level, exercise
From PortfolioProject..[Sports_Supplements]
Where exercise = 'lifting and sports'
Order by 2 DESC




Create View FitnessCategories as
Select supplement, evidence_level, Claimed_improved_aspect_of_fitness, exercise, fitness_category, notes
From PortfolioProject..[Sports_Supplements]
