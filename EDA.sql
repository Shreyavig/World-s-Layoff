-- EDA
-- We will explore the data and find the trends ,outliers or patterns.

use world_layoffs ;
select * from layoffs_duplicate;

SELECT max(total_laid_off)
FROM layoffs_duplicate;

-- Finding the percentage of how big were the layoffs.
SELECT max(percentage_laid_off),  min(percentage_laid_off)
FROM layoffs_duplicate
WHERE  percentage_laid_off IS NOT NULL;

-- Checking for which company had 100 % lay off
select * from layoffs_duplicate
where percentage_laid_off= 1;

-- checking the companies where the lay off was maximum and how much was the funds raised,how big were the companies

SELECT *
FROM layoffs_duplicate
WHERE  percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;
-- Britishvolt raised the maximum funds and still the lay off was full.
