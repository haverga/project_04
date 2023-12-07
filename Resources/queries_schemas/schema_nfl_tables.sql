drop table if exists nfl_performance_2022;
drop table if exists nfl_salary_2022;
drop table if exists nfl_performance_2023;
drop table if exists nfl_salary_2023;


-- Table for 2022_NFL_Performance
CREATE TABLE nfl_performance_2022 (
    Rank INT Primary Key,
    Name VARCHAR(255) NOT NULL,
	Position VARCHAR(50) NOT NULL,
	TEAM VARCHAR(255) NOT NULL,
    QBR FLOAT,
    PAA FLOAT,
    PLAYS INT,
    EPA FLOAT,
    PASS FLOAT,
    RUN FLOAT,
    SACK FLOAT,
    PEN FLOAT,
    RAW FLOAT
);


-- Table for 2022_NFL_Salary
CREATE TABLE nfl_salary_2022 (
    Rank INT,
    Name VARCHAR(255) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    SalaryAverage FLOAT,
	Foreign Key (Rank) References nfl_performance_2022 (Rank)
);

-- Table for 2023_NFL_Performance
CREATE TABLE nfl_performance_2023 (
    Rank INT Primary Key,
    Name VARCHAR(255) NOT NULL,
	Position VARCHAR(50) NOT NULL,
	TEAM VARCHAR(255) NOT NULL,
    QBR FLOAT,
    PAA FLOAT,
    PLAYS INT,
    EPA FLOAT,
    PASS FLOAT,
    RUN FLOAT,
    SACK FLOAT,
    PEN FLOAT,
    RAW FLOAT,
	Foreign Key (Rank) References nfl_performance_2022 (Rank)
);

-- Table for 2023_NFL_Salary
CREATE TABLE nfl_salary_2023 (
    Rank INT,
    Player VARCHAR(255) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    SalaryAverage FLOAT,
	Foreign Key (Rank) References nfl_performance_2022 (Rank)
);

Select * from nfl_performance_2022;