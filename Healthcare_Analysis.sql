CREATE TABLE Hospitalization_Details (
    CustomerID VARCHAR(255) PRIMARY KEY,
    year INT,
    month INT,
    date INT,
    children INT,
    charges FLOAT,
    HospitalTier VARCHAR(255),
    CityTier VARCHAR(255),
    StateID VARCHAR(255)
);

CREATE TABLE Medical_Examinations (
    CustomerID VARCHAR(255) PRIMARY KEY,
    BMI FLOAT,
    HBA1C FLOAT,
    HeartIssues VARCHAR(255),
    AnyTransplants VARCHAR(255),
    CancerHistory VARCHAR(255),
    NumberOfMajorSurgeries INT,
    smoker VARCHAR(255)
);

CREATE TABLE Names (
    CustomerID VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255)
);
CREATE TABLE MergedData AS
SELECT h.*, m.BMI, m.HBA1C, m.HeartIssues, m.AnyTransplants, m.CancerHistory, m.NumberOfMajorSurgeries, m.smoker, n.name
FROM Hospitalization_Details h
JOIN Medical_Examinations m ON h.CustomerID = m.CustomerID
JOIN Names n ON h.CustomerID = n.CustomerID;

SELECT 
    AVG(YEAR(CURDATE()) - year) AS AverageAge,
    AVG(children) AS AverageChildren,
    AVG(BMI) AS AverageBMI,
    AVG(charges) AS AverageHospitalizationCosts
FROM MergedData
WHERE HBA1C > 6.5 AND HeartIssues = 'yes';

SELECT 
    HospitalTier,
    CityTier,
    AVG(charges) AS AverageHospitalizationCost
FROM MergedData
GROUP BY HospitalTier, CityTier;

SELECT 
    COUNT(*) AS PatientsWithMajorSurgeryAndCancerHistory
FROM MergedData
WHERE NumberOfMajorSurgeries > 0 AND CancerHistory = 'yes';

SELECT 
    StateID,
    COUNT(*) AS Tier1HospitalCount
FROM MergedData
WHERE HospitalTier = 'tier-1'
GROUP BY StateID;

