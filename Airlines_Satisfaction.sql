SELECT * 
FROM new_schema.airlines_satisfaction;

-- How many people satisfied with services 
SELECT COUNT(Satisfaction) AS Satisfied_customer
FROM new_schema.airlines_satisfaction
WHERE Satisfaction = "satisfied";

-- Average satisfaction on departure/arrival time
SELECT AVG(Departure_Arrival_time_convenient) AS Average_Score_Departure_Arrival_Time_Convenient
FROM new_schema.airlines_satisfaction;

-- Analysis by satisfaction demographics
SELECT Gender, COUNT(Satisfaction) AS Satisfaction_customer
FROM new_schema.airlines_satisfaction
WHERE Gender = "Female" AND Satisfaction = "satisfied";

SELECT Gender, COUNT(Satisfaction) AS Satisfaction_customer
FROM new_schema.airlines_satisfaction
WHERE Gender = "Male" AND Satisfaction = "satisfied";

SELECT Class, COUNT(Class) AS Customer_satisfied
FROM new_schema.airlines_satisfaction
WHERE Satisfaction = "satisfied"
GROUP BY Class;

