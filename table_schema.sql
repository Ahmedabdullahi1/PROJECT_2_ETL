-- Create the Table
CREATE TABLE covid_deaths (
country VARCHAR ,
newdate DATE,
new_cases FLOAT,
incidence FLOAT,
excess_deaths FLOAT,
excess_deaths_per_100k FLOAT
);

-- Query to check successful load
SELECT * FROM covid_deaths;
