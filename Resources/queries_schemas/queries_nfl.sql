SELECT
    p.Name,
    p.QBR,
    p.PAA,
    p.PLAYS,
    p.EPA,
    p.PASS,
    p.RUN,
    p.SACK,
    p.PEN,
    p.RAW,
    s.SalaryAverage AS "Average Salary"
FROM
    nfl_performance_2022 p
JOIN
    nfl_salary_2022 s ON p.Rank = s.Rank

UNION

SELECT
    p.Name,
    p.QBR,
    p.PAA,
    p.PLAYS,
    p.EPA,
    p.PASS,
    p.RUN,
    p.SACK,
    p.PEN,
    p.RAW,
    s.SalaryAverage AS "Average Salary"
FROM
    nfl_performance_2023 p
JOIN
    nfl_salary_2023 s ON p.Rank = s.Rank;