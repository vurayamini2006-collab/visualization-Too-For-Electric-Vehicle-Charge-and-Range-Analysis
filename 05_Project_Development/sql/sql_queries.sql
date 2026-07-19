-- Select database
USE electric_cars;

-- View first 10 records
SELECT * FROM electriccardata_clean
LIMIT 10;

-- Top 10 EVs by driving range
SELECT Brand, Model, Range_Km, PriceEuro
FROM electriccardata_clean
ORDER BY Range_Km DESC
LIMIT 10;

-- Average range of each brand
SELECT Brand,
       ROUND(AVG(Range_Km), 2) AS Average_Range
FROM electriccardata_clean
GROUP BY Brand
ORDER BY Average_Range DESC;

-- Number of cars by body style
SELECT BodyStyle,
       COUNT(*) AS Total_Cars
FROM electriccardata_clean
GROUP BY BodyStyle
ORDER BY Total_Cars DESC;

-- Premium electric cars (Price > €80,000)
SELECT Brand, Model, PriceEuro
FROM electriccardata_clean
WHERE PriceEuro > 80000
ORDER BY PriceEuro DESC;

-- Fast charging EVs (Charging speed > 600 km/h)
SELECT Brand, Model, FastCharge_KmH
FROM electriccardata_clean
WHERE FastCharge_KmH > 600
ORDER BY FastCharge_KmH DESC;

-- Top 5 fastest electric cars
SELECT Brand, Model, TopSpeed_KmH
FROM electriccardata_clean
ORDER BY TopSpeed_KmH DESC
LIMIT 5;

-- Average price of cars by body style
SELECT BodyStyle,
       ROUND(AVG(PriceEuro), 2) AS Average_Price
FROM electriccardata_clean
GROUP BY BodyStyle
ORDER BY Average_Price DESC;

-- Number of models available for each brand
SELECT Brand,
       COUNT(Model) AS Total_Models
FROM electriccardata_clean
GROUP BY Brand
ORDER BY Total_Models DESC;
