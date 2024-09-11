SELECT * 
FROM kv_high_rise.houses_edittted;

-- Extract Street, City, State from Address
SELECT *,
Address,
	SUBSTRING_INDEX(Address, ',', 1) AS Street,
    TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(Address,',', 2), ',', -1)) AS City,
    TRIM(SUBSTRING_INDEX(Address, ',',-1)) AS State
FROM kv_high_rise.houses_edittted;

-- To know how many high rise have 4 bedroom
SELECT COUNT(Building_Name)
FROM kv_high_rise.houses_edittted
WHERE Bedroom = 4;

-- Identify how many property for each size bracket
SELECT Price_bracket, COUNT(Building_Name) AS Property
FROM kv_high_rise.houses_edittted
GROUP BY Price_bracket
ORDER BY Price_bracket ASC;

-- Accesibility analysis to key amenities such as schools, mall, hospital, railway station
SELECT * 
FROM kv_high_rise.houses_edittted
WHERE Mall_Availability = 'Got Mall'
AND School_Availabilty = 'Got School'
AND Nearby_Hospital = 'Got Hospital'
AND Nearby_Train = 'Got nearby LRT/MRT';

-- Identify how many property for each size bracket
SELECT PropertySize_Bracket, COUNT(Building_Name) AS Property
FROM kv_high_rise.houses_edittted
GROUP BY PropertySize_Bracket
ORDER BY Property DESC;
